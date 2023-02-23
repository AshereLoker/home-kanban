import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/usecases/export_kanban_usecases.dart';

abstract class ExportKanbanRepository {
  Future<Either<Failure, void>> exportSingleKanban(
    ExportSingleKanbanParams params,
  );
  Future<Either<Failure, void>> exportMultipleKanbans(
    ExportMultipleKanbansParams params,
  );
}
