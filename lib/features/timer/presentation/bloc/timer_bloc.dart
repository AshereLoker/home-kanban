import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_challenge_kanban/core/usecases/usecase.dart';
import 'package:home_challenge_kanban/features/timer/domain/usecases/timer_usecases.dart';
import 'package:rxdart/rxdart.dart';

part 'timer_bloc.freezed.dart';
part 'timer_event.dart';
part 'timer_state.dart';

typedef _Emit = Emitter<TimerState>;

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final PauseTimer pauseTimer;
  final StartTimer startTimer;
  final StopTimer stopTimer;
  TimerBloc({
    required this.pauseTimer,
    required this.startTimer,
    required this.stopTimer,
  }) : super(const TimerState.notStarted()) {
    on<_PauseTimer>(_onPauseTimer);
    on<_StartTimer>(_onStartTimer);
    on<_StopTimer>(_onStopTimer);
  }

  Future<void> _onPauseTimer(_PauseTimer event, _Emit emit) async {
    final oldStateData = state as _IsGoing;
    await pauseTimer.call(NoParams());
    emit(
      TimerState.paused(
        elapsingTimeStream: oldStateData.elapsingTimeStream,
        widgetKey: oldStateData.widgetKey,
      ),
    );
  }

  Future<void> _onStartTimer(_StartTimer event, _Emit emit) async {
    final eitherStream = await startTimer.call(
      StartTimerParams(startTimeSeconds: event.startedTimeSeconds),
    );

    eitherStream.fold(
      (left) => null,
      (right) => emit(TimerState.isGoing(
        elapsingTimeStream: eitherStream.right,
        widgetKey: event.widgetKey,
      )),
    );
  }

  Future<void> _onStopTimer(_StopTimer event, _Emit emit) async {
    await stopTimer.call(NoParams());
    emit(const TimerState.notStarted());
  }
}
