import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/kanban_list/data/datasources/crud_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/repositories/crud_kanban_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/usecases/kanban_usecases.dart';

class CrudKanbanRepositoryImpl implements CrudKanbanRepository {
  final CrudKanbanLocalDatasource datasource;

  CrudKanbanRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, IList<Kanban>>> createKanban(
    CreateKanbanParams params,
  ) async {
    try {
      final createdKanban = await datasource.createKanban(params);

      return Right(createdKanban);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> deleteKanban(String key) async {
    try {
      final deletingResponse = await datasource.deleteKanban(key);

      return Right(deletingResponse);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> readAllKanbans() async {
    try {
      final kanbansList = await datasource.readAllKanbans();

      return Right(kanbansList);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }

  @override
  Future<Either<Failure, IList<Kanban>>> updateKanban(
    UpdateKanbanParams params,
  ) async {
    try {
      final updatedKanban = await datasource.updateKanban(params);

      return Right(updatedKanban);
    } on LocalKanbanDatasourceException {
      return Left(LocalKanbanDatasourceFailure());
    }
  }
}
