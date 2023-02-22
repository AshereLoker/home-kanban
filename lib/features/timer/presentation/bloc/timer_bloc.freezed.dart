// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetKey, int startedTimeSeconds)
        startTimer,
    required TResult Function() pauseTimer,
    required TResult Function() stopTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult? Function()? pauseTimer,
    TResult? Function()? stopTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult Function()? pauseTimer,
    TResult Function()? stopTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_StopTimer value) stopTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_StopTimer value)? stopTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_StopTimer value)? stopTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartTimerCopyWith<$Res> {
  factory _$$_StartTimerCopyWith(
          _$_StartTimer value, $Res Function(_$_StartTimer) then) =
      __$$_StartTimerCopyWithImpl<$Res>;
  @useResult
  $Res call({String widgetKey, int startedTimeSeconds});
}

/// @nodoc
class __$$_StartTimerCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_StartTimer>
    implements _$$_StartTimerCopyWith<$Res> {
  __$$_StartTimerCopyWithImpl(
      _$_StartTimer _value, $Res Function(_$_StartTimer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widgetKey = null,
    Object? startedTimeSeconds = null,
  }) {
    return _then(_$_StartTimer(
      widgetKey: null == widgetKey
          ? _value.widgetKey
          : widgetKey // ignore: cast_nullable_to_non_nullable
              as String,
      startedTimeSeconds: null == startedTimeSeconds
          ? _value.startedTimeSeconds
          : startedTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StartTimer implements _StartTimer {
  const _$_StartTimer(
      {required this.widgetKey, required this.startedTimeSeconds});

  @override
  final String widgetKey;
  @override
  final int startedTimeSeconds;

  @override
  String toString() {
    return 'TimerEvent.startTimer(widgetKey: $widgetKey, startedTimeSeconds: $startedTimeSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTimer &&
            (identical(other.widgetKey, widgetKey) ||
                other.widgetKey == widgetKey) &&
            (identical(other.startedTimeSeconds, startedTimeSeconds) ||
                other.startedTimeSeconds == startedTimeSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widgetKey, startedTimeSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartTimerCopyWith<_$_StartTimer> get copyWith =>
      __$$_StartTimerCopyWithImpl<_$_StartTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetKey, int startedTimeSeconds)
        startTimer,
    required TResult Function() pauseTimer,
    required TResult Function() stopTimer,
  }) {
    return startTimer(widgetKey, startedTimeSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult? Function()? pauseTimer,
    TResult? Function()? stopTimer,
  }) {
    return startTimer?.call(widgetKey, startedTimeSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult Function()? pauseTimer,
    TResult Function()? stopTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(widgetKey, startedTimeSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_StopTimer value) stopTimer,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_StopTimer value)? stopTimer,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_StopTimer value)? stopTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class _StartTimer implements TimerEvent {
  const factory _StartTimer(
      {required final String widgetKey,
      required final int startedTimeSeconds}) = _$_StartTimer;

  String get widgetKey;
  int get startedTimeSeconds;
  @JsonKey(ignore: true)
  _$$_StartTimerCopyWith<_$_StartTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PauseTimerCopyWith<$Res> {
  factory _$$_PauseTimerCopyWith(
          _$_PauseTimer value, $Res Function(_$_PauseTimer) then) =
      __$$_PauseTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseTimerCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_PauseTimer>
    implements _$$_PauseTimerCopyWith<$Res> {
  __$$_PauseTimerCopyWithImpl(
      _$_PauseTimer _value, $Res Function(_$_PauseTimer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PauseTimer implements _PauseTimer {
  const _$_PauseTimer();

  @override
  String toString() {
    return 'TimerEvent.pauseTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PauseTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetKey, int startedTimeSeconds)
        startTimer,
    required TResult Function() pauseTimer,
    required TResult Function() stopTimer,
  }) {
    return pauseTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult? Function()? pauseTimer,
    TResult? Function()? stopTimer,
  }) {
    return pauseTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult Function()? pauseTimer,
    TResult Function()? stopTimer,
    required TResult orElse(),
  }) {
    if (pauseTimer != null) {
      return pauseTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_StopTimer value) stopTimer,
  }) {
    return pauseTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_StopTimer value)? stopTimer,
  }) {
    return pauseTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_StopTimer value)? stopTimer,
    required TResult orElse(),
  }) {
    if (pauseTimer != null) {
      return pauseTimer(this);
    }
    return orElse();
  }
}

abstract class _PauseTimer implements TimerEvent {
  const factory _PauseTimer() = _$_PauseTimer;
}

/// @nodoc
abstract class _$$_StopTimerCopyWith<$Res> {
  factory _$$_StopTimerCopyWith(
          _$_StopTimer value, $Res Function(_$_StopTimer) then) =
      __$$_StopTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopTimerCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_StopTimer>
    implements _$$_StopTimerCopyWith<$Res> {
  __$$_StopTimerCopyWithImpl(
      _$_StopTimer _value, $Res Function(_$_StopTimer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopTimer implements _StopTimer {
  const _$_StopTimer();

  @override
  String toString() {
    return 'TimerEvent.stopTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String widgetKey, int startedTimeSeconds)
        startTimer,
    required TResult Function() pauseTimer,
    required TResult Function() stopTimer,
  }) {
    return stopTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult? Function()? pauseTimer,
    TResult? Function()? stopTimer,
  }) {
    return stopTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String widgetKey, int startedTimeSeconds)? startTimer,
    TResult Function()? pauseTimer,
    TResult Function()? stopTimer,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_StopTimer value) stopTimer,
  }) {
    return stopTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_StopTimer value)? stopTimer,
  }) {
    return stopTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_StopTimer value)? stopTimer,
    required TResult orElse(),
  }) {
    if (stopTimer != null) {
      return stopTimer(this);
    }
    return orElse();
  }
}

