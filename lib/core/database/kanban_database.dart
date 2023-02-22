import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

abstract class KanbanDatabase {
  /// Create
  Future<IList<KanbanModel>> createKanban(CreateKanbanParams params);
  Future<IList<KanbanModel>> readAllKanbans();
  Future<IList<KanbanModel>> updateKanban(UpdateKanbanParams params);
  Future<IList<KanbanModel>> deleteKanban(String key);
}
