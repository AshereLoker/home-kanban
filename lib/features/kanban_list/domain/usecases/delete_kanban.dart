import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/crud_kanban_repository.dart';

class DeleteKanban implements UseCase<IList<Kanban>, String> {
  final CrudKanbanRepository kanbanEntityRepository;

  DeleteKanban(this.kanbanEntityRepository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(key) async =>
      await kanbanEntityRepository.deleteKanban(key);
}
