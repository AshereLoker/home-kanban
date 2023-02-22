import 'dart:async';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/timer/domain/repositories/timer_repository.dart';
import 'package:rxdart/rxdart.dart';

class StartTimer extends UseCase<ValueStream<int>, StartTimerParams> {
  final TimerRepository repository;

  StartTimer(this.repository);
  @override
  Future<Either<Failure, ValueStream<int>>> call(StartTimerParams params) =>
      repository.startTimer(params);
}

class StartTimerParams extends Equatable {
  final int startTimeSeconds;

  const StartTimerParams({
    required this.startTimeSeconds,
  });

  @override
  List<Object?> get props => [startTimeSeconds];
}
