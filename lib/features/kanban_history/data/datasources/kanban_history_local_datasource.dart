

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/database/kanban_database.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/usecases/read_time_range_finished.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

abstract class KanbanHistoryLocalDatasource {
  Future<IList<Kanban>> readAllFinished();
  Future<IList<Kanban>> readTimeRangeFinished(
    ReadTimeRangeFinishedParams params,
  );
}

class KanbanHistoryLocalDatasourceImpl implements KanbanHistoryLocalDatasource {
  final KanbanDatabase database;

  KanbanHistoryLocalDatasourceImpl({required this.database});

  @override
  Future<IList<Kanban>> readAllFinished() async {
    final allKanbans = await database.readAllKanbans();

    return _getAllDone(allKanbans);
  }

  @override
  Future<IList<Kanban>> readTimeRangeFinished(
    ReadTimeRangeFinishedParams params,
  ) async {
    final allKanbans = await database.readAllKanbans();

    return _getFromRange(
      _getAllDone(allKanbans),
      params.fromDate,
      params.toDate,
    );
  }

  IList<Kanban> _getAllDone(IList<Kanban> allKanbans) => allKanbans.unlock
      .where((obj) => obj.status == KanbanStatus.done || obj.finishedAt != null)
      .asList()
      .lock;

  IList<Kanban> _getFromRange(
    IList<Kanban> allKanbans,
    DateTime? fromDate,
    DateTime? toDate,
  ) {
    final all = allKanbans.unlock;
    final getFromDates = <Kanban>[];
    const oldNewDay = Duration(milliseconds: 100);

    if (fromDate != null) {
      final criteriaFromDate = _clearDate(fromDate).subtract(oldNewDay);

      getFromDates.addAll(
        all.where(
          (obj) =>
              obj.finishedAt != null &&
              obj.finishedAt!.isAfter(criteriaFromDate),
        ),
      );
    }

    if (toDate != null) {
      final criteriaToDate = _clearDate(toDate).add(oldNewDay);

      getFromDates.addAll(
        all.where(
          (obj) =>
              obj.finishedAt != null &&
              obj.finishedAt!.isBefore(criteriaToDate),
        ),
      );
    }

    return getFromDates.toSet().toIList();
  }

  DateTime _clearDate(DateTime time) =>
      DateTime(time.year, time.month, time.day);
}
