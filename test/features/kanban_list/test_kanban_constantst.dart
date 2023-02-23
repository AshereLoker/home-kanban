import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

const tName = 'test';
const tDescr = 'test';
const tKey = 'tKey';
const tOrderId = 0;
const tCreateKanbanParams = CreateKanbanParams(
  status: KanbanStatus.todo,
  name: tName,
  description: tDescr,
  order: tOrderId,
);

final tUpdateKanbanParams = UpdateKanbanParams(modelToUpdate: tKanbanModel);

final tKanbanModel = KanbanModel(
  name: tName,
  description: tDescr,
  key: tKey,
  status: KanbanStatus.todo,
  createAt: moonLanding,
  orderId: tOrderId,
);
final Kanban tKanban = tKanbanModel;
final tKanbanModelFullfilList = IListConst<KanbanModel>([tKanbanModel]);
const tKanbanModelEmptyList = IListConst<KanbanModel>([]);
final tKanbanFullfilList = IListConst<Kanban>([tKanban]);
const tKanbanEmptyList = IListConst<Kanban>([]);