abstract class _StopTimer implements TimerEvent {
  const factory _StopTimer() = _$_StopTimer;
}

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        isGoing,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_IsGoing value) isGoing,
    required TResult Function(_Paused value) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_IsGoing value)? isGoing,
    TResult? Function(_Paused value)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_IsGoing value)? isGoing,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotStartedCopyWith<$Res> {
  factory _$$_NotStartedCopyWith(
          _$_NotStarted value, $Res Function(_$_NotStarted) then) =
      __$$_NotStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotStartedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_NotStarted>
    implements _$$_NotStartedCopyWith<$Res> {
  __$$_NotStartedCopyWithImpl(
      _$_NotStarted _value, $Res Function(_$_NotStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotStarted implements _NotStarted {
  const _$_NotStarted();

  @override
  String toString() {
    return 'TimerState.notStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        isGoing,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        paused,
  }) {
    return notStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
  }) {
    return notStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_IsGoing value) isGoing,
    required TResult Function(_Paused value) paused,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_IsGoing value)? isGoing,
    TResult? Function(_Paused value)? paused,
  }) {
    return notStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_IsGoing value)? isGoing,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class _NotStarted implements TimerState {
  const factory _NotStarted() = _$_NotStarted;
}

/// @nodoc
abstract class _$$_IsGoingCopyWith<$Res> {
  factory _$$_IsGoingCopyWith(
          _$_IsGoing value, $Res Function(_$_IsGoing) then) =
      __$$_IsGoingCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueStream<int> elapsingTimeStream, String widgetKey});
}

