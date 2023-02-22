part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.startTimer({
    required String widgetKey,
    required int startedTimeSeconds,
  }) = _StartTimer;

  const factory TimerEvent.pauseTimer() = _PauseTimer;

  const factory TimerEvent.stopTimer() = _StopTimer;
}
