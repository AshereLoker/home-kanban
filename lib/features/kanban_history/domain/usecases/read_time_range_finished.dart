import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/kanban_history/domain/repositories/kanban_history_repository.dart';
import 'package:home_challenge_kanban/features/kanban_list/domain/entities/kanban.dart';

class ReadTimeRangeFinished
    extends UseCase<IList<Kanban>, ReadTimeRangeFinishedParams> {
  final KanbanHistoryRepository repository;

  ReadTimeRangeFinished(this.repository);

  @override
  Future<Either<Failure, IList<Kanban>>> call(params) =>
      repository.readTimeRangeFinished(params);
}

class ReadTimeRangeFinishedParams extends Equatable {
  final DateTime? fromDate;
  final DateTime? toDate;

  const ReadTimeRangeFinishedParams({this.fromDate, this.toDate});

  @override
  List<Object?> get props => [];
}
