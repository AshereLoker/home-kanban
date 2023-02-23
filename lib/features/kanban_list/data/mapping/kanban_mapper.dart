import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

extension KanbanEntitieMapper on KanbanEntitie {
  KanbanModel toKanbanModel() => KanbanModel(
        createAt: createAt,
        dueDate: dueDate,
        description: description,
        orderId: orderId,
        status: status,
        name: name,
        key: key,
      );
}

extension KanbanModelMapper on KanbanModel {
  Kanban toKanban() => Kanban(
        createAt: createAt,
        dueDate: dueDate,
        description: description,
        orderId: orderId,
        status: status,
        key: key,
        name: name,
      );

  KanbanEntitie toKanbanEntitie() => KanbanEntitie(
        createAt: createAt,
        dueDate: dueDate,
        description: description,
        orderId: orderId,
        status: status,
        name: name,
        key: key,
      );
}

extension KanbanMapper on Kanban {
  KanbanModel toKanbanModel() => KanbanModel(
        createAt: createAt,
        dueDate: dueDate,
        status: status,
        orderId: orderId,
        description: description,
        key: key,
        name: name,
      );
}
