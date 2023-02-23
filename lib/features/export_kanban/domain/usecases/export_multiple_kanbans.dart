import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/export_kanban/domain/repositories/export_kanban_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

class ExportMultipleKanbans extends UseCase<void, ExportMultipleKanbansParams> {
  final ExportKanbanRepository repository;

  ExportMultipleKanbans(this.repository);

  @override
  Future<Either<Failure, void>> call(params) async =>
      await repository.exportMultipleKanbans(params);
}

class ExportMultipleKanbansParams extends Equatable {
  final IList<KanbanStatus> requestKanbans;

  const ExportMultipleKanbansParams({required this.requestKanbans});

  @override
  List<Object?> get props => [];
}
