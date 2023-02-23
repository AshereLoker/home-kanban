import 'package:equatable/equatable.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/repositories/export_kanban_repository.dart';

class ExportSingleKanban extends UseCase<void, ExportSingleKanbanParams> {
  final ExportKanbanRepository repository;

  ExportSingleKanban(this.repository);

  @override
  Future<Either<Failure, void>> call(params) async =>
      await repository.exportSingleKanban(params);
}

class ExportSingleKanbanParams extends Equatable {
  final String kanbanKey;

  const ExportSingleKanbanParams({required this.kanbanKey});

  @override
  List<Object?> get props => throw UnimplementedError();
}
