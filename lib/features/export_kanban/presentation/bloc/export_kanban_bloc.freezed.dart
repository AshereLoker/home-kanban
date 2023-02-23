// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_kanban_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExportKanbanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String kanbanKey) exportKanban,
    required TResult Function(IList<KanbanStatus> gropus) exportGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String kanbanKey)? exportKanban,
    TResult? Function(IList<KanbanStatus> gropus)? exportGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String kanbanKey)? exportKanban,
    TResult Function(IList<KanbanStatus> gropus)? exportGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExportKanban value) exportKanban,
    required TResult Function(_ExportGroup value) exportGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExportKanban value)? exportKanban,
    TResult? Function(_ExportGroup value)? exportGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExportKanban value)? exportKanban,
    TResult Function(_ExportGroup value)? exportGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportKanbanEventCopyWith<$Res> {
  factory $ExportKanbanEventCopyWith(
          ExportKanbanEvent value, $Res Function(ExportKanbanEvent) then) =
      _$ExportKanbanEventCopyWithImpl<$Res, ExportKanbanEvent>;
}

/// @nodoc
class _$ExportKanbanEventCopyWithImpl<$Res, $Val extends ExportKanbanEvent>
    implements $ExportKanbanEventCopyWith<$Res> {
  _$ExportKanbanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExportKanbanCopyWith<$Res> {
  factory _$$_ExportKanbanCopyWith(
          _$_ExportKanban value, $Res Function(_$_ExportKanban) then) =
      __$$_ExportKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({String kanbanKey});
}

/// @nodoc
class __$$_ExportKanbanCopyWithImpl<$Res>
    extends _$ExportKanbanEventCopyWithImpl<$Res, _$_ExportKanban>
    implements _$$_ExportKanbanCopyWith<$Res> {
  __$$_ExportKanbanCopyWithImpl(
      _$_ExportKanban _value, $Res Function(_$_ExportKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanbanKey = null,
  }) {
    return _then(_$_ExportKanban(
      null == kanbanKey
          ? _value.kanbanKey
          : kanbanKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExportKanban implements _ExportKanban {
  const _$_ExportKanban(this.kanbanKey);

  @override
  final String kanbanKey;

  @override
  String toString() {
    return 'ExportKanbanEvent.exportKanban(kanbanKey: $kanbanKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExportKanban &&
            (identical(other.kanbanKey, kanbanKey) ||
                other.kanbanKey == kanbanKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kanbanKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExportKanbanCopyWith<_$_ExportKanban> get copyWith =>
      __$$_ExportKanbanCopyWithImpl<_$_ExportKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String kanbanKey) exportKanban,
    required TResult Function(IList<KanbanStatus> gropus) exportGroup,
  }) {
    return exportKanban(kanbanKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String kanbanKey)? exportKanban,
    TResult? Function(IList<KanbanStatus> gropus)? exportGroup,
  }) {
    return exportKanban?.call(kanbanKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String kanbanKey)? exportKanban,
    TResult Function(IList<KanbanStatus> gropus)? exportGroup,
    required TResult orElse(),
  }) {
    if (exportKanban != null) {
      return exportKanban(kanbanKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExportKanban value) exportKanban,
    required TResult Function(_ExportGroup value) exportGroup,
  }) {
    return exportKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExportKanban value)? exportKanban,
    TResult? Function(_ExportGroup value)? exportGroup,
  }) {
    return exportKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExportKanban value)? exportKanban,
    TResult Function(_ExportGroup value)? exportGroup,
    required TResult orElse(),
  }) {
    if (exportKanban != null) {
      return exportKanban(this);
    }
    return orElse();
  }
}

abstract class _ExportKanban implements ExportKanbanEvent {
  const factory _ExportKanban(final String kanbanKey) = _$_ExportKanban;

  String get kanbanKey;
  @JsonKey(ignore: true)
  _$$_ExportKanbanCopyWith<_$_ExportKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExportGroupCopyWith<$Res> {
  factory _$$_ExportGroupCopyWith(
          _$_ExportGroup value, $Res Function(_$_ExportGroup) then) =
      __$$_ExportGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<KanbanStatus> gropus});
}

/// @nodoc
class __$$_ExportGroupCopyWithImpl<$Res>
    extends _$ExportKanbanEventCopyWithImpl<$Res, _$_ExportGroup>
    implements _$$_ExportGroupCopyWith<$Res> {
  __$$_ExportGroupCopyWithImpl(
      _$_ExportGroup _value, $Res Function(_$_ExportGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gropus = null,
  }) {
    return _then(_$_ExportGroup(
      null == gropus
          ? _value.gropus
          : gropus // ignore: cast_nullable_to_non_nullable
              as IList<KanbanStatus>,
    ));
  }
}

/// @nodoc

class _$_ExportGroup implements _ExportGroup {
  const _$_ExportGroup(this.gropus);

  @override
  final IList<KanbanStatus> gropus;

