import 'dart:async';

import 'package:home_challenge_kanban/core/error/exceptions.dart';
import 'package:home_challenge_kanban/core/utils/time_milliseconds_converter.dart';
import 'package:home_challenge_kanban/features/timer/data/timer_services/timer_service.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:rxdart/rxdart.dart';

class StreamTimerServiceImpl implements TimerService {
  StreamTimerServiceImpl() {
    _timeController = BehaviorSubject.seeded(0);
  }

  bool get isRunning => _timer != null && _timer!.isActive;

  late BehaviorSubject<int> _timeController;
  ValueStream<int> get time => _timeController;
  int? _presentTime;
  Timer? _timer;
  int _pauseTime = 0;

  Future<void> dispose() async {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }

    _timeController.close();
  }

  @override
  Future<void> pauseTimer() async {
    if (!isRunning) throw LocalTimerException();

    _timer!.cancel();
    _timer = null;
    _pauseTime += DateTime.now().millisecondsSinceEpoch;
  }

  @override
  Future<ValueStream<int>> startTimer(StartTimerParams params) {
    if (isRunning) throw LocalTimerException();

    _presentTime ??= TimeMillisecondsConverter.getMilliseconsFromSeconds(
      params.startTimeSeconds,
    );

    _timer = Timer.periodic(const Duration(milliseconds: 1), _tick);

    return Future.value(time);
  }

  @override
  Future<void> stopTimer() async {
    if (!isRunning) throw LocalTimerException();

    _timer!.cancel();
    _timer = null;

    _pauseTime = 0;
    _timeController.add(_presentTime!);
  }

  void _tick(Timer timer) {
    _timeController.add(_elapsedTime(_presentTime!));
  }

  int _elapsedTime(int presentTime) =>
      DateTime.now().millisecondsSinceEpoch - _pauseTime + presentTime;
}
