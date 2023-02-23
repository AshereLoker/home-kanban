import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/repositories/kanban_history_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

class ReadAllFinished extends UseCase<IList<Kanban>, NoParams> {
  final KanbanHistoryRepository repository;

  ReadAllFinished(this.repository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(NoParams params) =>
      repository.readAllFinished();
}
