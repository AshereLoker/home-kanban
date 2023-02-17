import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class ReadKanban implements UseCase<Kanban, String> {
  final CrudKanbanRepository kanbanEntityRepository;

  ReadKanban(this.kanbanEntityRepository);

  @override
  Future<Either<Failure, Kanban>> call(key) async =>
      await kanbanEntityRepository.readKanban(key);
}
