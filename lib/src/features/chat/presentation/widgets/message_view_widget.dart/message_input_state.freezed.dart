// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfocused,
    required TResult Function(dynamic showSend) hasFocus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unfocused value) unfocused,
    required TResult Function(_HasFocus value) hasFocus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInputStateCopyWith<$Res> {
  factory $MessageInputStateCopyWith(
          MessageInputState value, $Res Function(MessageInputState) then) =
      _$MessageInputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputStateCopyWith<$Res> {
  _$MessageInputStateCopyWithImpl(this._value, this._then);

  final MessageInputState _value;
  // ignore: unused_field
  final $Res Function(MessageInputState) _then;
}

/// @nodoc
abstract class _$$_UnfocusedCopyWith<$Res> {
  factory _$$_UnfocusedCopyWith(
          _$_Unfocused value, $Res Function(_$_Unfocused) then) =
      __$$_UnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnfocusedCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements _$$_UnfocusedCopyWith<$Res> {
  __$$_UnfocusedCopyWithImpl(
      _$_Unfocused _value, $Res Function(_$_Unfocused) _then)
      : super(_value, (v) => _then(v as _$_Unfocused));

  @override
  _$_Unfocused get _value => super._value as _$_Unfocused;
}

/// @nodoc

class _$_Unfocused extends _Unfocused {
  _$_Unfocused() : super._();

  @override
  String toString() {
    return 'MessageInputState.unfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfocused,
    required TResult Function(dynamic showSend) hasFocus,
  }) {
    return unfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
  }) {
    return unfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
    required TResult orElse(),
  }) {
    if (unfocused != null) {
      return unfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unfocused value) unfocused,
    required TResult Function(_HasFocus value) hasFocus,
  }) {
    return unfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
  }) {
    return unfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
    required TResult orElse(),
  }) {
    if (unfocused != null) {
      return unfocused(this);
    }
    return orElse();
  }
}

abstract class _Unfocused extends MessageInputState {
  factory _Unfocused() = _$_Unfocused;
  _Unfocused._() : super._();
}

/// @nodoc
abstract class _$$_HasFocusCopyWith<$Res> {
  factory _$$_HasFocusCopyWith(
          _$_HasFocus value, $Res Function(_$_HasFocus) then) =
      __$$_HasFocusCopyWithImpl<$Res>;
  $Res call({dynamic showSend});
}

/// @nodoc
class __$$_HasFocusCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements _$$_HasFocusCopyWith<$Res> {
  __$$_HasFocusCopyWithImpl(
      _$_HasFocus _value, $Res Function(_$_HasFocus) _then)
      : super(_value, (v) => _then(v as _$_HasFocus));

  @override
  _$_HasFocus get _value => super._value as _$_HasFocus;

  @override
  $Res call({
    Object? showSend = freezed,
  }) {
    return _then(_$_HasFocus(
      showSend: showSend == freezed ? _value.showSend : showSend,
    ));
  }
}

/// @nodoc

class _$_HasFocus extends _HasFocus {
  _$_HasFocus({this.showSend = false}) : super._();

  @override
  @JsonKey()
  final dynamic showSend;

  @override
  String toString() {
    return 'MessageInputState.hasFocus(showSend: $showSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasFocus &&
            const DeepCollectionEquality().equals(other.showSend, showSend));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(showSend));

  @JsonKey(ignore: true)
  @override
  _$$_HasFocusCopyWith<_$_HasFocus> get copyWith =>
      __$$_HasFocusCopyWithImpl<_$_HasFocus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unfocused,
    required TResult Function(dynamic showSend) hasFocus,
  }) {
    return hasFocus(showSend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
  }) {
    return hasFocus?.call(showSend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unfocused,
    TResult Function(dynamic showSend)? hasFocus,
    required TResult orElse(),
  }) {
    if (hasFocus != null) {
      return hasFocus(showSend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unfocused value) unfocused,
    required TResult Function(_HasFocus value) hasFocus,
  }) {
    return hasFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
  }) {
    return hasFocus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unfocused value)? unfocused,
    TResult Function(_HasFocus value)? hasFocus,
    required TResult orElse(),
  }) {
    if (hasFocus != null) {
      return hasFocus(this);
    }
    return orElse();
  }
}

abstract class _HasFocus extends MessageInputState {
  factory _HasFocus({final dynamic showSend}) = _$_HasFocus;
  _HasFocus._() : super._();

  dynamic get showSend;
  @JsonKey(ignore: true)
  _$$_HasFocusCopyWith<_$_HasFocus> get copyWith =>
      throw _privateConstructorUsedError;
}
