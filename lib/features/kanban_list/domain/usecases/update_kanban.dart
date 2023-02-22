import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/crud_kanban_repository.dart';

class UpdateKanban implements UseCase<IList<Kanban>, UpdateKanbanParams> {
  final CrudKanbanRepository repository;

  UpdateKanban(this.repository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(
    UpdateKanbanParams params,
  ) async =>
      repository.updateKanban(params);
}

class UpdateKanbanParams extends Equatable {
  final Kanban modelToUpdate;

  const UpdateKanbanParams({
    required this.modelToUpdate,
  });

  @override
  List<Object?> get props => [modelToUpdate];
}
