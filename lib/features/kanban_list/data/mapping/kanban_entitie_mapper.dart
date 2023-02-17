import 'package:home_challenge_kanban/features/kanban_list/data/database/kanban_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

extension KanbanEntitieMapper on KanbanEntitie {
  KanbanModel toKanban() =>
      KanbanModel(name: name, description: body, key: key);
}

extension KanbanMapper on KanbanModel {
  KanbanEntitie toKanbanEntity() => KanbanEntitie(
        key: key,
        name: name,
        body: description,
      );
}
