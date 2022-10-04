// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  $Res call({String externalRoomId});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;

  @override
  $Res call({
    Object? externalRoomId = freezed,
  }) {
    return _then(_$_Init(
      externalRoomId: externalRoomId == freezed
          ? _value.externalRoomId
          : externalRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required this.externalRoomId});

  @override
  final String externalRoomId;

  @override
  String toString() {
    return 'ChatEvent.init(externalRoomId: $externalRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            const DeepCollectionEquality()
                .equals(other.externalRoomId, externalRoomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(externalRoomId));

  @JsonKey(ignore: true)
  @override
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return init(externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return init?.call(externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(externalRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ChatEvent {
  const factory _Init({required final String externalRoomId}) = _$_Init;

  String get externalRoomId;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, (v) => _then(v as _$_SendMessage));

  @override
  _$_SendMessage get _value => super._value as _$_SendMessage;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SendMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return sendMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return sendMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage({required final String text}) = _$_SendMessage;

  String get text;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishLoadingCopyWith<$Res> {
  factory _$$_FinishLoadingCopyWith(
          _$_FinishLoading value, $Res Function(_$_FinishLoading) then) =
      __$$_FinishLoadingCopyWithImpl<$Res>;
  $Res call(
      {Message? pinnedMessage,
      List<Message> messages,
      List<Talker> talkers,
      Talker talker,
      String externalRoomId});
}

/// @nodoc
class __$$_FinishLoadingCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_FinishLoadingCopyWith<$Res> {
  __$$_FinishLoadingCopyWithImpl(
      _$_FinishLoading _value, $Res Function(_$_FinishLoading) _then)
      : super(_value, (v) => _then(v as _$_FinishLoading));

  @override
  _$_FinishLoading get _value => super._value as _$_FinishLoading;

  @override
  $Res call({
    Object? pinnedMessage = freezed,
    Object? messages = freezed,
    Object? talkers = freezed,
    Object? talker = freezed,
    Object? externalRoomId = freezed,
  }) {
    return _then(_$_FinishLoading(
      pinnedMessage: pinnedMessage == freezed
          ? _value.pinnedMessage
          : pinnedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
      talker: talker == freezed
          ? _value.talker
          : talker // ignore: cast_nullable_to_non_nullable
              as Talker,
      externalRoomId: externalRoomId == freezed
          ? _value.externalRoomId
          : externalRoomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FinishLoading implements _FinishLoading {
  const _$_FinishLoading(
      {this.pinnedMessage,
      required final List<Message> messages,
      required final List<Talker> talkers,
      required this.talker,
      required this.externalRoomId})
      : _messages = messages,
        _talkers = talkers;

  @override
  final Message? pinnedMessage;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  final Talker talker;
  @override
  final String externalRoomId;

  @override
  String toString() {
    return 'ChatEvent.finishLoading(pinnedMessage: $pinnedMessage, messages: $messages, talkers: $talkers, talker: $talker, externalRoomId: $externalRoomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinishLoading &&
            const DeepCollectionEquality()
                .equals(other.pinnedMessage, pinnedMessage) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._talkers, _talkers) &&
            const DeepCollectionEquality().equals(other.talker, talker) &&
            const DeepCollectionEquality()
                .equals(other.externalRoomId, externalRoomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pinnedMessage),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_talkers),
      const DeepCollectionEquality().hash(talker),
      const DeepCollectionEquality().hash(externalRoomId));

  @JsonKey(ignore: true)
  @override
  _$$_FinishLoadingCopyWith<_$_FinishLoading> get copyWith =>
      __$$_FinishLoadingCopyWithImpl<_$_FinishLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return finishLoading(
        pinnedMessage, messages, talkers, talker, externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return finishLoading?.call(
        pinnedMessage, messages, talkers, talker, externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (finishLoading != null) {
      return finishLoading(
          pinnedMessage, messages, talkers, talker, externalRoomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return finishLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return finishLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (finishLoading != null) {
      return finishLoading(this);
    }
    return orElse();
  }
}

abstract class _FinishLoading implements ChatEvent {
  const factory _FinishLoading(
      {final Message? pinnedMessage,
      required final List<Message> messages,
      required final List<Talker> talkers,
      required final Talker talker,
      required final String externalRoomId}) = _$_FinishLoading;

  Message? get pinnedMessage;
  List<Message> get messages;
  List<Talker> get talkers;
  Talker get talker;
  String get externalRoomId;
  @JsonKey(ignore: true)
  _$$_FinishLoadingCopyWith<_$_FinishLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchChatCopyWith<$Res> {
  factory _$$_FetchChatCopyWith(
          _$_FetchChat value, $Res Function(_$_FetchChat) then) =
      __$$_FetchChatCopyWithImpl<$Res>;
  $Res call(
      {String externalRoomId, List<Message> messages, List<Talker> talkers});
}

/// @nodoc
class __$$_FetchChatCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_FetchChatCopyWith<$Res> {
  __$$_FetchChatCopyWithImpl(
      _$_FetchChat _value, $Res Function(_$_FetchChat) _then)
      : super(_value, (v) => _then(v as _$_FetchChat));

  @override
  _$_FetchChat get _value => super._value as _$_FetchChat;

  @override
  $Res call({
    Object? externalRoomId = freezed,
    Object? messages = freezed,
    Object? talkers = freezed,
  }) {
    return _then(_$_FetchChat(
      externalRoomId: externalRoomId == freezed
          ? _value.externalRoomId
          : externalRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
    ));
  }
}

/// @nodoc

class _$_FetchChat implements _FetchChat {
  const _$_FetchChat(
      {required this.externalRoomId,
      required final List<Message> messages,
      required final List<Talker> talkers})
      : _messages = messages,
        _talkers = talkers;

  @override
  final String externalRoomId;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  String toString() {
    return 'ChatEvent.fetchChat(externalRoomId: $externalRoomId, messages: $messages, talkers: $talkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchChat &&
            const DeepCollectionEquality()
                .equals(other.externalRoomId, externalRoomId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._talkers, _talkers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(externalRoomId),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_talkers));

  @JsonKey(ignore: true)
  @override
  _$$_FetchChatCopyWith<_$_FetchChat> get copyWith =>
      __$$_FetchChatCopyWithImpl<_$_FetchChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return fetchChat(externalRoomId, messages, talkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return fetchChat?.call(externalRoomId, messages, talkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (fetchChat != null) {
      return fetchChat(externalRoomId, messages, talkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return fetchChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return fetchChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (fetchChat != null) {
      return fetchChat(this);
    }
    return orElse();
  }
}

abstract class _FetchChat implements ChatEvent {
  const factory _FetchChat(
      {required final String externalRoomId,
      required final List<Message> messages,
      required final List<Talker> talkers}) = _$_FetchChat;

  String get externalRoomId;
  List<Message> get messages;
  List<Talker> get talkers;
  @JsonKey(ignore: true)
  _$$_FetchChatCopyWith<_$_FetchChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowEmotionCopyWith<$Res> {
  factory _$$_ShowEmotionCopyWith(
          _$_ShowEmotion value, $Res Function(_$_ShowEmotion) then) =
      __$$_ShowEmotionCopyWithImpl<$Res>;
  $Res call({Emotion emotion, bool isMyEmotion});
}

/// @nodoc
class __$$_ShowEmotionCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_ShowEmotionCopyWith<$Res> {
  __$$_ShowEmotionCopyWithImpl(
      _$_ShowEmotion _value, $Res Function(_$_ShowEmotion) _then)
      : super(_value, (v) => _then(v as _$_ShowEmotion));

  @override
  _$_ShowEmotion get _value => super._value as _$_ShowEmotion;

  @override
  $Res call({
    Object? emotion = freezed,
    Object? isMyEmotion = freezed,
  }) {
    return _then(_$_ShowEmotion(
      emotion: emotion == freezed
          ? _value.emotion
          : emotion // ignore: cast_nullable_to_non_nullable
              as Emotion,
      isMyEmotion: isMyEmotion == freezed
          ? _value.isMyEmotion
          : isMyEmotion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowEmotion implements _ShowEmotion {
  const _$_ShowEmotion({required this.emotion, required this.isMyEmotion});

  @override
  final Emotion emotion;
  @override
  final bool isMyEmotion;

  @override
  String toString() {
    return 'ChatEvent.showEmotion(emotion: $emotion, isMyEmotion: $isMyEmotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowEmotion &&
            const DeepCollectionEquality().equals(other.emotion, emotion) &&
            const DeepCollectionEquality()
                .equals(other.isMyEmotion, isMyEmotion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emotion),
      const DeepCollectionEquality().hash(isMyEmotion));

  @JsonKey(ignore: true)
  @override
  _$$_ShowEmotionCopyWith<_$_ShowEmotion> get copyWith =>
      __$$_ShowEmotionCopyWithImpl<_$_ShowEmotion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return showEmotion(emotion, isMyEmotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return showEmotion?.call(emotion, isMyEmotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (showEmotion != null) {
      return showEmotion(emotion, isMyEmotion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return showEmotion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return showEmotion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (showEmotion != null) {
      return showEmotion(this);
    }
    return orElse();
  }
}

abstract class _ShowEmotion implements ChatEvent {
  const factory _ShowEmotion(
      {required final Emotion emotion,
      required final bool isMyEmotion}) = _$_ShowEmotion;

  Emotion get emotion;
  bool get isMyEmotion;
  @JsonKey(ignore: true)
  _$$_ShowEmotionCopyWith<_$_ShowEmotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MentionMessageCopyWith<$Res> {
  factory _$$_MentionMessageCopyWith(
          _$_MentionMessage value, $Res Function(_$_MentionMessage) then) =
      __$$_MentionMessageCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_MentionMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_MentionMessageCopyWith<$Res> {
  __$$_MentionMessageCopyWithImpl(
      _$_MentionMessage _value, $Res Function(_$_MentionMessage) _then)
      : super(_value, (v) => _then(v as _$_MentionMessage));

  @override
  _$_MentionMessage get _value => super._value as _$_MentionMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MentionMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_MentionMessage implements _MentionMessage {
  const _$_MentionMessage({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.mentionMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MentionMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MentionMessageCopyWith<_$_MentionMessage> get copyWith =>
      __$$_MentionMessageCopyWithImpl<_$_MentionMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return mentionMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return mentionMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (mentionMessage != null) {
      return mentionMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return mentionMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return mentionMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (mentionMessage != null) {
      return mentionMessage(this);
    }
    return orElse();
  }
}

abstract class _MentionMessage implements ChatEvent {
  const factory _MentionMessage({required final Message message}) =
      _$_MentionMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_MentionMessageCopyWith<_$_MentionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CopyMessageCopyWith<$Res> {
  factory _$$_CopyMessageCopyWith(
          _$_CopyMessage value, $Res Function(_$_CopyMessage) then) =
      __$$_CopyMessageCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_CopyMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_CopyMessageCopyWith<$Res> {
  __$$_CopyMessageCopyWithImpl(
      _$_CopyMessage _value, $Res Function(_$_CopyMessage) _then)
      : super(_value, (v) => _then(v as _$_CopyMessage));

  @override
  _$_CopyMessage get _value => super._value as _$_CopyMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_CopyMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_CopyMessage implements _CopyMessage {
  const _$_CopyMessage({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.copyMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_CopyMessageCopyWith<_$_CopyMessage> get copyWith =>
      __$$_CopyMessageCopyWithImpl<_$_CopyMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return copyMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return copyMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return copyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return copyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(this);
    }
    return orElse();
  }
}

abstract class _CopyMessage implements ChatEvent {
  const factory _CopyMessage({required final Message message}) = _$_CopyMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_CopyMessageCopyWith<_$_CopyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditMessageCopyWith<$Res> {
  factory _$$_EditMessageCopyWith(
          _$_EditMessage value, $Res Function(_$_EditMessage) then) =
      __$$_EditMessageCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_EditMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_EditMessageCopyWith<$Res> {
  __$$_EditMessageCopyWithImpl(
      _$_EditMessage _value, $Res Function(_$_EditMessage) _then)
      : super(_value, (v) => _then(v as _$_EditMessage));

  @override
  _$_EditMessage get _value => super._value as _$_EditMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_EditMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_EditMessage implements _EditMessage {
  const _$_EditMessage({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.editMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_EditMessageCopyWith<_$_EditMessage> get copyWith =>
      __$$_EditMessageCopyWithImpl<_$_EditMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return editMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return editMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return editMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return editMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (editMessage != null) {
      return editMessage(this);
    }
    return orElse();
  }
}

abstract class _EditMessage implements ChatEvent {
  const factory _EditMessage({required final Message message}) = _$_EditMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_EditMessageCopyWith<_$_EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseOverhangCopyWith<$Res> {
  factory _$$_CloseOverhangCopyWith(
          _$_CloseOverhang value, $Res Function(_$_CloseOverhang) then) =
      __$$_CloseOverhangCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseOverhangCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_CloseOverhangCopyWith<$Res> {
  __$$_CloseOverhangCopyWithImpl(
      _$_CloseOverhang _value, $Res Function(_$_CloseOverhang) _then)
      : super(_value, (v) => _then(v as _$_CloseOverhang));

  @override
  _$_CloseOverhang get _value => super._value as _$_CloseOverhang;
}

/// @nodoc

class _$_CloseOverhang implements _CloseOverhang {
  const _$_CloseOverhang();

  @override
  String toString() {
    return 'ChatEvent.closeOverhang()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseOverhang);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return closeOverhang();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return closeOverhang?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (closeOverhang != null) {
      return closeOverhang();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return closeOverhang(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return closeOverhang?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (closeOverhang != null) {
      return closeOverhang(this);
    }
    return orElse();
  }
}

abstract class _CloseOverhang implements ChatEvent {
  const factory _CloseOverhang() = _$_CloseOverhang;
}

/// @nodoc
abstract class _$$_DeleteMessageCopyWith<$Res> {
  factory _$$_DeleteMessageCopyWith(
          _$_DeleteMessage value, $Res Function(_$_DeleteMessage) then) =
      __$$_DeleteMessageCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_DeleteMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_DeleteMessageCopyWith<$Res> {
  __$$_DeleteMessageCopyWithImpl(
      _$_DeleteMessage _value, $Res Function(_$_DeleteMessage) _then)
      : super(_value, (v) => _then(v as _$_DeleteMessage));

  @override
  _$_DeleteMessage get _value => super._value as _$_DeleteMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_DeleteMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_DeleteMessage implements _DeleteMessage {
  const _$_DeleteMessage({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteMessageCopyWith<_$_DeleteMessage> get copyWith =>
      __$$_DeleteMessageCopyWithImpl<_$_DeleteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return deleteMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return deleteMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatEvent {
  const factory _DeleteMessage({required final Message message}) =
      _$_DeleteMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_DeleteMessageCopyWith<_$_DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateMessagesCopyWith<$Res> {
  factory _$$_UpdateMessagesCopyWith(
          _$_UpdateMessages value, $Res Function(_$_UpdateMessages) then) =
      __$$_UpdateMessagesCopyWithImpl<$Res>;
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$_UpdateMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_UpdateMessagesCopyWith<$Res> {
  __$$_UpdateMessagesCopyWithImpl(
      _$_UpdateMessages _value, $Res Function(_$_UpdateMessages) _then)
      : super(_value, (v) => _then(v as _$_UpdateMessages));

  @override
  _$_UpdateMessages get _value => super._value as _$_UpdateMessages;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$_UpdateMessages(
      messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_UpdateMessages implements _UpdateMessages {
  const _$_UpdateMessages(final List<Message> messages) : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.updateMessages(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateMessages &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateMessagesCopyWith<_$_UpdateMessages> get copyWith =>
      __$$_UpdateMessagesCopyWithImpl<_$_UpdateMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return updateMessages(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return updateMessages?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateMessages != null) {
      return updateMessages(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return updateMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return updateMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateMessages != null) {
      return updateMessages(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessages implements ChatEvent {
  const factory _UpdateMessages(final List<Message> messages) =
      _$_UpdateMessages;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$_UpdateMessagesCopyWith<_$_UpdateMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTalkersCopyWith<$Res> {
  factory _$$_UpdateTalkersCopyWith(
          _$_UpdateTalkers value, $Res Function(_$_UpdateTalkers) then) =
      __$$_UpdateTalkersCopyWithImpl<$Res>;
  $Res call({List<Talker> talkers});
}

/// @nodoc
class __$$_UpdateTalkersCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_UpdateTalkersCopyWith<$Res> {
  __$$_UpdateTalkersCopyWithImpl(
      _$_UpdateTalkers _value, $Res Function(_$_UpdateTalkers) _then)
      : super(_value, (v) => _then(v as _$_UpdateTalkers));

  @override
  _$_UpdateTalkers get _value => super._value as _$_UpdateTalkers;

  @override
  $Res call({
    Object? talkers = freezed,
  }) {
    return _then(_$_UpdateTalkers(
      talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
    ));
  }
}

/// @nodoc

class _$_UpdateTalkers implements _UpdateTalkers {
  const _$_UpdateTalkers(final List<Talker> talkers) : _talkers = talkers;

  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  @override
  String toString() {
    return 'ChatEvent.updateTalkers(talkers: $talkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTalkers &&
            const DeepCollectionEquality().equals(other._talkers, _talkers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_talkers));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTalkersCopyWith<_$_UpdateTalkers> get copyWith =>
      __$$_UpdateTalkersCopyWithImpl<_$_UpdateTalkers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return updateTalkers(talkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return updateTalkers?.call(talkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateTalkers != null) {
      return updateTalkers(talkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return updateTalkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return updateTalkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateTalkers != null) {
      return updateTalkers(this);
    }
    return orElse();
  }
}

abstract class _UpdateTalkers implements ChatEvent {
  const factory _UpdateTalkers(final List<Talker> talkers) = _$_UpdateTalkers;

  List<Talker> get talkers;
  @JsonKey(ignore: true)
  _$$_UpdateTalkersCopyWith<_$_UpdateTalkers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportMessageCopyWith<$Res> {
  factory _$$_ReportMessageCopyWith(
          _$_ReportMessage value, $Res Function(_$_ReportMessage) then) =
      __$$_ReportMessageCopyWithImpl<$Res>;
  $Res call({BuildContext context, Message message});
}

/// @nodoc
class __$$_ReportMessageCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_ReportMessageCopyWith<$Res> {
  __$$_ReportMessageCopyWithImpl(
      _$_ReportMessage _value, $Res Function(_$_ReportMessage) _then)
      : super(_value, (v) => _then(v as _$_ReportMessage));

  @override
  _$_ReportMessage get _value => super._value as _$_ReportMessage;

  @override
  $Res call({
    Object? context = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ReportMessage(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_ReportMessage implements _ReportMessage {
  const _$_ReportMessage({required this.context, required this.message});

  @override
  final BuildContext context;
  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.reportMessage(context: $context, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportMessage &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ReportMessageCopyWith<_$_ReportMessage> get copyWith =>
      __$$_ReportMessageCopyWithImpl<_$_ReportMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return reportMessage(context, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return reportMessage?.call(context, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (reportMessage != null) {
      return reportMessage(context, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return reportMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return reportMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (reportMessage != null) {
      return reportMessage(this);
    }
    return orElse();
  }
}

abstract class _ReportMessage implements ChatEvent {
  const factory _ReportMessage(
      {required final BuildContext context,
      required final Message message}) = _$_ReportMessage;

  BuildContext get context;
  Message get message;
  @JsonKey(ignore: true)
  _$$_ReportMessageCopyWith<_$_ReportMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BlockUserCopyWith<$Res> {
  factory _$$_BlockUserCopyWith(
          _$_BlockUser value, $Res Function(_$_BlockUser) then) =
      __$$_BlockUserCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_BlockUserCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_BlockUserCopyWith<$Res> {
  __$$_BlockUserCopyWithImpl(
      _$_BlockUser _value, $Res Function(_$_BlockUser) _then)
      : super(_value, (v) => _then(v as _$_BlockUser));

  @override
  _$_BlockUser get _value => super._value as _$_BlockUser;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BlockUser(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_BlockUser implements _BlockUser {
  const _$_BlockUser({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.blockUser(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockUser &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_BlockUserCopyWith<_$_BlockUser> get copyWith =>
      __$$_BlockUserCopyWithImpl<_$_BlockUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return blockUser(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return blockUser?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return blockUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return blockUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class _BlockUser implements ChatEvent {
  const factory _BlockUser({required final Message message}) = _$_BlockUser;

  Message get message;
  @JsonKey(ignore: true)
  _$$_BlockUserCopyWith<_$_BlockUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeMessageVisibilityCopyWith<$Res> {
  factory _$$_ChangeMessageVisibilityCopyWith(_$_ChangeMessageVisibility value,
          $Res Function(_$_ChangeMessageVisibility) then) =
      __$$_ChangeMessageVisibilityCopyWithImpl<$Res>;
  $Res call({Message message, bool isVisible});
}

/// @nodoc
class __$$_ChangeMessageVisibilityCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_ChangeMessageVisibilityCopyWith<$Res> {
  __$$_ChangeMessageVisibilityCopyWithImpl(_$_ChangeMessageVisibility _value,
      $Res Function(_$_ChangeMessageVisibility) _then)
      : super(_value, (v) => _then(v as _$_ChangeMessageVisibility));

  @override
  _$_ChangeMessageVisibility get _value =>
      super._value as _$_ChangeMessageVisibility;

  @override
  $Res call({
    Object? message = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$_ChangeMessageVisibility(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeMessageVisibility implements _ChangeMessageVisibility {
  const _$_ChangeMessageVisibility(
      {required this.message, required this.isVisible});

  @override
  final Message message;
  @override
  final bool isVisible;

  @override
  String toString() {
    return 'ChatEvent.changeMessageVisibility(message: $message, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMessageVisibility &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeMessageVisibilityCopyWith<_$_ChangeMessageVisibility>
      get copyWith =>
          __$$_ChangeMessageVisibilityCopyWithImpl<_$_ChangeMessageVisibility>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return changeMessageVisibility(message, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return changeMessageVisibility?.call(message, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (changeMessageVisibility != null) {
      return changeMessageVisibility(message, isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return changeMessageVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return changeMessageVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (changeMessageVisibility != null) {
      return changeMessageVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeMessageVisibility implements ChatEvent {
  const factory _ChangeMessageVisibility(
      {required final Message message,
      required final bool isVisible}) = _$_ChangeMessageVisibility;

  Message get message;
  bool get isVisible;
  @JsonKey(ignore: true)
  _$$_ChangeMessageVisibilityCopyWith<_$_ChangeMessageVisibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeMessagesVisibilityCopyWith<$Res> {
  factory _$$_ChangeMessagesVisibilityCopyWith(
          _$_ChangeMessagesVisibility value,
          $Res Function(_$_ChangeMessagesVisibility) then) =
      __$$_ChangeMessagesVisibilityCopyWithImpl<$Res>;
  $Res call({Message message, bool isVisible});
}

/// @nodoc
class __$$_ChangeMessagesVisibilityCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_ChangeMessagesVisibilityCopyWith<$Res> {
  __$$_ChangeMessagesVisibilityCopyWithImpl(_$_ChangeMessagesVisibility _value,
      $Res Function(_$_ChangeMessagesVisibility) _then)
      : super(_value, (v) => _then(v as _$_ChangeMessagesVisibility));

  @override
  _$_ChangeMessagesVisibility get _value =>
      super._value as _$_ChangeMessagesVisibility;

  @override
  $Res call({
    Object? message = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$_ChangeMessagesVisibility(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeMessagesVisibility implements _ChangeMessagesVisibility {
  const _$_ChangeMessagesVisibility(
      {required this.message, required this.isVisible});

  @override
  final Message message;
  @override
  final bool isVisible;

  @override
  String toString() {
    return 'ChatEvent.changeMessagesVisibility(message: $message, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMessagesVisibility &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeMessagesVisibilityCopyWith<_$_ChangeMessagesVisibility>
      get copyWith => __$$_ChangeMessagesVisibilityCopyWithImpl<
          _$_ChangeMessagesVisibility>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return changeMessagesVisibility(message, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return changeMessagesVisibility?.call(message, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (changeMessagesVisibility != null) {
      return changeMessagesVisibility(message, isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return changeMessagesVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return changeMessagesVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (changeMessagesVisibility != null) {
      return changeMessagesVisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeMessagesVisibility implements ChatEvent {
  const factory _ChangeMessagesVisibility(
      {required final Message message,
      required final bool isVisible}) = _$_ChangeMessagesVisibility;

  Message get message;
  bool get isVisible;
  @JsonKey(ignore: true)
  _$$_ChangeMessagesVisibilityCopyWith<_$_ChangeMessagesVisibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetBanCopyWith<$Res> {
  factory _$$_SetBanCopyWith(_$_SetBan value, $Res Function(_$_SetBan) then) =
      __$$_SetBanCopyWithImpl<$Res>;
  $Res call({Message message, bool isBanned});
}

/// @nodoc
class __$$_SetBanCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_SetBanCopyWith<$Res> {
  __$$_SetBanCopyWithImpl(_$_SetBan _value, $Res Function(_$_SetBan) _then)
      : super(_value, (v) => _then(v as _$_SetBan));

  @override
  _$_SetBan get _value => super._value as _$_SetBan;

  @override
  $Res call({
    Object? message = freezed,
    Object? isBanned = freezed,
  }) {
    return _then(_$_SetBan(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      isBanned: isBanned == freezed
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetBan implements _SetBan {
  const _$_SetBan({required this.message, required this.isBanned});

  @override
  final Message message;
  @override
  final bool isBanned;

  @override
  String toString() {
    return 'ChatEvent.setBan(message: $message, isBanned: $isBanned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBan &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isBanned, isBanned));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isBanned));

  @JsonKey(ignore: true)
  @override
  _$$_SetBanCopyWith<_$_SetBan> get copyWith =>
      __$$_SetBanCopyWithImpl<_$_SetBan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return setBan(message, isBanned);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return setBan?.call(message, isBanned);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (setBan != null) {
      return setBan(message, isBanned);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return setBan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return setBan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (setBan != null) {
      return setBan(this);
    }
    return orElse();
  }
}

abstract class _SetBan implements ChatEvent {
  const factory _SetBan(
      {required final Message message,
      required final bool isBanned}) = _$_SetBan;

  Message get message;
  bool get isBanned;
  @JsonKey(ignore: true)
  _$$_SetBanCopyWith<_$_SetBan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTalkerCopyWith<$Res> {
  factory _$$_UpdateTalkerCopyWith(
          _$_UpdateTalker value, $Res Function(_$_UpdateTalker) then) =
      __$$_UpdateTalkerCopyWithImpl<$Res>;
  $Res call({Talker talker});
}

/// @nodoc
class __$$_UpdateTalkerCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_UpdateTalkerCopyWith<$Res> {
  __$$_UpdateTalkerCopyWithImpl(
      _$_UpdateTalker _value, $Res Function(_$_UpdateTalker) _then)
      : super(_value, (v) => _then(v as _$_UpdateTalker));

  @override
  _$_UpdateTalker get _value => super._value as _$_UpdateTalker;

  @override
  $Res call({
    Object? talker = freezed,
  }) {
    return _then(_$_UpdateTalker(
      talker == freezed
          ? _value.talker
          : talker // ignore: cast_nullable_to_non_nullable
              as Talker,
    ));
  }
}

/// @nodoc

class _$_UpdateTalker implements _UpdateTalker {
  const _$_UpdateTalker(this.talker);

  @override
  final Talker talker;

  @override
  String toString() {
    return 'ChatEvent.updateTalker(talker: $talker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTalker &&
            const DeepCollectionEquality().equals(other.talker, talker));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(talker));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTalkerCopyWith<_$_UpdateTalker> get copyWith =>
      __$$_UpdateTalkerCopyWithImpl<_$_UpdateTalker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return updateTalker(talker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return updateTalker?.call(talker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateTalker != null) {
      return updateTalker(talker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return updateTalker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return updateTalker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (updateTalker != null) {
      return updateTalker(this);
    }
    return orElse();
  }
}

abstract class _UpdateTalker implements ChatEvent {
  const factory _UpdateTalker(final Talker talker) = _$_UpdateTalker;

  Talker get talker;
  @JsonKey(ignore: true)
  _$$_UpdateTalkerCopyWith<_$_UpdateTalker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadMoreMessagesCopyWith<$Res> {
  factory _$$_LoadMoreMessagesCopyWith(
          _$_LoadMoreMessages value, $Res Function(_$_LoadMoreMessages) then) =
      __$$_LoadMoreMessagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreMessagesCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_LoadMoreMessagesCopyWith<$Res> {
  __$$_LoadMoreMessagesCopyWithImpl(
      _$_LoadMoreMessages _value, $Res Function(_$_LoadMoreMessages) _then)
      : super(_value, (v) => _then(v as _$_LoadMoreMessages));

  @override
  _$_LoadMoreMessages get _value => super._value as _$_LoadMoreMessages;
}

/// @nodoc

class _$_LoadMoreMessages implements _LoadMoreMessages {
  const _$_LoadMoreMessages();

  @override
  String toString() {
    return 'ChatEvent.loadMoreMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMoreMessages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(Message message) copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message) deleteMessage,
    required TResult Function(List<Message> messages) updateMessages,
    required TResult Function(List<Talker> talkers) updateTalkers,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(Message message) blockUser,
    required TResult Function(Message message, bool isVisible)
        changeMessageVisibility,
    required TResult Function(Message message, bool isVisible)
        changeMessagesVisibility,
    required TResult Function(Message message, bool isBanned) setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function() loadMoreMessages,
  }) {
    return loadMoreMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
  }) {
    return loadMoreMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(Message? pinnedMessage, List<Message> messages,
            List<Talker> talkers, Talker talker, String externalRoomId)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message)? deleteMessage,
    TResult Function(List<Message> messages)? updateMessages,
    TResult Function(List<Talker> talkers)? updateTalkers,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(Message message)? blockUser,
    TResult Function(Message message, bool isVisible)? changeMessageVisibility,
    TResult Function(Message message, bool isVisible)? changeMessagesVisibility,
    TResult Function(Message message, bool isBanned)? setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function()? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FinishLoading value) finishLoading,
    required TResult Function(_FetchChat value) fetchChat,
    required TResult Function(_ShowEmotion value) showEmotion,
    required TResult Function(_MentionMessage value) mentionMessage,
    required TResult Function(_CopyMessage value) copyMessage,
    required TResult Function(_EditMessage value) editMessage,
    required TResult Function(_CloseOverhang value) closeOverhang,
    required TResult Function(_DeleteMessage value) deleteMessage,
    required TResult Function(_UpdateMessages value) updateMessages,
    required TResult Function(_UpdateTalkers value) updateTalkers,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
  }) {
    return loadMoreMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
  }) {
    return loadMoreMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FinishLoading value)? finishLoading,
    TResult Function(_FetchChat value)? fetchChat,
    TResult Function(_ShowEmotion value)? showEmotion,
    TResult Function(_MentionMessage value)? mentionMessage,
    TResult Function(_CopyMessage value)? copyMessage,
    TResult Function(_EditMessage value)? editMessage,
    TResult Function(_CloseOverhang value)? closeOverhang,
    TResult Function(_DeleteMessage value)? deleteMessage,
    TResult Function(_UpdateMessages value)? updateMessages,
    TResult Function(_UpdateTalkers value)? updateTalkers,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreMessages implements ChatEvent {
  const factory _LoadMoreMessages() = _$_LoadMoreMessages;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(ChatStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
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
    return 'ChatState.loading()';
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
    required TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
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
    required TResult Function(ChatStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$ChatStateLoadedCopyWith<$Res> {
  factory _$$ChatStateLoadedCopyWith(
          _$ChatStateLoaded value, $Res Function(_$ChatStateLoaded) then) =
      __$$ChatStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {Message? pinnedMessage,
      bool isLoadingMoreMessages,
      bool isLoadedAllMessages,
      String externalRoomId,
      List<Talker> talkers,
      List<Message> messages,
      Map<String, Widget> emojis,
      List<Emotion> allEmotions,
      Talker talker,
      bool mirrorEmotion,
      MessageInputType? messageInputType});

  $MessageInputTypeCopyWith<$Res>? get messageInputType;
}

/// @nodoc
class __$$ChatStateLoadedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$$ChatStateLoadedCopyWith<$Res> {
  __$$ChatStateLoadedCopyWithImpl(
      _$ChatStateLoaded _value, $Res Function(_$ChatStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ChatStateLoaded));

  @override
  _$ChatStateLoaded get _value => super._value as _$ChatStateLoaded;

  @override
  $Res call({
    Object? pinnedMessage = freezed,
    Object? isLoadingMoreMessages = freezed,
    Object? isLoadedAllMessages = freezed,
    Object? externalRoomId = freezed,
    Object? talkers = freezed,
    Object? messages = freezed,
    Object? emojis = freezed,
    Object? allEmotions = freezed,
    Object? talker = freezed,
    Object? mirrorEmotion = freezed,
    Object? messageInputType = freezed,
  }) {
    return _then(_$ChatStateLoaded(
      pinnedMessage: pinnedMessage == freezed
          ? _value.pinnedMessage
          : pinnedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      isLoadingMoreMessages: isLoadingMoreMessages == freezed
          ? _value.isLoadingMoreMessages
          : isLoadingMoreMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadedAllMessages: isLoadedAllMessages == freezed
          ? _value.isLoadedAllMessages
          : isLoadedAllMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      externalRoomId: externalRoomId == freezed
          ? _value.externalRoomId
          : externalRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      talkers: talkers == freezed
          ? _value._talkers
          : talkers // ignore: cast_nullable_to_non_nullable
              as List<Talker>,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      emojis: emojis == freezed
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as Map<String, Widget>,
      allEmotions: allEmotions == freezed
          ? _value._allEmotions
          : allEmotions // ignore: cast_nullable_to_non_nullable
              as List<Emotion>,
      talker: talker == freezed
          ? _value.talker
          : talker // ignore: cast_nullable_to_non_nullable
              as Talker,
      mirrorEmotion: mirrorEmotion == freezed
          ? _value.mirrorEmotion
          : mirrorEmotion // ignore: cast_nullable_to_non_nullable
              as bool,
      messageInputType: messageInputType == freezed
          ? _value.messageInputType
          : messageInputType // ignore: cast_nullable_to_non_nullable
              as MessageInputType?,
    ));
  }

  @override
  $MessageInputTypeCopyWith<$Res>? get messageInputType {
    if (_value.messageInputType == null) {
      return null;
    }

    return $MessageInputTypeCopyWith<$Res>(_value.messageInputType!, (value) {
      return _then(_value.copyWith(messageInputType: value));
    });
  }
}

/// @nodoc

class _$ChatStateLoaded implements ChatStateLoaded {
  _$ChatStateLoaded(
      {this.pinnedMessage,
      this.isLoadingMoreMessages = false,
      this.isLoadedAllMessages = false,
      required this.externalRoomId,
      required final List<Talker> talkers,
      required final List<Message> messages,
      required final Map<String, Widget> emojis,
      required final List<Emotion> allEmotions,
      required this.talker,
      this.mirrorEmotion = false,
      this.messageInputType})
      : _talkers = talkers,
        _messages = messages,
        _emojis = emojis,
        _allEmotions = allEmotions;

  @override
  final Message? pinnedMessage;
  @override
  @JsonKey()
  final bool isLoadingMoreMessages;
  @override
  @JsonKey()
  final bool isLoadedAllMessages;
  @override
  final String externalRoomId;
  final List<Talker> _talkers;
  @override
  List<Talker> get talkers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_talkers);
  }

  final List<Message> _messages;
  @override
  List<Message> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final Map<String, Widget> _emojis;
  @override
  Map<String, Widget> get emojis {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_emojis);
  }

  final List<Emotion> _allEmotions;
  @override
  List<Emotion> get allEmotions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEmotions);
  }

  @override
  final Talker talker;
  @override
  @JsonKey()
  final bool mirrorEmotion;
  @override
  final MessageInputType? messageInputType;

  @override
  String toString() {
    return 'ChatState.loaded(pinnedMessage: $pinnedMessage, isLoadingMoreMessages: $isLoadingMoreMessages, isLoadedAllMessages: $isLoadedAllMessages, externalRoomId: $externalRoomId, talkers: $talkers, messages: $messages, emojis: $emojis, allEmotions: $allEmotions, talker: $talker, mirrorEmotion: $mirrorEmotion, messageInputType: $messageInputType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.pinnedMessage, pinnedMessage) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingMoreMessages, isLoadingMoreMessages) &&
            const DeepCollectionEquality()
                .equals(other.isLoadedAllMessages, isLoadedAllMessages) &&
            const DeepCollectionEquality()
                .equals(other.externalRoomId, externalRoomId) &&
            const DeepCollectionEquality().equals(other._talkers, _talkers) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._emojis, _emojis) &&
            const DeepCollectionEquality()
                .equals(other._allEmotions, _allEmotions) &&
            const DeepCollectionEquality().equals(other.talker, talker) &&
            const DeepCollectionEquality()
                .equals(other.mirrorEmotion, mirrorEmotion) &&
            const DeepCollectionEquality()
                .equals(other.messageInputType, messageInputType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pinnedMessage),
      const DeepCollectionEquality().hash(isLoadingMoreMessages),
      const DeepCollectionEquality().hash(isLoadedAllMessages),
      const DeepCollectionEquality().hash(externalRoomId),
      const DeepCollectionEquality().hash(_talkers),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_emojis),
      const DeepCollectionEquality().hash(_allEmotions),
      const DeepCollectionEquality().hash(talker),
      const DeepCollectionEquality().hash(mirrorEmotion),
      const DeepCollectionEquality().hash(messageInputType));

  @JsonKey(ignore: true)
  @override
  _$$ChatStateLoadedCopyWith<_$ChatStateLoaded> get copyWith =>
      __$$ChatStateLoadedCopyWithImpl<_$ChatStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)
        loaded,
  }) {
    return loaded(
        pinnedMessage,
        isLoadingMoreMessages,
        isLoadedAllMessages,
        externalRoomId,
        talkers,
        messages,
        emojis,
        allEmotions,
        talker,
        mirrorEmotion,
        messageInputType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
  }) {
    return loaded?.call(
        pinnedMessage,
        isLoadingMoreMessages,
        isLoadedAllMessages,
        externalRoomId,
        talkers,
        messages,
        emojis,
        allEmotions,
        talker,
        mirrorEmotion,
        messageInputType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Message? pinnedMessage,
            bool isLoadingMoreMessages,
            bool isLoadedAllMessages,
            String externalRoomId,
            List<Talker> talkers,
            List<Message> messages,
            Map<String, Widget> emojis,
            List<Emotion> allEmotions,
            Talker talker,
            bool mirrorEmotion,
            MessageInputType? messageInputType)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          pinnedMessage,
          isLoadingMoreMessages,
          isLoadedAllMessages,
          externalRoomId,
          talkers,
          messages,
          emojis,
          allEmotions,
          talker,
          mirrorEmotion,
          messageInputType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(ChatStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(ChatStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChatStateLoaded implements ChatState {
  factory ChatStateLoaded(
      {final Message? pinnedMessage,
      final bool isLoadingMoreMessages,
      final bool isLoadedAllMessages,
      required final String externalRoomId,
      required final List<Talker> talkers,
      required final List<Message> messages,
      required final Map<String, Widget> emojis,
      required final List<Emotion> allEmotions,
      required final Talker talker,
      final bool mirrorEmotion,
      final MessageInputType? messageInputType}) = _$ChatStateLoaded;

  Message? get pinnedMessage;
  bool get isLoadingMoreMessages;
  bool get isLoadedAllMessages;
  String get externalRoomId;
  List<Talker> get talkers;
  List<Message> get messages;
  Map<String, Widget> get emojis;
  List<Emotion> get allEmotions;
  Talker get talker;
  bool get mirrorEmotion;
  MessageInputType? get messageInputType;
  @JsonKey(ignore: true)
  _$$ChatStateLoadedCopyWith<_$ChatStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageInputType {
  Message get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) reply,
    required TResult Function(Message message) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReplyType value) reply,
    required TResult Function(_EditType value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageInputTypeCopyWith<MessageInputType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInputTypeCopyWith<$Res> {
  factory $MessageInputTypeCopyWith(
          MessageInputType value, $Res Function(MessageInputType) then) =
      _$MessageInputTypeCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class _$MessageInputTypeCopyWithImpl<$Res>
    implements $MessageInputTypeCopyWith<$Res> {
  _$MessageInputTypeCopyWithImpl(this._value, this._then);

  final MessageInputType _value;
  // ignore: unused_field
  final $Res Function(MessageInputType) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
abstract class _$$_ReplyTypeCopyWith<$Res>
    implements $MessageInputTypeCopyWith<$Res> {
  factory _$$_ReplyTypeCopyWith(
          _$_ReplyType value, $Res Function(_$_ReplyType) then) =
      __$$_ReplyTypeCopyWithImpl<$Res>;
  @override
  $Res call({Message message});
}

/// @nodoc
class __$$_ReplyTypeCopyWithImpl<$Res>
    extends _$MessageInputTypeCopyWithImpl<$Res>
    implements _$$_ReplyTypeCopyWith<$Res> {
  __$$_ReplyTypeCopyWithImpl(
      _$_ReplyType _value, $Res Function(_$_ReplyType) _then)
      : super(_value, (v) => _then(v as _$_ReplyType));

  @override
  _$_ReplyType get _value => super._value as _$_ReplyType;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ReplyType(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_ReplyType extends _ReplyType {
  const _$_ReplyType({required this.message}) : super._();

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageInputType.reply(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyType &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ReplyTypeCopyWith<_$_ReplyType> get copyWith =>
      __$$_ReplyTypeCopyWithImpl<_$_ReplyType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) reply,
    required TResult Function(Message message) edit,
  }) {
    return reply(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
  }) {
    return reply?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
    required TResult orElse(),
  }) {
    if (reply != null) {
      return reply(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReplyType value) reply,
    required TResult Function(_EditType value) edit,
  }) {
    return reply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
  }) {
    return reply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
    required TResult orElse(),
  }) {
    if (reply != null) {
      return reply(this);
    }
    return orElse();
  }
}

abstract class _ReplyType extends MessageInputType {
  const factory _ReplyType({required final Message message}) = _$_ReplyType;
  const _ReplyType._() : super._();

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyTypeCopyWith<_$_ReplyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditTypeCopyWith<$Res>
    implements $MessageInputTypeCopyWith<$Res> {
  factory _$$_EditTypeCopyWith(
          _$_EditType value, $Res Function(_$_EditType) then) =
      __$$_EditTypeCopyWithImpl<$Res>;
  @override
  $Res call({Message message});
}

/// @nodoc
class __$$_EditTypeCopyWithImpl<$Res>
    extends _$MessageInputTypeCopyWithImpl<$Res>
    implements _$$_EditTypeCopyWith<$Res> {
  __$$_EditTypeCopyWithImpl(
      _$_EditType _value, $Res Function(_$_EditType) _then)
      : super(_value, (v) => _then(v as _$_EditType));

  @override
  _$_EditType get _value => super._value as _$_EditType;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_EditType(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_EditType extends _EditType {
  const _$_EditType({required this.message}) : super._();

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageInputType.edit(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditType &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_EditTypeCopyWith<_$_EditType> get copyWith =>
      __$$_EditTypeCopyWithImpl<_$_EditType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Message message) reply,
    required TResult Function(Message message) edit,
  }) {
    return edit(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
  }) {
    return edit?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Message message)? reply,
    TResult Function(Message message)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReplyType value) reply,
    required TResult Function(_EditType value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReplyType value)? reply,
    TResult Function(_EditType value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _EditType extends MessageInputType {
  const factory _EditType({required final Message message}) = _$_EditType;
  const _EditType._() : super._();

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$_EditTypeCopyWith<_$_EditType> get copyWith =>
      throw _privateConstructorUsedError;
}
