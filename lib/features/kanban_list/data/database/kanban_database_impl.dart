import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_entitie_mapper.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database.dart';
import 'package:uuid/uuid.dart';

part 'kanban_database_impl.g.dart';

class KanbanEntities extends Table {
  TextColumn get key => text()();
  TextColumn get name => text()();
  TextColumn get body => text().named('description').nullable()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(tables: [KanbanEntities])
class KanbanDatabaseImpl extends _$KanbanDatabaseImpl
    implements KanbanDatabase {
  KanbanDatabaseImpl(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  Future<KanbanModel> createKanban(String name, String? body) {
    final uuidKey = const Uuid().v4();

    try {
      into(kanbanEntities)
          .insert(KanbanEntitie(key: uuidKey, name: name, body: body));

      return readKanbanByKey(uuidKey);
    } catch (e) {
      throw LocalDatabaseException();
    }
  }

  @override
  Future<List<KanbanModel>> getAllKanbanEntities() async {
    final kanbanEntitiesList = await select(kanbanEntities).get();

    return kanbanEntitiesList.map((e) => e.toKanban()).toList();
  }

  @override
  Future<KanbanModel> readKanbanByKey(String key) async {
    final findKanban = select(kanbanEntities)..where((k) => k.key.equals(key));
    final kanbanEntity = await findKanban.getSingle();

    return kanbanEntity.toKanban();
  }

  @override
  Future<KanbanModel> updateKanban(KanbanEntitie entity) async {
    await update(kanbanEntities).replace(entity);

    return readKanbanByKey(entity.key);
  }

  @override
  Future<int> deleteKanban(String key) {
    try {
      delete(kanbanEntities).where((k) => k.key.equals(key));

      return Future(() => 200);
    } catch (e) {
      throw LocalDatabaseException();
    }
  }
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      return NativeDatabase.createInBackground(file);
    });