  @override
  String toString() {
    return 'ExportKanbanEvent.exportGroup(gropus: $gropus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExportGroup &&
            const DeepCollectionEquality().equals(other.gropus, gropus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gropus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExportGroupCopyWith<_$_ExportGroup> get copyWith =>
      __$$_ExportGroupCopyWithImpl<_$_ExportGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String kanbanKey) exportKanban,
    required TResult Function(IList<KanbanStatus> gropus) exportGroup,
  }) {
    return exportGroup(gropus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String kanbanKey)? exportKanban,
    TResult? Function(IList<KanbanStatus> gropus)? exportGroup,
  }) {
    return exportGroup?.call(gropus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String kanbanKey)? exportKanban,
    TResult Function(IList<KanbanStatus> gropus)? exportGroup,
    required TResult orElse(),
  }) {
    if (exportGroup != null) {
      return exportGroup(gropus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExportKanban value) exportKanban,
    required TResult Function(_ExportGroup value) exportGroup,
  }) {
    return exportGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExportKanban value)? exportKanban,
    TResult? Function(_ExportGroup value)? exportGroup,
  }) {
    return exportGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExportKanban value)? exportKanban,
    TResult Function(_ExportGroup value)? exportGroup,
    required TResult orElse(),
  }) {
    if (exportGroup != null) {
      return exportGroup(this);
    }
    return orElse();
  }
}

abstract class _ExportGroup implements ExportKanbanEvent {
  const factory _ExportGroup(final IList<KanbanStatus> gropus) = _$_ExportGroup;

  IList<KanbanStatus> get gropus;
  @JsonKey(ignore: true)
  _$$_ExportGroupCopyWith<_$_ExportGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExportKanbanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) hasError,
    required TResult Function() noErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? hasError,
    TResult? Function()? noErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? hasError,
    TResult Function()? noErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HasError value) hasError,
    required TResult Function(_NoErrors value) noErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HasError value)? hasError,
    TResult? Function(_NoErrors value)? noErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HasError value)? hasError,
    TResult Function(_NoErrors value)? noErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportKanbanStateCopyWith<$Res> {
  factory $ExportKanbanStateCopyWith(
          ExportKanbanState value, $Res Function(ExportKanbanState) then) =
      _$ExportKanbanStateCopyWithImpl<$Res, ExportKanbanState>;
}

/// @nodoc
class _$ExportKanbanStateCopyWithImpl<$Res, $Val extends ExportKanbanState>
    implements $ExportKanbanStateCopyWith<$Res> {
  _$ExportKanbanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HasErrorCopyWith<$Res> {
  factory _$$_HasErrorCopyWith(
          _$_HasError value, $Res Function(_$_HasError) then) =
      __$$_HasErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_HasErrorCopyWithImpl<$Res>
    extends _$ExportKanbanStateCopyWithImpl<$Res, _$_HasError>
    implements _$$_HasErrorCopyWith<$Res> {
  __$$_HasErrorCopyWithImpl(
      _$_HasError _value, $Res Function(_$_HasError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_HasError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HasError implements _HasError {
  const _$_HasError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'ExportKanbanState.hasError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HasErrorCopyWith<_$_HasError> get copyWith =>
      __$$_HasErrorCopyWithImpl<_$_HasError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) hasError,
    required TResult Function() noErrors,
  }) {
    return hasError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? hasError,
    TResult? Function()? noErrors,
  }) {
    return hasError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? hasError,
    TResult Function()? noErrors,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HasError value) hasError,
    required TResult Function(_NoErrors value) noErrors,
  }) {
    return hasError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HasError value)? hasError,
    TResult? Function(_NoErrors value)? noErrors,
  }) {
    return hasError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HasError value)? hasError,
    TResult Function(_NoErrors value)? noErrors,
    required TResult orElse(),
  }) {
    if (hasError != null) {
      return hasError(this);
    }
    return orElse();
  }
}

abstract class _HasError implements ExportKanbanState {
  const factory _HasError({final String? error}) = _$_HasError;

  String? get error;
  @JsonKey(ignore: true)
  _$$_HasErrorCopyWith<_$_HasError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoErrorsCopyWith<$Res> {
  factory _$$_NoErrorsCopyWith(
          _$_NoErrors value, $Res Function(_$_NoErrors) then) =
      __$$_NoErrorsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoErrorsCopyWithImpl<$Res>
    extends _$ExportKanbanStateCopyWithImpl<$Res, _$_NoErrors>
    implements _$$_NoErrorsCopyWith<$Res> {
  __$$_NoErrorsCopyWithImpl(
      _$_NoErrors _value, $Res Function(_$_NoErrors) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoErrors implements _NoErrors {
  const _$_NoErrors();

  @override
  String toString() {
    return 'ExportKanbanState.noErrors()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoErrors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? error) hasError,
    required TResult Function() noErrors,
  }) {
    return noErrors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? error)? hasError,
    TResult? Function()? noErrors,
  }) {
    return noErrors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? error)? hasError,
    TResult Function()? noErrors,
    required TResult orElse(),
  }) {
    if (noErrors != null) {
      return noErrors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HasError value) hasError,
    required TResult Function(_NoErrors value) noErrors,
  }) {
    return noErrors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HasError value)? hasError,
    TResult? Function(_NoErrors value)? noErrors,
  }) {
    return noErrors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HasError value)? hasError,
    TResult Function(_NoErrors value)? noErrors,
    required TResult orElse(),
  }) {
    if (noErrors != null) {
      return noErrors(this);
    }
    return orElse();
  }
}

abstract class _NoErrors implements ExportKanbanState {
  const factory _NoErrors() = _$_NoErrors;
}
