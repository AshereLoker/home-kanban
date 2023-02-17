// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kanbans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KanbansEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KanbansEventCopyWith<$Res> {
  factory $KanbansEventCopyWith(
          KanbansEvent value, $Res Function(KanbansEvent) then) =
      _$KanbansEventCopyWithImpl<$Res, KanbansEvent>;
}

/// @nodoc
class _$KanbansEventCopyWithImpl<$Res, $Val extends KanbansEvent>
    implements $KanbansEventCopyWith<$Res> {
  _$KanbansEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState();

  @override
  String toString() {
    return 'KanbansEvent.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements KanbansEvent {
  const factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$$_CreateKanbanCopyWith<$Res> {
  factory _$$_CreateKanbanCopyWith(
          _$_CreateKanban value, $Res Function(_$_CreateKanban) then) =
      __$$_CreateKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String? description});
}

/// @nodoc
class __$$_CreateKanbanCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_CreateKanban>
    implements _$$_CreateKanbanCopyWith<$Res> {
  __$$_CreateKanbanCopyWithImpl(
      _$_CreateKanban _value, $Res Function(_$_CreateKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$_CreateKanban(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateKanban implements _CreateKanban {
  const _$_CreateKanban({required this.name, this.description});

  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'KanbansEvent.createKanban(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateKanban &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateKanbanCopyWith<_$_CreateKanban> get copyWith =>
      __$$_CreateKanbanCopyWithImpl<_$_CreateKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return createKanban(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return createKanban?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (createKanban != null) {
      return createKanban(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return createKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return createKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (createKanban != null) {
      return createKanban(this);
    }
    return orElse();
  }
}

abstract class _CreateKanban implements KanbansEvent {
  const factory _CreateKanban(
      {required final String name,
      final String? description}) = _$_CreateKanban;

  String get name;
  String? get description;
  @JsonKey(ignore: true)
  _$$_CreateKanbanCopyWith<_$_CreateKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadKanbanCopyWith<$Res> {
  factory _$$_ReadKanbanCopyWith(
          _$_ReadKanban value, $Res Function(_$_ReadKanban) then) =
      __$$_ReadKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_ReadKanbanCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_ReadKanban>
    implements _$$_ReadKanbanCopyWith<$Res> {
  __$$_ReadKanbanCopyWithImpl(
      _$_ReadKanban _value, $Res Function(_$_ReadKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_ReadKanban(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReadKanban implements _ReadKanban {
  const _$_ReadKanban({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'KanbansEvent.readKanban(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadKanban &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadKanbanCopyWith<_$_ReadKanban> get copyWith =>
      __$$_ReadKanbanCopyWithImpl<_$_ReadKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return readKanban(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return readKanban?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (readKanban != null) {
      return readKanban(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return readKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return readKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (readKanban != null) {
      return readKanban(this);
    }
    return orElse();
  }
}

abstract class _ReadKanban implements KanbansEvent {
  const factory _ReadKanban({required final String key}) = _$_ReadKanban;

  String get key;
  @JsonKey(ignore: true)
  _$$_ReadKanbanCopyWith<_$_ReadKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateKanbanCopyWith<$Res> {
  factory _$$_UpdateKanbanCopyWith(
          _$_UpdateKanban value, $Res Function(_$_UpdateKanban) then) =
      __$$_UpdateKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({Kanban kanban});
}

/// @nodoc
class __$$_UpdateKanbanCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_UpdateKanban>
    implements _$$_UpdateKanbanCopyWith<$Res> {
  __$$_UpdateKanbanCopyWithImpl(
      _$_UpdateKanban _value, $Res Function(_$_UpdateKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanban = freezed,
  }) {
    return _then(_$_UpdateKanban(
      kanban: freezed == kanban
          ? _value.kanban
          : kanban // ignore: cast_nullable_to_non_nullable
              as Kanban,
    ));
  }
}

/// @nodoc

class _$_UpdateKanban implements _UpdateKanban {
  const _$_UpdateKanban({required this.kanban});

  @override
  final Kanban kanban;

  @override
  String toString() {
    return 'KanbansEvent.updateKanban(kanban: $kanban)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateKanban &&
            const DeepCollectionEquality().equals(other.kanban, kanban));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(kanban));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateKanbanCopyWith<_$_UpdateKanban> get copyWith =>
      __$$_UpdateKanbanCopyWithImpl<_$_UpdateKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return updateKanban(kanban);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return updateKanban?.call(kanban);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (updateKanban != null) {
      return updateKanban(kanban);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return updateKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return updateKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (updateKanban != null) {
      return updateKanban(this);
    }
    return orElse();
  }
}

abstract class _UpdateKanban implements KanbansEvent {
  const factory _UpdateKanban({required final Kanban kanban}) = _$_UpdateKanban;

  Kanban get kanban;
  @JsonKey(ignore: true)
  _$$_UpdateKanbanCopyWith<_$_UpdateKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteKanbanCopyWith<$Res> {
  factory _$$_DeleteKanbanCopyWith(
          _$_DeleteKanban value, $Res Function(_$_DeleteKanban) then) =
      __$$_DeleteKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_DeleteKanbanCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_DeleteKanban>
    implements _$$_DeleteKanbanCopyWith<$Res> {
  __$$_DeleteKanbanCopyWithImpl(
      _$_DeleteKanban _value, $Res Function(_$_DeleteKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_DeleteKanban(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteKanban implements _DeleteKanban {
  const _$_DeleteKanban({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'KanbansEvent.deleteKanban(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteKanban &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteKanbanCopyWith<_$_DeleteKanban> get copyWith =>
      __$$_DeleteKanbanCopyWithImpl<_$_DeleteKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String name, String? description) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(Kanban kanban) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return deleteKanban(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String name, String? description)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(Kanban kanban)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return deleteKanban?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String name, String? description)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(Kanban kanban)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (deleteKanban != null) {
      return deleteKanban(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return deleteKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return deleteKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (deleteKanban != null) {
      return deleteKanban(this);
    }
    return orElse();
  }
}

abstract class _DeleteKanban implements KanbansEvent {
  const factory _DeleteKanban({required final String key}) = _$_DeleteKanban;

  String get key;
  @JsonKey(ignore: true)
  _$$_DeleteKanbanCopyWith<_$_DeleteKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KanbansState {}

/// @nodoc
abstract class $KanbansStateCopyWith<$Res> {
  factory $KanbansStateCopyWith(
          KanbansState value, $Res Function(KanbansState) then) =
      _$KanbansStateCopyWithImpl<$Res, KanbansState>;
}

/// @nodoc
class _$KanbansStateCopyWithImpl<$Res, $Val extends KanbansState>
    implements $KanbansStateCopyWith<$Res> {
  _$KanbansStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_KanbansCopyWith<$Res> {
  factory _$$_KanbansCopyWith(
          _$_Kanbans value, $Res Function(_$_Kanbans) then) =
      __$$_KanbansCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KanbansCopyWithImpl<$Res>
    extends _$KanbansStateCopyWithImpl<$Res, _$_Kanbans>
    implements _$$_KanbansCopyWith<$Res> {
  __$$_KanbansCopyWithImpl(_$_Kanbans _value, $Res Function(_$_Kanbans) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Kanbans extends _Kanbans {
  const _$_Kanbans() : super._();

  @override
  String toString() {
    return 'KanbansState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Kanbans);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Kanbans extends KanbansState {
  const factory _Kanbans() = _$_Kanbans;
  const _Kanbans._() : super._();
}
