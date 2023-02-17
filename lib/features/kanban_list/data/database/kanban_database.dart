import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

abstract class KanbanDatabase {
  Future<KanbanModel> createKanban(String name, String? body);
  Future<List<KanbanModel>> getAllKanbanEntities();
  Future<KanbanModel> readKanbanByKey(String key);
  Future<KanbanModel> updateKanban(KanbanEntitie entity);
  Future<int> deleteKanban(String key);
}
