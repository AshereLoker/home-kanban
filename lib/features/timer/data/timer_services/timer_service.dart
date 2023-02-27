import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:rxdart/rxdart.dart';

abstract class TimerService {
  Future<void> pauseTimer();
  Future<ValueStream<int>> startTimer(StartTimerParams params);
  Future<void> stopTimer();
}
