import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/usecases/kanban_history_usecases.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

abstract class KanbanHistoryRepository {
  Future<Either<Failure, IList<Kanban>>> readAllFinished();
  Future<Either<Failure, IList<Kanban>>> readTimeRangeFinished(ReadTimeRangeFinishedParams params);
}
