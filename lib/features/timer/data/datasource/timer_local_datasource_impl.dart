import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/features/timer/data/datasource/timer_local_datasource.dart';
import 'package:home_challenge_kanban/features/timer/data/timer_services/timer_service.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/start_timer.dart';
import 'package:rxdart/rxdart.dart';

class TimerLocalDatasourceImpl implements TimerLocalDatasource {
  final TimerService timerService;

  TimerLocalDatasourceImpl({required this.timerService});

  @override
  Future<void> pauseTimer() async {
    try {
      await timerService.pauseTimer();
    } on LocalTimerException {
      rethrow;
    }
  }

  @override
  Future<ValueStream<int>> startTimer(StartTimerParams params) async {
    try {
      final stream = await timerService.startTimer(params);

      return stream;
    } on LocalTimerException {
      rethrow;
    }
  }

  @override
  Future<void> stopTimer() async {
    try {
      timerService.stopTimer();
    } on LocalTimerException {
      rethrow;
    }
  }
}
