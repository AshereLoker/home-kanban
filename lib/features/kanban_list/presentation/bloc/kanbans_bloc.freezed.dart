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
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
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
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
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
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
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
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
abstract class _$$_LoadAllKanbansCopyWith<$Res> {
  factory _$$_LoadAllKanbansCopyWith(
          _$_LoadAllKanbans value, $Res Function(_$_LoadAllKanbans) then) =
      __$$_LoadAllKanbansCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadAllKanbansCopyWithImpl<$Res>
    extends _$KanbansEventCopyWithImpl<$Res, _$_LoadAllKanbans>
    implements _$$_LoadAllKanbansCopyWith<$Res> {
  __$$_LoadAllKanbansCopyWithImpl(
      _$_LoadAllKanbans _value, $Res Function(_$_LoadAllKanbans) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadAllKanbans implements _LoadAllKanbans {
  const _$_LoadAllKanbans();

  @override
  String toString() {
    return 'KanbansEvent.loadAllKanbans()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadAllKanbans);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return loadAllKanbans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return loadAllKanbans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (loadAllKanbans != null) {
      return loadAllKanbans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
    required TResult Function(_CreateKanban value) createKanban,
    required TResult Function(_ReadKanban value) readKanban,
    required TResult Function(_UpdateKanban value) updateKanban,
    required TResult Function(_DeleteKanban value) deleteKanban,
  }) {
    return loadAllKanbans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? initState,
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
    TResult? Function(_CreateKanban value)? createKanban,
    TResult? Function(_ReadKanban value)? readKanban,
    TResult? Function(_UpdateKanban value)? updateKanban,
    TResult? Function(_DeleteKanban value)? deleteKanban,
  }) {
    return loadAllKanbans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
    TResult Function(_CreateKanban value)? createKanban,
    TResult Function(_ReadKanban value)? readKanban,
    TResult Function(_UpdateKanban value)? updateKanban,
    TResult Function(_DeleteKanban value)? deleteKanban,
    required TResult orElse(),
  }) {
    if (loadAllKanbans != null) {
      return loadAllKanbans(this);
    }
    return orElse();
  }
}

abstract class _LoadAllKanbans implements KanbansEvent {
  const factory _LoadAllKanbans() = _$_LoadAllKanbans;
}

/// @nodoc
abstract class _$$_CreateKanbanCopyWith<$Res> {
  factory _$$_CreateKanbanCopyWith(
          _$_CreateKanban value, $Res Function(_$_CreateKanban) then) =
      __$$_CreateKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateKanbanParams createParams});
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
    Object? createParams = null,
  }) {
    return _then(_$_CreateKanban(
      createParams: null == createParams
          ? _value.createParams
          : createParams // ignore: cast_nullable_to_non_nullable
              as CreateKanbanParams,
    ));
  }
}

/// @nodoc

class _$_CreateKanban implements _CreateKanban {
  const _$_CreateKanban({required this.createParams});

  @override
  final CreateKanbanParams createParams;

