import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class ReadAllKanbans extends UseCase<IList<Kanban>, NoParams> {
  final CrudKanbanRepository repository;

  ReadAllKanbans(this.repository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(NoParams params) =>
      repository.readAllKanbans();
}
