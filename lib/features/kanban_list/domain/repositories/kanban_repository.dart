import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

abstract class CrudKanbanRepository {
  Future<Either<Failure, Kanban>> createKanban(
    String name,
    String? description,
  );
  Future<Either<Failure, Kanban>> readKanban(String key);
  Future<Either<Failure, Kanban>> updateKanban(
    KanbanModel model,
  );
  Future<Either<Failure, int>> deleteKanban(String key);
}
