import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/update_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/create_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';

class CrudKanbanLocalDatasourceImpl implements CrudKanbanLocalDatasource {
  final KanbanDatabase database;

  CrudKanbanLocalDatasourceImpl({required this.database});

  @override
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params) {
    try {
      final response = database.createKanban(params);

      return response;
    } on LocalKanbanDatasourceException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> deleteKanban(String key) {
    try {
      final response = database.deleteKanban(key);

      return response;
    } on LocalKanbanDatasourceException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> readAllKanbans() {
    try {
      final response = database.readAllKanbans();

      return response;
    } on LocalKanbanDatasourceException {
      rethrow;
    }
  }

  @override
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params) {
    try {
      final response = database.updateKanban(params);

      return response;
    } on LocalKanbanDatasourceException {
      rethrow;
    }
  }
}
