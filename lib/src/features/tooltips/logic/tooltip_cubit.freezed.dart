// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tooltip_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SensoTooltipState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool enabled, TooltipTrigger tooltipTrigger)
        loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensoTooltipStateCopyWith<$Res> {
  factory $SensoTooltipStateCopyWith(
          SensoTooltipState value, $Res Function(SensoTooltipState) then) =
      _$SensoTooltipStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SensoTooltipStateCopyWithImpl<$Res>
    implements $SensoTooltipStateCopyWith<$Res> {
  _$SensoTooltipStateCopyWithImpl(this._value, this._then);

  final SensoTooltipState _value;
  // ignore: unused_field
  final $Res Function(SensoTooltipState) _then;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({bool enabled, TooltipTrigger tooltipTrigger});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SensoTooltipStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? enabled = freezed,
    Object? tooltipTrigger = freezed,
  }) {
    return _then(_$_Loaded(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      tooltipTrigger: tooltipTrigger == freezed
          ? _value.tooltipTrigger
          : tooltipTrigger // ignore: cast_nullable_to_non_nullable
              as TooltipTrigger,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.enabled, required this.tooltipTrigger});

  @override
  final bool enabled;
  @override
  final TooltipTrigger tooltipTrigger;

  @override
  String toString() {
    return 'SensoTooltipState.loaded(enabled: $enabled, tooltipTrigger: $tooltipTrigger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other.enabled, enabled) &&
            const DeepCollectionEquality()
                .equals(other.tooltipTrigger, tooltipTrigger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enabled),
      const DeepCollectionEquality().hash(tooltipTrigger));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool enabled, TooltipTrigger tooltipTrigger)
        loaded,
    required TResult Function() loading,
  }) {
    return loaded(enabled, tooltipTrigger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
  }) {
    return loaded?.call(enabled, tooltipTrigger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(enabled, tooltipTrigger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SensoTooltipState {
  const factory _Loaded(
      {required final bool enabled,
      required final TooltipTrigger tooltipTrigger}) = _$_Loaded;

  bool get enabled;
  TooltipTrigger get tooltipTrigger;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SensoTooltipStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SensoTooltipState.loading()';
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
    required TResult Function(bool enabled, TooltipTrigger tooltipTrigger)
        loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool enabled, TooltipTrigger tooltipTrigger)? loaded,
    TResult Function()? loading,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SensoTooltipState {
  const factory _Loading() = _$_Loading;
}
