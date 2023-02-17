import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class UpdateKanban implements UseCase<Kanban, KanbanModel> {
  final CrudKanbanRepository repository;

  UpdateKanban(this.repository);

  @override
  Future<Either<Failure, Kanban>> call(KanbanModel model) async =>
      repository.updateKanban(model);
}

class UpdateKanbanParams extends Equatable {
  final String name;
  final String description;
  final String key;

  const UpdateKanbanParams({
    required this.name,
    required this.description,
    required this.key,
  });

  @override
  List<Object?> get props => [name, description, key];
}
