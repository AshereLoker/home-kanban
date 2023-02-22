part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState.notStarted() = _NotStarted;
  const factory TimerState.isGoing({
    required ValueStream<int> elapsingTimeStream,
    required String widgetKey,
  }) = _IsGoing;
  const factory TimerState.paused({
    required ValueStream<int> elapsingTimeStream,
    required String widgetKey,
  }) = _Paused;
}
