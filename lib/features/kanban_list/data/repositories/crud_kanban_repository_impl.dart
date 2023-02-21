import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

class CrudKanbanRepositoryImpl implements CrudKanbanRepository {
  final CrudKanbanLocalDatasource localDatasource;

  CrudKanbanRepositoryImpl({
    required this.localDatasource,
  });

  @override
  Future<Either<Failure, IList<Kanban>>> createKanban(
    CreateKanbanParams params,
  ) async {
    try {
      final createdKanban = await localDatasource.createKanban(params);

      return Right(createdKanban);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> deleteKanban(String key) async {
    try {
      final deletingResponse = await localDatasource.deleteKanban(key);

      return Right(deletingResponse);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> readAllKanbans() async {
    try {
      final kanbansList = await localDatasource.readAllKanbans();

      return Right(kanbansList);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> updateKanban(
    UpdateKanbanParams params,
  ) async {
    try {
      final updatedKanban = await localDatasource.updateKanban(params);

      return Right(updatedKanban);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }
}
