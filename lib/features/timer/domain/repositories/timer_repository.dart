import 'package:either_dart/either.dart';
import 'package:home_challenge_kanban/core/error/failures.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/start_timer.dart';
import 'package:rxdart/rxdart.dart';

abstract class TimerRepository {
  Future<Either<Failure, void>> pauseTimer();
  Future<Either<Failure, ValueStream<int>>> startTimer(StartTimerParams params);
  Future<Either<Failure, void>> stopTimer();
}
