import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/mapping/kanban_entitie_mapper.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';

abstract class CrudKanbanLocalDatasource {
  /// Creates [KanbanModel] in a Local [Dirft] SqlDatabase.
  ///
  /// Throw [LocalDatabaseException] if can't create Kanban.
  Future<KanbanModel> createKanban(
    String name,
    String? description,
  );

  /// Find by [key] and delete [KanbanModel] from Local [Dirft] SqlDatabase.
  ///
  /// Throw [LocalDatabaseException] if no data present or can't delete either.
  Future<int> deleteKanban(String key);

  /// Find by [key] and read [KanbanModel] in a Local [Dirft] SqlDatabase.
  ///
  /// Throw [LocalDatabaseException] if no data present.
  Future<KanbanModel> readKanban(String key);

  /// Find by [key] and update [KanbanModel] in a Local [Dirft] SqlDatabase.
  ///
  /// Throw [LocalDatabaseException] if no data present or can't update either.
  Future<KanbanModel> updateKanban(KanbanModel model);
}

class CrudKanbanLocalDataSourceImpl implements CrudKanbanLocalDatasource {
  final KanbanDatabase database;

  CrudKanbanLocalDataSourceImpl({required this.database});

  @override
  Future<KanbanModel> createKanban(String name, String? description) {
    try {
      final kanban = database.createKanban(name, description);

      return kanban;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<int> deleteKanban(String key) {
    try {
      final responseCode = database.deleteKanban(key);

      return responseCode;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<KanbanModel> readKanban(String key) {
    try {
      final kanban = database.readKanbanByKey(key);

      return kanban;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<KanbanModel> updateKanban(KanbanModel model) {
    try {
      final kanban = database.updateKanban(model.toKanbanEntity());

      return kanban;
    } on LocalDatabaseException {
      rethrow;
    }
  }
}