  @override
  String toString() {
    return 'KanbansEvent.createKanban(createParams: $createParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateKanban &&
            (identical(other.createParams, createParams) ||
                other.createParams == createParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateKanbanCopyWith<_$_CreateKanban> get copyWith =>
      __$$_CreateKanbanCopyWithImpl<_$_CreateKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return createKanban(createParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return createKanban?.call(createParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (createKanban != null) {
      return createKanban(createParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
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
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
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
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
      {required final CreateKanbanParams createParams}) = _$_CreateKanban;

  CreateKanbanParams get createParams;
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
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return readKanban(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return readKanban?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
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
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
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
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
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
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
  $Res call({UpdateKanbanParams params});
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
    Object? params = null,
  }) {
    return _then(_$_UpdateKanban(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateKanbanParams,
    ));
  }
}

/// @nodoc

class _$_UpdateKanban implements _UpdateKanban {
  const _$_UpdateKanban({required this.params});

  @override
  final UpdateKanbanParams params;

  @override
  String toString() {
    return 'KanbansEvent.updateKanban(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateKanban &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateKanbanCopyWith<_$_UpdateKanban> get copyWith =>
      __$$_UpdateKanbanCopyWithImpl<_$_UpdateKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return updateKanban(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return updateKanban?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
    TResult Function(String key)? deleteKanban,
    required TResult orElse(),
  }) {
    if (updateKanban != null) {
      return updateKanban(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
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
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
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
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
  const factory _UpdateKanban({required final UpdateKanbanParams params}) =
      _$_UpdateKanban;

  UpdateKanbanParams get params;
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
    required TResult Function() loadAllKanbans,
    required TResult Function(CreateKanbanParams createParams) createKanban,
    required TResult Function(String key) readKanban,
    required TResult Function(UpdateKanbanParams params) updateKanban,
    required TResult Function(String key) deleteKanban,
  }) {
    return deleteKanban(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function()? loadAllKanbans,
    TResult? Function(CreateKanbanParams createParams)? createKanban,
    TResult? Function(String key)? readKanban,
    TResult? Function(UpdateKanbanParams params)? updateKanban,
    TResult? Function(String key)? deleteKanban,
  }) {
    return deleteKanban?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loadAllKanbans,
    TResult Function(CreateKanbanParams createParams)? createKanban,
    TResult Function(String key)? readKanban,
    TResult Function(UpdateKanbanParams params)? updateKanban,
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
    required TResult Function(_LoadAllKanbans value) loadAllKanbans,
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
    TResult? Function(_LoadAllKanbans value)? loadAllKanbans,
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
    TResult Function(_LoadAllKanbans value)? loadAllKanbans,
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
mixin _$KanbansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(IList<Kanban> kanbans) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(IList<Kanban> kanbans)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(IList<Kanban> kanbans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KanbansEmpty value) empty,
    required TResult Function(_KanbansLoading value) loading,
    required TResult Function(_KanbansLoaded value) loaded,
    required TResult Function(_KanbansError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KanbansEmpty value)? empty,
    TResult? Function(_KanbansLoading value)? loading,
    TResult? Function(_KanbansLoaded value)? loaded,
    TResult? Function(_KanbansError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KanbansEmpty value)? empty,
    TResult Function(_KanbansLoading value)? loading,
    TResult Function(_KanbansLoaded value)? loaded,
    TResult Function(_KanbansError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_KanbansEmptyCopyWith<$Res> {
  factory _$$_KanbansEmptyCopyWith(
          _$_KanbansEmpty value, $Res Function(_$_KanbansEmpty) then) =
      __$$_KanbansEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KanbansEmptyCopyWithImpl<$Res>
    extends _$KanbansStateCopyWithImpl<$Res, _$_KanbansEmpty>
    implements _$$_KanbansEmptyCopyWith<$Res> {
  __$$_KanbansEmptyCopyWithImpl(
      _$_KanbansEmpty _value, $Res Function(_$_KanbansEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_KanbansEmpty implements _KanbansEmpty {
  const _$_KanbansEmpty();

  @override
  String toString() {
    return 'KanbansState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_KanbansEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(IList<Kanban> kanbans) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(IList<Kanban> kanbans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(IList<Kanban> kanbans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KanbansEmpty value) empty,
    required TResult Function(_KanbansLoading value) loading,
    required TResult Function(_KanbansLoaded value) loaded,
    required TResult Function(_KanbansError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KanbansEmpty value)? empty,
    TResult? Function(_KanbansLoading value)? loading,
    TResult? Function(_KanbansLoaded value)? loaded,
    TResult? Function(_KanbansError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KanbansEmpty value)? empty,
    TResult Function(_KanbansLoading value)? loading,
    TResult Function(_KanbansLoaded value)? loaded,
    TResult Function(_KanbansError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _KanbansEmpty implements KanbansState {
  const factory _KanbansEmpty() = _$_KanbansEmpty;
}

/// @nodoc
abstract class _$$_KanbansLoadingCopyWith<$Res> {
  factory _$$_KanbansLoadingCopyWith(
          _$_KanbansLoading value, $Res Function(_$_KanbansLoading) then) =
      __$$_KanbansLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KanbansLoadingCopyWithImpl<$Res>
    extends _$KanbansStateCopyWithImpl<$Res, _$_KanbansLoading>
    implements _$$_KanbansLoadingCopyWith<$Res> {
  __$$_KanbansLoadingCopyWithImpl(
      _$_KanbansLoading _value, $Res Function(_$_KanbansLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_KanbansLoading implements _KanbansLoading {
  const _$_KanbansLoading();

  @override
  String toString() {
    return 'KanbansState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_KanbansLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(IList<Kanban> kanbans) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(IList<Kanban> kanbans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(IList<Kanban> kanbans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KanbansEmpty value) empty,
    required TResult Function(_KanbansLoading value) loading,
    required TResult Function(_KanbansLoaded value) loaded,
    required TResult Function(_KanbansError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KanbansEmpty value)? empty,
    TResult? Function(_KanbansLoading value)? loading,
    TResult? Function(_KanbansLoaded value)? loaded,
    TResult? Function(_KanbansError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KanbansEmpty value)? empty,
    TResult Function(_KanbansLoading value)? loading,
    TResult Function(_KanbansLoaded value)? loaded,
    TResult Function(_KanbansError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _KanbansLoading implements KanbansState {
  const factory _KanbansLoading() = _$_KanbansLoading;
}

/// @nodoc
abstract class _$$_KanbansLoadedCopyWith<$Res> {
  factory _$$_KanbansLoadedCopyWith(
          _$_KanbansLoaded value, $Res Function(_$_KanbansLoaded) then) =
      __$$_KanbansLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<Kanban> kanbans});
}

/// @nodoc
class __$$_KanbansLoadedCopyWithImpl<$Res>
    extends _$KanbansStateCopyWithImpl<$Res, _$_KanbansLoaded>
    implements _$$_KanbansLoadedCopyWith<$Res> {
  __$$_KanbansLoadedCopyWithImpl(
      _$_KanbansLoaded _value, $Res Function(_$_KanbansLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanbans = null,
  }) {
    return _then(_$_KanbansLoaded(
      null == kanbans
          ? _value.kanbans
          : kanbans // ignore: cast_nullable_to_non_nullable
              as IList<Kanban>,
    ));
  }
}

/// @nodoc

class _$_KanbansLoaded implements _KanbansLoaded {
  const _$_KanbansLoaded(this.kanbans);

  @override
  final IList<Kanban> kanbans;

  @override
  String toString() {
    return 'KanbansState.loaded(kanbans: $kanbans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KanbansLoaded &&
            const DeepCollectionEquality().equals(other.kanbans, kanbans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(kanbans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KanbansLoadedCopyWith<_$_KanbansLoaded> get copyWith =>
      __$$_KanbansLoadedCopyWithImpl<_$_KanbansLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(IList<Kanban> kanbans) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(kanbans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(IList<Kanban> kanbans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(kanbans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(IList<Kanban> kanbans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(kanbans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KanbansEmpty value) empty,
    required TResult Function(_KanbansLoading value) loading,
    required TResult Function(_KanbansLoaded value) loaded,
    required TResult Function(_KanbansError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KanbansEmpty value)? empty,
    TResult? Function(_KanbansLoading value)? loading,
    TResult? Function(_KanbansLoaded value)? loaded,
    TResult? Function(_KanbansError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KanbansEmpty value)? empty,
    TResult Function(_KanbansLoading value)? loading,
    TResult Function(_KanbansLoaded value)? loaded,
    TResult Function(_KanbansError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _KanbansLoaded implements KanbansState {
  const factory _KanbansLoaded(final IList<Kanban> kanbans) = _$_KanbansLoaded;

  IList<Kanban> get kanbans;
  @JsonKey(ignore: true)
  _$$_KanbansLoadedCopyWith<_$_KanbansLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KanbansErrorCopyWith<$Res> {
  factory _$$_KanbansErrorCopyWith(
          _$_KanbansError value, $Res Function(_$_KanbansError) then) =
      __$$_KanbansErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_KanbansErrorCopyWithImpl<$Res>
    extends _$KanbansStateCopyWithImpl<$Res, _$_KanbansError>
    implements _$$_KanbansErrorCopyWith<$Res> {
  __$$_KanbansErrorCopyWithImpl(
      _$_KanbansError _value, $Res Function(_$_KanbansError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_KanbansError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KanbansError implements _KanbansError {
  const _$_KanbansError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'KanbansState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KanbansError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KanbansErrorCopyWith<_$_KanbansError> get copyWith =>
      __$$_KanbansErrorCopyWithImpl<_$_KanbansError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(IList<Kanban> kanbans) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(IList<Kanban> kanbans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(IList<Kanban> kanbans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_KanbansEmpty value) empty,
    required TResult Function(_KanbansLoading value) loading,
    required TResult Function(_KanbansLoaded value) loaded,
    required TResult Function(_KanbansError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_KanbansEmpty value)? empty,
    TResult? Function(_KanbansLoading value)? loading,
    TResult? Function(_KanbansLoaded value)? loaded,
    TResult? Function(_KanbansError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_KanbansEmpty value)? empty,
    TResult Function(_KanbansLoading value)? loading,
    TResult Function(_KanbansLoaded value)? loaded,
    TResult Function(_KanbansError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _KanbansError implements KanbansState {
  const factory _KanbansError(final String message) = _$_KanbansError;

  String get message;
  @JsonKey(ignore: true)
  _$$_KanbansErrorCopyWith<_$_KanbansError> get copyWith =>
      throw _privateConstructorUsedError;
}
