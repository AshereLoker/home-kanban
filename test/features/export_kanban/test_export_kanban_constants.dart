import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/models/export_kanban_model.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_multiple_kanbans.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_single_kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

const tKey = 'tKey';
const tStatus = KanbanStatus.todo;
const tStatus2 = KanbanStatus.done;
const tSingeExportParams = ExportSingleKanbanParams(kanbanKey: tKey);
const tMultipleExportParams = ExportMultipleKanbansParams(
  requestKanbans: IListConst([tStatus, tStatus2]),
);

const tExportKanbanModel = ExportKanbanModel(
  orderId: '0',
  name: 'Moon landing',
  description: "That's one small step for man, one giant leap for mankind. (c)",
  status: 'done',
  createAt: '2/21/1969',
  dueDate: '7/22/1969',
  finishedAt: '7/20/1969 8:17:00 PM',
  timeSpend: '195:18:00',
);

final tUnsortedExportList = [
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.done,
    key: 'tKey',
    name: 'test1',
    orderId: 0,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.review,
    key: 'tKey',
    name: 'test2',
    orderId: 0,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.done,
    key: 'tKey',
    name: 'test2',
    orderId: 1,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.todo,
    key: 'tKey',
    name: 'test3',
    orderId: 0,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.todo,
    key: 'tKey',
    name: 'test4',
    orderId: 1,
  ),
];

final tSortedExportList = [
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.done,
    key: 'tKey',
    name: 'test1',
    orderId: 0,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.done,
    key: 'tKey',
    name: 'test2',
    orderId: 1,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.todo,
    key: 'tKey',
    name: 'test3',
    orderId: 0,
  ),
  KanbanModel(
    createAt: moonLanding,
    status: KanbanStatus.todo,
    key: 'tKey',
    name: 'test4',
    orderId: 1,
  ),
];
