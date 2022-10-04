// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'talkers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TalkersEvent {
  List<Talker> get talkers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Talker> talkers, Socket socket) init,
    required TResult Function(List<Talker> talkers) fetchTalkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTalkers value) fetchTalkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkersEventCopyWith<TalkersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkersEventCopyWith<$Res> {
  factory $TalkersEventCopyWith(
          TalkersEvent value, $Res Function(TalkersEvent) then) =
      _$TalkersEventCopyWithImpl<$Res>;
  $Res call({List<Talker> talkers});
}

/// @nodoc
class _$TalkersEventCopyWithImpl<$Res> implements $TalkersEventCopyWith<$Res> {
  _$TalkersEventCopyWithImpl(this._value, this._then);

  final TalkersEvent _value;
  // ignore: unused_field
  final $Res Function(TalkersEvent) _then;

  @override
  $Res call({
    Object? talkers = freezed,
  }) {
    return _then(_value.copyWith(
      talkers: talkers == freezed
          ? _value.talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> implements $TalkersEventCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @override
  $Res call({List<Talker> talkers, Socket socket});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$TalkersEventCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;

  @override
  $Res call({
    Object? talkers = freezed,
    Object? socket = freezed,
  }) {
    return _then(_$_Init(
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
      socket: socket == freezed
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as Socket,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required final List<Talker> talkers, required this.socket})
      : _talkers = talkers;

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  final Socket socket;

  @override
  String toString() {
    return 'TalkersEvent.init(talkers: $talkers, socket: $socket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            const DeepCollectionEquality().equals(other._talkers, _talkers) &&
            const DeepCollectionEquality().equals(other.socket, socket));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_talkers),
      const DeepCollectionEquality().hash(socket));

  @JsonKey(ignore: true)
  @override
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Talker> talkers, Socket socket) init,
    required TResult Function(List<Talker> talkers) fetchTalkers,
  }) {
    return init(talkers, socket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
  }) {
    return init?.call(talkers, socket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(talkers, socket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTalkers value) fetchTalkers,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements TalkersEvent {
  const factory _Init(
      {required final List<Talker> talkers,
      required final Socket socket}) = _$_Init;

  @override
  List<Talker> get talkers;
  Socket get socket;
  @override
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchTalkersCopyWith<$Res>
    implements $TalkersEventCopyWith<$Res> {
  factory _$$_FetchTalkersCopyWith(
          _$_FetchTalkers value, $Res Function(_$_FetchTalkers) then) =
      __$$_FetchTalkersCopyWithImpl<$Res>;
  @override
  $Res call({List<Talker> talkers});
}

/// @nodoc
class __$$_FetchTalkersCopyWithImpl<$Res>
    extends _$TalkersEventCopyWithImpl<$Res>
    implements _$$_FetchTalkersCopyWith<$Res> {
  __$$_FetchTalkersCopyWithImpl(
      _$_FetchTalkers _value, $Res Function(_$_FetchTalkers) _then)
      : super(_value, (v) => _then(v as _$_FetchTalkers));

  @override
  _$_FetchTalkers get _value => super._value as _$_FetchTalkers;

  @override
  $Res call({
    Object? talkers = freezed,
  }) {
    return _then(_$_FetchTalkers(
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
    ));
  }
}

/// @nodoc

class _$_FetchTalkers implements _FetchTalkers {
  const _$_FetchTalkers({required final List<Talker> talkers})
      : _talkers = talkers;

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  String toString() {
    return 'TalkersEvent.fetchTalkers(talkers: $talkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchTalkers &&
            const DeepCollectionEquality().equals(other._talkers, _talkers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_talkers));

  @JsonKey(ignore: true)
  @override
  _$$_FetchTalkersCopyWith<_$_FetchTalkers> get copyWith =>
      __$$_FetchTalkersCopyWithImpl<_$_FetchTalkers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Talker> talkers, Socket socket) init,
    required TResult Function(List<Talker> talkers) fetchTalkers,
  }) {
    return fetchTalkers(talkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
  }) {
    return fetchTalkers?.call(talkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Talker> talkers, Socket socket)? init,
    TResult Function(List<Talker> talkers)? fetchTalkers,
    required TResult orElse(),
  }) {
    if (fetchTalkers != null) {
      return fetchTalkers(talkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_FetchTalkers value) fetchTalkers,
  }) {
    return fetchTalkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
  }) {
    return fetchTalkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_FetchTalkers value)? fetchTalkers,
    required TResult orElse(),
  }) {
    if (fetchTalkers != null) {
      return fetchTalkers(this);
    }
    return orElse();
  }
}

abstract class _FetchTalkers implements TalkersEvent {
  const factory _FetchTalkers({required final List<Talker> talkers}) =
      _$_FetchTalkers;

  @override
  List<Talker> get talkers;
  @override
  @JsonKey(ignore: true)
  _$$_FetchTalkersCopyWith<_$_FetchTalkers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TalkersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Talker> talkers) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkersStateCopyWith<$Res> {
  factory $TalkersStateCopyWith(
          TalkersState value, $Res Function(TalkersState) then) =
      _$TalkersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TalkersStateCopyWithImpl<$Res> implements $TalkersStateCopyWith<$Res> {
  _$TalkersStateCopyWithImpl(this._value, this._then);

  final TalkersState _value;
  // ignore: unused_field
  final $Res Function(TalkersState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$TalkersStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'TalkersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Talker> talkers) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TalkersState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<Talker> talkers});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$TalkersStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? talkers = freezed,
  }) {
    return _then(_$_Loaded(
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded({required final List<Talker> talkers}) : _talkers = talkers;

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  String toString() {
    return 'TalkersState.loaded(talkers: $talkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._talkers, _talkers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_talkers));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Talker> talkers) loaded,
  }) {
    return loaded(talkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
  }) {
    return loaded?.call(talkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Talker> talkers)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(talkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TalkersState {
  factory _Loaded({required final List<Talker> talkers}) = _$_Loaded;

  List<Talker> get talkers;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
