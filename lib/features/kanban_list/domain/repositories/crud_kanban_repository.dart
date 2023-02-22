import 'package:either_dart/either.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';

import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

abstract class CrudKanbanRepository {
  Future<Either<Failure, IList<Kanban>>> createKanban(
    CreateKanbanParams params,
  );
  Future<Either<Failure, IList<Kanban>>> deleteKanban(String key);
  Future<Either<Failure, IList<Kanban>>> readAllKanbans();
  Future<Either<Failure, IList<Kanban>>> updateKanban(
    UpdateKanbanParams params,
  );
}
