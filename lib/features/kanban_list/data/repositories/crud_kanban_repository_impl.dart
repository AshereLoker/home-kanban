import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/models/kanban/kanban_model.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/kanban_repository.dart';

class CrudKanbanRepositoryImpl implements CrudKanbanRepository {
  final CrudKanbanLocalDatasource localDatasource;

  CrudKanbanRepositoryImpl({
    required this.localDatasource,
  });

  @override
  Future<Either<Failure, Kanban>> createKanban(
    String name,
    String? description,
  ) async {
    try {
      final createdKanban =
          await localDatasource.createKanban(name, description);

      return Right(createdKanban);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, int>> deleteKanban(String key) async {
    try {
      final deletingResponse = await localDatasource.deleteKanban(key);

      return Right(deletingResponse);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, Kanban>> readKanban(String key) async {
    try {
      final kanban = await localDatasource.readKanban(key);

      return Right(kanban);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, Kanban>> updateKanban(KanbanModel model) async {
    try {
      final updatedKanban = await localDatasource.updateKanban(model);

      return Right(updatedKanban);
    } on LocalDatabaseException {
      return Left(LocalDatabaseFailure());
    }
  }
}
