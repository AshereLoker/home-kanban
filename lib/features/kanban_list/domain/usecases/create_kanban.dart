import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/crud_kanban_repository.dart';

class CreateKanban implements UseCase<IList<Kanban>, CreateKanbanParams> {
  final CrudKanbanRepository repository;

  CreateKanban(this.repository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(
    CreateKanbanParams params,
  ) async =>
      repository.createKanban(params);
}

class CreateKanbanParams extends Equatable {
  final String? description;
  final DateTime? dueDate;
  final int order;
  final KanbanStatus status;
  final String name;

  const CreateKanbanParams({
    required this.status,
    required this.name,
    required this.order,
    this.description,
    this.dueDate,
  });

  @override
  List<Object?> get props => [name, description, status, dueDate, order];

  @override
  bool? get stringify => true;
}
