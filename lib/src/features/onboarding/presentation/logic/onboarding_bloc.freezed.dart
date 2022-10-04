// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  $Res call({String externalId});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;

  @override
  $Res call({
    Object? externalId = freezed,
  }) {
    return _then(_$_Init(
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required this.externalId});

  @override
  final String externalId;

  @override
  String toString() {
    return 'OnboardingEvent.init(externalId: $externalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            const DeepCollectionEquality()
                .equals(other.externalId, externalId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(externalId));

  @JsonKey(ignore: true)
  @override
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return init(externalId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return init?.call(externalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(externalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements OnboardingEvent {
  const factory _Init({required final String externalId}) = _$_Init;

  String get externalId;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowLicenceCopyWith<$Res> {
  factory _$$_ShowLicenceCopyWith(
          _$_ShowLicence value, $Res Function(_$_ShowLicence) then) =
      __$$_ShowLicenceCopyWithImpl<$Res>;
  $Res call({Licence licence});
}

/// @nodoc
class __$$_ShowLicenceCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_ShowLicenceCopyWith<$Res> {
  __$$_ShowLicenceCopyWithImpl(
      _$_ShowLicence _value, $Res Function(_$_ShowLicence) _then)
      : super(_value, (v) => _then(v as _$_ShowLicence));

  @override
  _$_ShowLicence get _value => super._value as _$_ShowLicence;

  @override
  $Res call({
    Object? licence = freezed,
  }) {
    return _then(_$_ShowLicence(
      licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as Licence,
    ));
  }
}

/// @nodoc

class _$_ShowLicence implements _ShowLicence {
  const _$_ShowLicence(this.licence);

  @override
  final Licence licence;

  @override
  String toString() {
    return 'OnboardingEvent.showLicence(licence: $licence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowLicence &&
            const DeepCollectionEquality().equals(other.licence, licence));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(licence));

  @JsonKey(ignore: true)
  @override
  _$$_ShowLicenceCopyWith<_$_ShowLicence> get copyWith =>
      __$$_ShowLicenceCopyWithImpl<_$_ShowLicence>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return showLicence(licence);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return showLicence?.call(licence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (showLicence != null) {
      return showLicence(licence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return showLicence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return showLicence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (showLicence != null) {
      return showLicence(this);
    }
    return orElse();
  }
}

abstract class _ShowLicence implements OnboardingEvent {
  const factory _ShowLicence(final Licence licence) = _$_ShowLicence;

  Licence get licence;
  @JsonKey(ignore: true)
  _$$_ShowLicenceCopyWith<_$_ShowLicence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptLicencesCopyWith<$Res> {
  factory _$$_AcceptLicencesCopyWith(
          _$_AcceptLicences value, $Res Function(_$_AcceptLicences) then) =
      __$$_AcceptLicencesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcceptLicencesCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_AcceptLicencesCopyWith<$Res> {
  __$$_AcceptLicencesCopyWithImpl(
      _$_AcceptLicences _value, $Res Function(_$_AcceptLicences) _then)
      : super(_value, (v) => _then(v as _$_AcceptLicences));

  @override
  _$_AcceptLicences get _value => super._value as _$_AcceptLicences;
}

/// @nodoc

class _$_AcceptLicences implements _AcceptLicences {
  const _$_AcceptLicences();

  @override
  String toString() {
    return 'OnboardingEvent.acceptLicences()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcceptLicences);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return acceptLicences();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return acceptLicences?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (acceptLicences != null) {
      return acceptLicences();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return acceptLicences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return acceptLicences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (acceptLicences != null) {
      return acceptLicences(this);
    }
    return orElse();
  }
}

abstract class _AcceptLicences implements OnboardingEvent {
  const factory _AcceptLicences() = _$_AcceptLicences;
}

/// @nodoc
abstract class _$$_BackToMainCopyWith<$Res> {
  factory _$$_BackToMainCopyWith(
          _$_BackToMain value, $Res Function(_$_BackToMain) then) =
      __$$_BackToMainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackToMainCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_BackToMainCopyWith<$Res> {
  __$$_BackToMainCopyWithImpl(
      _$_BackToMain _value, $Res Function(_$_BackToMain) _then)
      : super(_value, (v) => _then(v as _$_BackToMain));

  @override
  _$_BackToMain get _value => super._value as _$_BackToMain;
}

/// @nodoc

class _$_BackToMain implements _BackToMain {
  const _$_BackToMain();

  @override
  String toString() {
    return 'OnboardingEvent.backToMain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BackToMain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return backToMain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return backToMain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (backToMain != null) {
      return backToMain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return backToMain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return backToMain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (backToMain != null) {
      return backToMain(this);
    }
    return orElse();
  }
}

abstract class _BackToMain implements OnboardingEvent {
  const factory _BackToMain() = _$_BackToMain;
}

/// @nodoc
abstract class _$$_ShowInputCopyWith<$Res> {
  factory _$$_ShowInputCopyWith(
          _$_ShowInput value, $Res Function(_$_ShowInput) then) =
      __$$_ShowInputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowInputCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_ShowInputCopyWith<$Res> {
  __$$_ShowInputCopyWithImpl(
      _$_ShowInput _value, $Res Function(_$_ShowInput) _then)
      : super(_value, (v) => _then(v as _$_ShowInput));

  @override
  _$_ShowInput get _value => super._value as _$_ShowInput;
}

/// @nodoc

class _$_ShowInput implements _ShowInput {
  const _$_ShowInput();

  @override
  String toString() {
    return 'OnboardingEvent.showInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return showInput();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return showInput?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (showInput != null) {
      return showInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return showInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return showInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (showInput != null) {
      return showInput(this);
    }
    return orElse();
  }
}

abstract class _ShowInput implements OnboardingEvent {
  const factory _ShowInput() = _$_ShowInput;
}

/// @nodoc
abstract class _$$_SubmitInputCopyWith<$Res> {
  factory _$$_SubmitInputCopyWith(
          _$_SubmitInput value, $Res Function(_$_SubmitInput) then) =
      __$$_SubmitInputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitInputCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_SubmitInputCopyWith<$Res> {
  __$$_SubmitInputCopyWithImpl(
      _$_SubmitInput _value, $Res Function(_$_SubmitInput) _then)
      : super(_value, (v) => _then(v as _$_SubmitInput));

  @override
  _$_SubmitInput get _value => super._value as _$_SubmitInput;
}

/// @nodoc

class _$_SubmitInput implements _SubmitInput {
  const _$_SubmitInput();

  @override
  String toString() {
    return 'OnboardingEvent.submitInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return submitInput();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return submitInput?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (submitInput != null) {
      return submitInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return submitInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return submitInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (submitInput != null) {
      return submitInput(this);
    }
    return orElse();
  }
}

abstract class _SubmitInput implements OnboardingEvent {
  const factory _SubmitInput() = _$_SubmitInput;
}

/// @nodoc
abstract class _$$_SubmitFormCopyWith<$Res> {
  factory _$$_SubmitFormCopyWith(
          _$_SubmitForm value, $Res Function(_$_SubmitForm) then) =
      __$$_SubmitFormCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$$_SubmitFormCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_SubmitFormCopyWith<$Res> {
  __$$_SubmitFormCopyWithImpl(
      _$_SubmitForm _value, $Res Function(_$_SubmitForm) _then)
      : super(_value, (v) => _then(v as _$_SubmitForm));

  @override
  _$_SubmitForm get _value => super._value as _$_SubmitForm;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$_SubmitForm(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitForm implements _SubmitForm {
  const _$_SubmitForm({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'OnboardingEvent.submitForm(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitForm &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitFormCopyWith<_$_SubmitForm> get copyWith =>
      __$$_SubmitFormCopyWithImpl<_$_SubmitForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return submitForm(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return submitForm?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return submitForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(this);
    }
    return orElse();
  }
}

abstract class _SubmitForm implements OnboardingEvent {
  const factory _SubmitForm({required final String userName}) = _$_SubmitForm;

  String get userName;
  @JsonKey(ignore: true)
  _$$_SubmitFormCopyWith<_$_SubmitForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackToFormCopyWith<$Res> {
  factory _$$_BackToFormCopyWith(
          _$_BackToForm value, $Res Function(_$_BackToForm) then) =
      __$$_BackToFormCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$$_BackToFormCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_BackToFormCopyWith<$Res> {
  __$$_BackToFormCopyWithImpl(
      _$_BackToForm _value, $Res Function(_$_BackToForm) _then)
      : super(_value, (v) => _then(v as _$_BackToForm));

  @override
  _$_BackToForm get _value => super._value as _$_BackToForm;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$_BackToForm(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BackToForm implements _BackToForm {
  const _$_BackToForm({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'OnboardingEvent.backToForm(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackToForm &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_BackToFormCopyWith<_$_BackToForm> get copyWith =>
      __$$_BackToFormCopyWithImpl<_$_BackToForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return backToForm(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return backToForm?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (backToForm != null) {
      return backToForm(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return backToForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return backToForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (backToForm != null) {
      return backToForm(this);
    }
    return orElse();
  }
}

abstract class _BackToForm implements OnboardingEvent {
  const factory _BackToForm({required final String userName}) = _$_BackToForm;

  String get userName;
  @JsonKey(ignore: true)
  _$$_BackToFormCopyWith<_$_BackToForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectAvatarCopyWith<$Res> {
  factory _$$_SelectAvatarCopyWith(
          _$_SelectAvatar value, $Res Function(_$_SelectAvatar) then) =
      __$$_SelectAvatarCopyWithImpl<$Res>;
  $Res call({List<Avatar> avatars, Avatar selectedAvatar, String userName});
}

/// @nodoc
class __$$_SelectAvatarCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_SelectAvatarCopyWith<$Res> {
  __$$_SelectAvatarCopyWithImpl(
      _$_SelectAvatar _value, $Res Function(_$_SelectAvatar) _then)
      : super(_value, (v) => _then(v as _$_SelectAvatar));

  @override
  _$_SelectAvatar get _value => super._value as _$_SelectAvatar;

  @override
  $Res call({
    Object? avatars = freezed,
    Object? selectedAvatar = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_SelectAvatar(
      avatars: avatars == freezed
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<Avatar>,
      selectedAvatar: selectedAvatar == freezed
          ? _value.selectedAvatar
          : selectedAvatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectAvatar implements _SelectAvatar {
  const _$_SelectAvatar(
      {required final List<Avatar> avatars,
      required this.selectedAvatar,
      required this.userName})
      : _avatars = avatars;

  final List<Avatar> _avatars;
  @override
  List<Avatar> get avatars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  @override
  final Avatar selectedAvatar;
  @override
  final String userName;

  @override
  String toString() {
    return 'OnboardingEvent.selectAvatar(avatars: $avatars, selectedAvatar: $selectedAvatar, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAvatar &&
            const DeepCollectionEquality().equals(other._avatars, _avatars) &&
            const DeepCollectionEquality()
                .equals(other.selectedAvatar, selectedAvatar) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_avatars),
      const DeepCollectionEquality().hash(selectedAvatar),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_SelectAvatarCopyWith<_$_SelectAvatar> get copyWith =>
      __$$_SelectAvatarCopyWithImpl<_$_SelectAvatar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return selectAvatar(avatars, selectedAvatar, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return selectAvatar?.call(avatars, selectedAvatar, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (selectAvatar != null) {
      return selectAvatar(avatars, selectedAvatar, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return selectAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return selectAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (selectAvatar != null) {
      return selectAvatar(this);
    }
    return orElse();
  }
}

abstract class _SelectAvatar implements OnboardingEvent {
  const factory _SelectAvatar(
      {required final List<Avatar> avatars,
      required final Avatar selectedAvatar,
      required final String userName}) = _$_SelectAvatar;

  List<Avatar> get avatars;
  Avatar get selectedAvatar;
  String get userName;
  @JsonKey(ignore: true)
  _$$_SelectAvatarCopyWith<_$_SelectAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitAvatarCopyWith<$Res> {
  factory _$$_SubmitAvatarCopyWith(
          _$_SubmitAvatar value, $Res Function(_$_SubmitAvatar) then) =
      __$$_SubmitAvatarCopyWithImpl<$Res>;
  $Res call({Avatar selectedAvatar, List<Avatar> avatars, String userName});
}

/// @nodoc
class __$$_SubmitAvatarCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_SubmitAvatarCopyWith<$Res> {
  __$$_SubmitAvatarCopyWithImpl(
      _$_SubmitAvatar _value, $Res Function(_$_SubmitAvatar) _then)
      : super(_value, (v) => _then(v as _$_SubmitAvatar));

  @override
  _$_SubmitAvatar get _value => super._value as _$_SubmitAvatar;

  @override
  $Res call({
    Object? selectedAvatar = freezed,
    Object? avatars = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_SubmitAvatar(
      selectedAvatar: selectedAvatar == freezed
          ? _value.selectedAvatar
          : selectedAvatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      avatars: avatars == freezed
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<Avatar>,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitAvatar implements _SubmitAvatar {
  const _$_SubmitAvatar(
      {required this.selectedAvatar,
      required final List<Avatar> avatars,
      required this.userName})
      : _avatars = avatars;

  @override
  final Avatar selectedAvatar;
  final List<Avatar> _avatars;
  @override
  List<Avatar> get avatars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  @override
  final String userName;

  @override
  String toString() {
    return 'OnboardingEvent.submitAvatar(selectedAvatar: $selectedAvatar, avatars: $avatars, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitAvatar &&
            const DeepCollectionEquality()
                .equals(other.selectedAvatar, selectedAvatar) &&
            const DeepCollectionEquality().equals(other._avatars, _avatars) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedAvatar),
      const DeepCollectionEquality().hash(_avatars),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitAvatarCopyWith<_$_SubmitAvatar> get copyWith =>
      __$$_SubmitAvatarCopyWithImpl<_$_SubmitAvatar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalId) init,
    required TResult Function(Licence licence) showLicence,
    required TResult Function() acceptLicences,
    required TResult Function() backToMain,
    required TResult Function() showInput,
    required TResult Function() submitInput,
    required TResult Function(String userName) submitForm,
    required TResult Function(String userName) backToForm,
    required TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)
        selectAvatar,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        submitAvatar,
  }) {
    return submitAvatar(selectedAvatar, avatars, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
  }) {
    return submitAvatar?.call(selectedAvatar, avatars, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalId)? init,
    TResult Function(Licence licence)? showLicence,
    TResult Function()? acceptLicences,
    TResult Function()? backToMain,
    TResult Function()? showInput,
    TResult Function()? submitInput,
    TResult Function(String userName)? submitForm,
    TResult Function(String userName)? backToForm,
    TResult Function(
            List<Avatar> avatars, Avatar selectedAvatar, String userName)?
        selectAvatar,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        submitAvatar,
    required TResult orElse(),
  }) {
    if (submitAvatar != null) {
      return submitAvatar(selectedAvatar, avatars, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ShowLicence value) showLicence,
    required TResult Function(_AcceptLicences value) acceptLicences,
    required TResult Function(_BackToMain value) backToMain,
    required TResult Function(_ShowInput value) showInput,
    required TResult Function(_SubmitInput value) submitInput,
    required TResult Function(_SubmitForm value) submitForm,
    required TResult Function(_BackToForm value) backToForm,
    required TResult Function(_SelectAvatar value) selectAvatar,
    required TResult Function(_SubmitAvatar value) submitAvatar,
  }) {
    return submitAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
  }) {
    return submitAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ShowLicence value)? showLicence,
    TResult Function(_AcceptLicences value)? acceptLicences,
    TResult Function(_BackToMain value)? backToMain,
    TResult Function(_ShowInput value)? showInput,
    TResult Function(_SubmitInput value)? submitInput,
    TResult Function(_SubmitForm value)? submitForm,
    TResult Function(_BackToForm value)? backToForm,
    TResult Function(_SelectAvatar value)? selectAvatar,
    TResult Function(_SubmitAvatar value)? submitAvatar,
    required TResult orElse(),
  }) {
    if (submitAvatar != null) {
      return submitAvatar(this);
    }
    return orElse();
  }
}

abstract class _SubmitAvatar implements OnboardingEvent {
  const factory _SubmitAvatar(
      {required final Avatar selectedAvatar,
      required final List<Avatar> avatars,
      required final String userName}) = _$_SubmitAvatar;

  Avatar get selectedAvatar;
  List<Avatar> get avatars;
  String get userName;
  @JsonKey(ignore: true)
  _$$_SubmitAvatarCopyWith<_$_SubmitAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
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
    return 'OnboardingState.loading()';
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
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
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
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OnboardingState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_MainCopyWith<$Res> {
  factory _$$_MainCopyWith(_$_Main value, $Res Function(_$_Main) then) =
      __$$_MainCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_MainCopyWith<$Res> {
  __$$_MainCopyWithImpl(_$_Main _value, $Res Function(_$_Main) _then)
      : super(_value, (v) => _then(v as _$_Main));

  @override
  _$_Main get _value => super._value as _$_Main;
}

/// @nodoc

class _$_Main implements _Main {
  _$_Main();

  @override
  String toString() {
    return 'OnboardingState.main()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Main);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return main();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return main?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return main(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return main?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (main != null) {
      return main(this);
    }
    return orElse();
  }
}

abstract class _Main implements OnboardingState {
  factory _Main() = _$_Main;
}

/// @nodoc
abstract class _$$_ShowChatCopyWith<$Res> {
  factory _$$_ShowChatCopyWith(
          _$_ShowChat value, $Res Function(_$_ShowChat) then) =
      __$$_ShowChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowChatCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_ShowChatCopyWith<$Res> {
  __$$_ShowChatCopyWithImpl(
      _$_ShowChat _value, $Res Function(_$_ShowChat) _then)
      : super(_value, (v) => _then(v as _$_ShowChat));

  @override
  _$_ShowChat get _value => super._value as _$_ShowChat;
}

/// @nodoc

class _$_ShowChat implements _ShowChat {
  _$_ShowChat();

  @override
  String toString() {
    return 'OnboardingState.showChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return showChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return showChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (showChat != null) {
      return showChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return showChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return showChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (showChat != null) {
      return showChat(this);
    }
    return orElse();
  }
}

abstract class _ShowChat implements OnboardingState {
  factory _ShowChat() = _$_ShowChat;
}

/// @nodoc
abstract class _$$_LicenceDetailsCopyWith<$Res> {
  factory _$$_LicenceDetailsCopyWith(
          _$_LicenceDetails value, $Res Function(_$_LicenceDetails) then) =
      __$$_LicenceDetailsCopyWithImpl<$Res>;
  $Res call({String licenceText});
}

/// @nodoc
class __$$_LicenceDetailsCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_LicenceDetailsCopyWith<$Res> {
  __$$_LicenceDetailsCopyWithImpl(
      _$_LicenceDetails _value, $Res Function(_$_LicenceDetails) _then)
      : super(_value, (v) => _then(v as _$_LicenceDetails));

  @override
  _$_LicenceDetails get _value => super._value as _$_LicenceDetails;

  @override
  $Res call({
    Object? licenceText = freezed,
  }) {
    return _then(_$_LicenceDetails(
      licenceText: licenceText == freezed
          ? _value.licenceText
          : licenceText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LicenceDetails implements _LicenceDetails {
  _$_LicenceDetails({required this.licenceText});

  @override
  final String licenceText;

  @override
  String toString() {
    return 'OnboardingState.licenceDetails(licenceText: $licenceText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicenceDetails &&
            const DeepCollectionEquality()
                .equals(other.licenceText, licenceText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(licenceText));

  @JsonKey(ignore: true)
  @override
  _$$_LicenceDetailsCopyWith<_$_LicenceDetails> get copyWith =>
      __$$_LicenceDetailsCopyWithImpl<_$_LicenceDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return licenceDetails(licenceText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return licenceDetails?.call(licenceText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (licenceDetails != null) {
      return licenceDetails(licenceText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return licenceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return licenceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (licenceDetails != null) {
      return licenceDetails(this);
    }
    return orElse();
  }
}

abstract class _LicenceDetails implements OnboardingState {
  factory _LicenceDetails({required final String licenceText}) =
      _$_LicenceDetails;

  String get licenceText;
  @JsonKey(ignore: true)
  _$$_LicenceDetailsCopyWith<_$_LicenceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormCopyWith<$Res> {
  factory _$$_FormCopyWith(_$_Form value, $Res Function(_$_Form) then) =
      __$$_FormCopyWithImpl<$Res>;
  $Res call({String userName, String? errorDescription});
}

/// @nodoc
class __$$_FormCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_FormCopyWith<$Res> {
  __$$_FormCopyWithImpl(_$_Form _value, $Res Function(_$_Form) _then)
      : super(_value, (v) => _then(v as _$_Form));

  @override
  _$_Form get _value => super._value as _$_Form;

  @override
  $Res call({
    Object? userName = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_$_Form(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      errorDescription: errorDescription == freezed
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Form implements _Form {
  _$_Form({required this.userName, this.errorDescription});

  @override
  final String userName;
  @override
  final String? errorDescription;

  @override
  String toString() {
    return 'OnboardingState.form(userName: $userName, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Form &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.errorDescription, errorDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(errorDescription));

  @JsonKey(ignore: true)
  @override
  _$$_FormCopyWith<_$_Form> get copyWith =>
      __$$_FormCopyWithImpl<_$_Form>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return form(userName, errorDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return form?.call(userName, errorDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(userName, errorDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return form(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return form?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class _Form implements OnboardingState {
  factory _Form(
      {required final String userName,
      final String? errorDescription}) = _$_Form;

  String get userName;
  String? get errorDescription;
  @JsonKey(ignore: true)
  _$$_FormCopyWith<_$_Form> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputCopyWith<$Res> {
  factory _$$_InputCopyWith(_$_Input value, $Res Function(_$_Input) then) =
      __$$_InputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_InputCopyWith<$Res> {
  __$$_InputCopyWithImpl(_$_Input _value, $Res Function(_$_Input) _then)
      : super(_value, (v) => _then(v as _$_Input));

  @override
  _$_Input get _value => super._value as _$_Input;
}

/// @nodoc

class _$_Input implements _Input {
  _$_Input();

  @override
  String toString() {
    return 'OnboardingState.input()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Input);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return input();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return input?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class _Input implements OnboardingState {
  factory _Input() = _$_Input;
}

/// @nodoc
abstract class _$$_AvatarPickerCopyWith<$Res> {
  factory _$$_AvatarPickerCopyWith(
          _$_AvatarPicker value, $Res Function(_$_AvatarPicker) then) =
      __$$_AvatarPickerCopyWithImpl<$Res>;
  $Res call({Avatar selectedAvatar, List<Avatar> avatars, String userName});
}

/// @nodoc
class __$$_AvatarPickerCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_AvatarPickerCopyWith<$Res> {
  __$$_AvatarPickerCopyWithImpl(
      _$_AvatarPicker _value, $Res Function(_$_AvatarPicker) _then)
      : super(_value, (v) => _then(v as _$_AvatarPicker));

  @override
  _$_AvatarPicker get _value => super._value as _$_AvatarPicker;

  @override
  $Res call({
    Object? selectedAvatar = freezed,
    Object? avatars = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_AvatarPicker(
      selectedAvatar: selectedAvatar == freezed
          ? _value.selectedAvatar
          : selectedAvatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      avatars: avatars == freezed
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<Avatar>,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AvatarPicker implements _AvatarPicker {
  _$_AvatarPicker(
      {required this.selectedAvatar,
      required final List<Avatar> avatars,
      required this.userName})
      : _avatars = avatars;

  @override
  final Avatar selectedAvatar;
  final List<Avatar> _avatars;
  @override
  List<Avatar> get avatars {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  @override
  final String userName;

  @override
  String toString() {
    return 'OnboardingState.avatarPicker(selectedAvatar: $selectedAvatar, avatars: $avatars, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvatarPicker &&
            const DeepCollectionEquality()
                .equals(other.selectedAvatar, selectedAvatar) &&
            const DeepCollectionEquality().equals(other._avatars, _avatars) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedAvatar),
      const DeepCollectionEquality().hash(_avatars),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_AvatarPickerCopyWith<_$_AvatarPicker> get copyWith =>
      __$$_AvatarPickerCopyWithImpl<_$_AvatarPicker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() main,
    required TResult Function() showChat,
    required TResult Function(String licenceText) licenceDetails,
    required TResult Function(String userName, String? errorDescription) form,
    required TResult Function() input,
    required TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)
        avatarPicker,
  }) {
    return avatarPicker(selectedAvatar, avatars, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
  }) {
    return avatarPicker?.call(selectedAvatar, avatars, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? main,
    TResult Function()? showChat,
    TResult Function(String licenceText)? licenceDetails,
    TResult Function(String userName, String? errorDescription)? form,
    TResult Function()? input,
    TResult Function(
            Avatar selectedAvatar, List<Avatar> avatars, String userName)?
        avatarPicker,
    required TResult orElse(),
  }) {
    if (avatarPicker != null) {
      return avatarPicker(selectedAvatar, avatars, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Main value) main,
    required TResult Function(_ShowChat value) showChat,
    required TResult Function(_LicenceDetails value) licenceDetails,
    required TResult Function(_Form value) form,
    required TResult Function(_Input value) input,
    required TResult Function(_AvatarPicker value) avatarPicker,
  }) {
    return avatarPicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
  }) {
    return avatarPicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Main value)? main,
    TResult Function(_ShowChat value)? showChat,
    TResult Function(_LicenceDetails value)? licenceDetails,
    TResult Function(_Form value)? form,
    TResult Function(_Input value)? input,
    TResult Function(_AvatarPicker value)? avatarPicker,
    required TResult orElse(),
  }) {
    if (avatarPicker != null) {
      return avatarPicker(this);
    }
    return orElse();
  }
}

abstract class _AvatarPicker implements OnboardingState {
  factory _AvatarPicker(
      {required final Avatar selectedAvatar,
      required final List<Avatar> avatars,
      required final String userName}) = _$_AvatarPicker;

  Avatar get selectedAvatar;
  List<Avatar> get avatars;
  String get userName;
  @JsonKey(ignore: true)
  _$$_AvatarPickerCopyWith<_$_AvatarPicker> get copyWith =>
      throw _privateConstructorUsedError;
}
