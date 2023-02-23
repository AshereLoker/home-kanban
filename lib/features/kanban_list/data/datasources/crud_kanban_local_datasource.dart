import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

abstract class CrudKanbanLocalDatasource {
  /// Creates [KanbanModel] in a Local datasource.
  ///
  /// Throw [LocalKanbanDatasourceException] if can't create Kanban.
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params);

  /// Find by [key] and delete [KanbanModel] from a Local datasource.
  ///
  /// Throw [LocalKanbanDatasourceException] if no data present or can't delete either.
  Future<IList<KanbanModel>> deleteKanban(String key);

  /// Find all [KanbanModel]s in a Local datasource.
  ///
  /// Throw [LocalKanbanDatasourceException] if no data present or can't delete either.
  Future<IList<KanbanModel>> readAllKanbans();

  /// Update update [KanbanModel] in a Local datasource.
  ///
  /// Throw [LocalKanbanDatasourceException] if no data present or can't update either.
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params);
}
