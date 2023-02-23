
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/export_kanban/data/datasources/export_kanban_local_datasource.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/repositories/export_kanban_repository.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';

class ExportKanbanRepositoryImpl implements ExportKanbanRepository {
  final ExportKanbanLocalDatasource datasource;

  ExportKanbanRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, void>> exportMultipleKanbans(
    ExportMultipleKanbansParams params,
  ) async {
    try {
      final result = await datasource.exportMultipleKabnans(params);

      return Right(result);
    } on Exception {
      return Left(LocalKanbanDatasourceFailure());
    }
  }

  @override
  Future<Either<Failure, void>> exportSingleKanban(
    ExportSingleKanbanParams params,
  ) async {
    try {
      final result = await datasource.exportSingleKabnan(params);

      return Right(result);
    } on Exception {
      return Left(LocalKanbanDatasourceFailure());
    }
  }
}