/// @nodoc
class __$$_IsGoingCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_IsGoing>
    implements _$$_IsGoingCopyWith<$Res> {
  __$$_IsGoingCopyWithImpl(_$_IsGoing _value, $Res Function(_$_IsGoing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsingTimeStream = null,
    Object? widgetKey = null,
  }) {
    return _then(_$_IsGoing(
      elapsingTimeStream: null == elapsingTimeStream
          ? _value.elapsingTimeStream
          : elapsingTimeStream // ignore: cast_nullable_to_non_nullable
              as ValueStream<int>,
      widgetKey: null == widgetKey
          ? _value.widgetKey
          : widgetKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IsGoing implements _IsGoing {
  const _$_IsGoing({required this.elapsingTimeStream, required this.widgetKey});

  @override
  final ValueStream<int> elapsingTimeStream;
  @override
  final String widgetKey;

  @override
  String toString() {
    return 'TimerState.isGoing(elapsingTimeStream: $elapsingTimeStream, widgetKey: $widgetKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsGoing &&
            (identical(other.elapsingTimeStream, elapsingTimeStream) ||
                other.elapsingTimeStream == elapsingTimeStream) &&
            (identical(other.widgetKey, widgetKey) ||
                other.widgetKey == widgetKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsingTimeStream, widgetKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsGoingCopyWith<_$_IsGoing> get copyWith =>
      __$$_IsGoingCopyWithImpl<_$_IsGoing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        isGoing,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        paused,
  }) {
    return isGoing(elapsingTimeStream, widgetKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
  }) {
    return isGoing?.call(elapsingTimeStream, widgetKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
    required TResult orElse(),
  }) {
    if (isGoing != null) {
      return isGoing(elapsingTimeStream, widgetKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_IsGoing value) isGoing,
    required TResult Function(_Paused value) paused,
  }) {
    return isGoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_IsGoing value)? isGoing,
    TResult? Function(_Paused value)? paused,
  }) {
    return isGoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_IsGoing value)? isGoing,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (isGoing != null) {
      return isGoing(this);
    }
    return orElse();
  }
}

abstract class _IsGoing implements TimerState {
  const factory _IsGoing(
      {required final ValueStream<int> elapsingTimeStream,
      required final String widgetKey}) = _$_IsGoing;

  ValueStream<int> get elapsingTimeStream;
  String get widgetKey;
  @JsonKey(ignore: true)
  _$$_IsGoingCopyWith<_$_IsGoing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PausedCopyWith<$Res> {
  factory _$$_PausedCopyWith(_$_Paused value, $Res Function(_$_Paused) then) =
      __$$_PausedCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueStream<int> elapsingTimeStream, String widgetKey});
}

/// @nodoc
class __$$_PausedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_Paused>
    implements _$$_PausedCopyWith<$Res> {
  __$$_PausedCopyWithImpl(_$_Paused _value, $Res Function(_$_Paused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsingTimeStream = null,
    Object? widgetKey = null,
  }) {
    return _then(_$_Paused(
      elapsingTimeStream: null == elapsingTimeStream
          ? _value.elapsingTimeStream
          : elapsingTimeStream // ignore: cast_nullable_to_non_nullable
              as ValueStream<int>,
      widgetKey: null == widgetKey
          ? _value.widgetKey
          : widgetKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Paused implements _Paused {
  const _$_Paused({required this.elapsingTimeStream, required this.widgetKey});

  @override
  final ValueStream<int> elapsingTimeStream;
  @override
  final String widgetKey;

  @override
  String toString() {
    return 'TimerState.paused(elapsingTimeStream: $elapsingTimeStream, widgetKey: $widgetKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paused &&
            (identical(other.elapsingTimeStream, elapsingTimeStream) ||
                other.elapsingTimeStream == elapsingTimeStream) &&
            (identical(other.widgetKey, widgetKey) ||
                other.widgetKey == widgetKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, elapsingTimeStream, widgetKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PausedCopyWith<_$_Paused> get copyWith =>
      __$$_PausedCopyWithImpl<_$_Paused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        isGoing,
    required TResult Function(
            ValueStream<int> elapsingTimeStream, String widgetKey)
        paused,
  }) {
    return paused(elapsingTimeStream, widgetKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult? Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
  }) {
    return paused?.call(elapsingTimeStream, widgetKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        isGoing,
    TResult Function(ValueStream<int> elapsingTimeStream, String widgetKey)?
        paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(elapsingTimeStream, widgetKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_IsGoing value) isGoing,
    required TResult Function(_Paused value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_IsGoing value)? isGoing,
    TResult? Function(_Paused value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_IsGoing value)? isGoing,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements TimerState {
  const factory _Paused(
      {required final ValueStream<int> elapsingTimeStream,
      required final String widgetKey}) = _$_Paused;

  ValueStream<int> get elapsingTimeStream;
  String get widgetKey;
  @JsonKey(ignore: true)
  _$$_PausedCopyWith<_$_Paused> get copyWith =>
      throw _privateConstructorUsedError;
}
