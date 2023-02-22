import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource.dart';
import 'package:home_challenge_kanban/features/timer/domain/repositories/timer_repository.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/start_timer.dart';
import 'package:rxdart/rxdart.dart';

class TimerRepositoryImpl implements TimerRepository {
  final TimerLocalDatasource localDatasource;

  TimerRepositoryImpl({required this.localDatasource});

  @override
  Future<Either<Failure, void>> pauseTimer() async {
    try {
      final result = await localDatasource.pauseTimer();

      return Right(result);
    } on LocalTimerException {
      return Left(LocalTimerFailure());
    }
  }

  @override
  Future<Either<Failure, ValueStream<int>>> startTimer(
    StartTimerParams params,
  ) async {
    try {
      final stream = await localDatasource.startTimer(params);

      return Right(stream);
    } on LocalTimerException {
      return Left(LocalTimerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> stopTimer() async {
    try {
      final result = await localDatasource.stopTimer();

      return Right(result);
    } on LocalTimerException {
      return Left(LocalTimerFailure());
    }
  }
}
