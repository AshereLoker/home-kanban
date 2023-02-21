import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

abstract class CrudKanbanLocalDatasource {
  /// Creates [KanbanModel] in a Local [sqlite3] database.
  ///
  /// Throw [LocalDatabaseException] if can't create Kanban.
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params);

  /// Find by [key] and delete [KanbanModel] from Local [sqlite3] database.
  ///
  /// Throw [LocalDatabaseException] if no data present or can't delete either.
  Future<IList<KanbanModel>> deleteKanban(String key);

  /// Find all [KanbanModel]s in Local [sqlite3] database.
  ///
  /// Throw [LocalDatabaseException] if no data present or can't delete either.
  Future<IList<KanbanModel>> readAllKanbans();

  /// Find by [key] and update [KanbanModel] in a Local [sqlite3] database.
  ///
  /// Throw [LocalDatabaseException] if no data present or can't update either.
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params);
}

class CrudKanbanLocalDataSourceImpl implements CrudKanbanLocalDatasource {
  final KanbanDatabase database;

  CrudKanbanLocalDataSourceImpl({required this.database});

  @override
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params) {
    try {
      final kanbans = database.createKanban(params);

      return kanbans;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> deleteKanban(String key) {
    try {
      final kanbans = database.deleteKanban(key);

      return kanbans;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> readAllKanbans() {
    try {
      final kanbans = database.readAllKanbans();

      return kanbans;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params) {
    try {
      final kanbans = database.updateKanban(params);

      return kanbans;
    } on LocalDatabaseException {
      rethrow;
    }
  }
}
