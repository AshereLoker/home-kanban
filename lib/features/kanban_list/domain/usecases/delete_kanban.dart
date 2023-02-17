import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class DeleteKanbanEntity implements UseCase<int, String> {
  final CrudKanbanRepository kanbanEntityRepository;

  DeleteKanbanEntity(this.kanbanEntityRepository);

  @override
  Future<Either<Failure, int>> call(key) async =>
      await kanbanEntityRepository.deleteKanban(key);
}
