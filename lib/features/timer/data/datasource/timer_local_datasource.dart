import 'dart:async';
import 'package:home_challenge_kanban/features/timer/domain/usecases/start_timer.dart';
import 'package:rxdart/rxdart.dart';

abstract class TimerLocalDatasource {
  Future<void> pauseTimer();
  Future<ValueStream<int>> startTimer(StartTimerParams params);
  Future<void> stopTimer();
}
