import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class CreateKanban implements UseCase<Kanban, CreateKanbanParams> {
  final CrudKanbanRepository repository;

  CreateKanban(this.repository);

  @override
  Future<Either<Failure, Kanban>> call(CreateKanbanParams params) async =>
      repository.createKanban(params.name, params.description);
}

class CreateKanbanParams extends Equatable {
  final String name;
  final String description;

  const CreateKanbanParams({required this.name, required this.description});

  @override
  List<Object?> get props => [name, description];
}
