import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/drift/drift_database_impl.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/usecases/read_time_range_finished.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

import '../kanban_list/test_kanban_constantst.dart';

const tName = 'test';
const tKey = 'tKey';
final tKanbanHistoryTimeRangeParams =
    ReadTimeRangeFinishedParams(fromDate: moonLanding);
final tKanbanModel = KanbanModel(
  createAt: moonLanding,
  finishedAt: moonLanding,
  status: KanbanStatus.done,
  key: tKey,
  name: tName,
  orderId: tOrderId,
  spendedTimeSeconds: 0,
);
final Kanban tKanban = tKanbanModel;
final tKanbanHistoryFullfilList = IListConst([tKanban]);
final tKanbanModelHistoryFullfilList = IListConst([tKanbanModel]);
