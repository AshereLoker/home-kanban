import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_mapper.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

part 'drift_database_impl.g.dart';

class KanbanEntities extends Table {
  DateTimeColumn get createAt => dateTime()();
  DateTimeColumn get dueDate => dateTime().nullable()();
  DateTimeColumn get finishedAt => dateTime().nullable()();
  IntColumn get orderId => integer()();
  IntColumn get spendedTimeSeconds => integer()();
  TextColumn get description => text().named('description').nullable()();
  TextColumn get status => textEnum<KanbanStatus>()();
  TextColumn get key => text()();
  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(tables: [KanbanEntities])
class DriftDatabaseImpl extends _$DriftDatabaseImpl implements KanbanDatabase {
  /// [forTest] swither only need for DriftDatabaseTest file.
  /// Not use it at any other kind place.
  final bool forTest;
  DriftDatabaseImpl({QueryExecutor? executor, this.forTest = false})
      : super(executor ??= _openConnection());

  @override
  int get schemaVersion => 3;

  @override
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params) {
    final uuidKey = forTest ? 'tKey' : const Uuid().v4();
    final creationDate = forTest ? moonLanding : DateTime.now();

    try {
      into(kanbanEntities).insert(
        KanbanEntitie(
          orderId: params.order,
          createAt: creationDate,
          description: params.description,
          dueDate: params.dueDate,
          status: params.status,
          key: uuidKey,
          name: params.name,
          spendedTimeSeconds: params.spendedTimeSeconds,
        ),
      );

      return readAllKanbans();
    } catch (e) {
      throw LocalKanbanDatasourceException();
    }
  }

  @override
  Future<IList<KanbanModel>> deleteKanban(String key) async {
    try {
      final kanban = await readByUniqueKey(key);
      if (kanban.orderId != 0) {
        final status = _stringifyStatus(kanban.status);
        await _decrementOrderId(status, kanban.orderId);
      }

      await (delete(kanbanEntities)..where((k) => k.key.equals(key))).go();

      return readAllKanbans();
    } catch (e) {
      throw LocalKanbanDatasourceException();
    }
  }

  @override
  Future<IList<KanbanModel>> readAllKanbans() async {
    try {
      final kanbanEntitiesList = await select(kanbanEntities).get();

      return kanbanEntitiesList.map((e) => e.toKanbanModel()).toList().lock;
    } catch (e) {
      log(e.toString());
      throw LocalKanbanDatasourceException();
    }
  }

  @override
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params) async {
    try {
      final newKanban = params.modelToUpdate;
      final oldKanban = await readByUniqueKey(newKanban.key);

      if (newKanban.status != oldKanban.status) {
        final oldStatus = _stringifyStatus(oldKanban.status);
        _decrementOrderId(oldStatus, oldKanban.orderId);
      }

      if (newKanban.orderId != oldKanban.orderId ||
          newKanban.status != oldKanban.status) {
        final newStatus = _stringifyStatus(newKanban.status);

        _incrementOrderId(newStatus, newKanban.orderId);
      }

      await update(kanbanEntities).replace(
        newKanban.toKanbanModel().toKanbanEntitie(),
      );

      return readAllKanbans();
    } catch (e) {
      throw LocalKanbanDatasourceException();
    }
  }

  @override
  Future<KanbanModel> readByUniqueKey(String key) async {
    final kanbanEntite = await (select(kanbanEntities)
          ..where((tbl) => tbl.key.contains(key)))
        .getSingle();

    return kanbanEntite.toKanbanModel();
  }

  Future<void> _incrementOrderId(
    String status,
    int orderId,
  ) async {
    await customStatement(
      "UPDATE 'kanban_entities' SET order_id = order_id + 1 WHERE status = ? and order_id >= ?",
      <dynamic>[status, orderId],
    );
  }

  Future<void> _decrementOrderId(
    String status,
    int orderId,
  ) async {
    await customStatement(
      "UPDATE 'kanban_entities' SET order_id = order_id - 1 WHERE status = ? and order_id > ?",
      <dynamic>[status, orderId],
    );
  }

  String _stringifyStatus(KanbanStatus status) =>
      KanbanStatus.values.firstWhere((value) => value == status).name;
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'kanban.db.enc'));

      return NativeDatabase(file, setup: (db) {
        // Check that we're actually running with SQLCipher by quering the
        // cipher_version pragma.
        final result = db.select('pragma cipher_version');
        if (result.isEmpty) {
          throw UnsupportedError(
            'This database needs to run with SQLCipher, but that library is '
            'not available!',
          );
        }

        // Then, apply the key to encrypt the database. Unfortunately, this
        // pragma doesn't seem to support prepared statements so we inline the
        // key.
        const escapedKey =
            '273f7c653568f5b4c20aa82cd1d612ac7c34fee4dfa0127a6752e61a8309d909';
        db
          ..execute("pragma key = '$escapedKey'")

          // Test that the key is correct by selecting from a table
          ..execute('select count(*) from sqlite_master');
      });
    });

/// Do you believe in moon landing?
final moonLanding = DateTime.utc(1969, 7, 20, 20, 17);
