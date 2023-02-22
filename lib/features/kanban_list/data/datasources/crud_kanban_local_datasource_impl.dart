import 'package:fast_immutable_collections/src/ilist/ilist.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';

class CrudKanbanLocalDatasourceImpl implements CrudKanbanLocalDatasource {
  final KanbanDatabase localDatabase;

  CrudKanbanLocalDatasourceImpl({required this.localDatabase});

  @override
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params) {
    try {
      final response = localDatabase.createKanban(params);

      return response;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> deleteKanban(String key) {
    try {
      final response = localDatabase.deleteKanban(key);

      return response;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> readAllKanbans() {
    try {
      final response = localDatabase.readAllKanbans();

      return response;
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params) {
    try {
      final response = localDatabase.updateKanban(params);

      return response;
    } on LocalDatabaseException {
      rethrow;
    }
  }
}
