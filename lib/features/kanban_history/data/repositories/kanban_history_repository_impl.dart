import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_history/data/datasources/kanban_history_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/repositories/kanban_history_repository.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/usecases/read_time_range_finished.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

class KanbanHistoryRepositoryImpl implements KanbanHistoryRepository {
  final KanbanHistoryLocalDatasource datasource;

  KanbanHistoryRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, IList<Kanban>>> readAllFinished() async {
    try {
      final kanbans = await datasource.readAllFinished();

      return Right(kanbans);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> readTimeRangeFinished(
    ReadTimeRangeFinishedParams params,
  ) async {
    try {
      final kanbans = await datasource.readTimeRangeFinished(params);

      return Right(kanbans);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }
}
