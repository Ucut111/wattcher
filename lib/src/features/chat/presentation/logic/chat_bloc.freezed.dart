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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return init(externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return init?.call(externalRoomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return sendMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return sendMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
      String externalRoomId,
      List<int> initiatorIds,
      List<int> targetIds});
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
    Object? initiatorIds = freezed,
    Object? targetIds = freezed,
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
      initiatorIds: initiatorIds == freezed
          ? _value._initiatorIds
          : initiatorIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      targetIds: targetIds == freezed
          ? _value._targetIds
          : targetIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      required this.externalRoomId,
      required final List<int> initiatorIds,
      required final List<int> targetIds})
      : _messages = messages,
        _talkers = talkers,
        _initiatorIds = initiatorIds,
        _targetIds = targetIds;

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
  final List<int> _initiatorIds;
  @override
  List<int> get initiatorIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initiatorIds);
  }

  final List<int> _targetIds;
  @override
  List<int> get targetIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetIds);
  }

  @override
  String toString() {
    return 'ChatEvent.finishLoading(pinnedMessage: $pinnedMessage, messages: $messages, talkers: $talkers, talker: $talker, externalRoomId: $externalRoomId, initiatorIds: $initiatorIds, targetIds: $targetIds)';
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
                .equals(other.externalRoomId, externalRoomId) &&
            const DeepCollectionEquality()
                .equals(other._initiatorIds, _initiatorIds) &&
            const DeepCollectionEquality()
                .equals(other._targetIds, _targetIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pinnedMessage),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_talkers),
      const DeepCollectionEquality().hash(talker),
      const DeepCollectionEquality().hash(externalRoomId),
      const DeepCollectionEquality().hash(_initiatorIds),
      const DeepCollectionEquality().hash(_targetIds));

  @JsonKey(ignore: true)
  @override
  _$$_FinishLoadingCopyWith<_$_FinishLoading> get copyWith =>
      __$$_FinishLoadingCopyWithImpl<_$_FinishLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return finishLoading(pinnedMessage, messages, talkers, talker,
        externalRoomId, initiatorIds, targetIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return finishLoading?.call(pinnedMessage, messages, talkers, talker,
        externalRoomId, initiatorIds, targetIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (finishLoading != null) {
      return finishLoading(pinnedMessage, messages, talkers, talker,
          externalRoomId, initiatorIds, targetIds);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
      required final String externalRoomId,
      required final List<int> initiatorIds,
      required final List<int> targetIds}) = _$_FinishLoading;

  Message? get pinnedMessage;
  List<Message> get messages;
  List<Talker> get talkers;
  Talker get talker;
  String get externalRoomId;
  List<int> get initiatorIds;
  List<int> get targetIds;
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return fetchChat(externalRoomId, messages, talkers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return fetchChat?.call(externalRoomId, messages, talkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return showEmotion(emotion, isMyEmotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return showEmotion?.call(emotion, isMyEmotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return mentionMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return mentionMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
  $Res call({BuildContext context, Message message});
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
    Object? context = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_CopyMessage(
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

class _$_CopyMessage implements _CopyMessage {
  const _$_CopyMessage({required this.context, required this.message});

  @override
  final BuildContext context;
  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.copyMessage(context: $context, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CopyMessage &&
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
  _$$_CopyMessageCopyWith<_$_CopyMessage> get copyWith =>
      __$$_CopyMessageCopyWithImpl<_$_CopyMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return copyMessage(context, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return copyMessage?.call(context, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(context, message);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (copyMessage != null) {
      return copyMessage(this);
    }
    return orElse();
  }
}

abstract class _CopyMessage implements ChatEvent {
  const factory _CopyMessage(
      {required final BuildContext context,
      required final Message message}) = _$_CopyMessage;

  BuildContext get context;
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return editMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return editMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return closeOverhang();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return closeOverhang?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
  $Res call({Message message, BuildContext context});
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
    Object? context = freezed,
  }) {
    return _then(_$_DeleteMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteMessage implements _DeleteMessage {
  const _$_DeleteMessage({required this.message, required this.context});

  @override
  final Message message;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.deleteMessage(message: $message, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteMessage &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteMessageCopyWith<_$_DeleteMessage> get copyWith =>
      __$$_DeleteMessageCopyWithImpl<_$_DeleteMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return deleteMessage(message, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return deleteMessage?.call(message, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(message, context);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ChatEvent {
  const factory _DeleteMessage(
      {required final Message message,
      required final BuildContext context}) = _$_DeleteMessage;

  Message get message;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeleteMessageCopyWith<_$_DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateMessagesCopyWith<$Res> {
  factory _$$_UpdateMessagesCopyWith(
          _$_UpdateMessages value, $Res Function(_$_UpdateMessages) then) =
      __$$_UpdateMessagesCopyWithImpl<$Res>;
  $Res call({ChatStateLoaded loaded});
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
    Object? loaded = freezed,
  }) {
    return _then(_$_UpdateMessages(
      loaded == freezed
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as ChatStateLoaded,
    ));
  }
}

/// @nodoc

class _$_UpdateMessages implements _UpdateMessages {
  const _$_UpdateMessages(this.loaded);

  @override
  final ChatStateLoaded loaded;

  @override
  String toString() {
    return 'ChatEvent.update(loaded: $loaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateMessages &&
            const DeepCollectionEquality().equals(other.loaded, loaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loaded));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateMessagesCopyWith<_$_UpdateMessages> get copyWith =>
      __$$_UpdateMessagesCopyWithImpl<_$_UpdateMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return update(loaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return update?.call(loaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(loaded);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
  }) {
    return update(this);
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
  }) {
    return update?.call(this);
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessages implements ChatEvent {
  const factory _UpdateMessages(final ChatStateLoaded loaded) =
      _$_UpdateMessages;

  ChatStateLoaded get loaded;
  @JsonKey(ignore: true)
  _$$_UpdateMessagesCopyWith<_$_UpdateMessages> get copyWith =>
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return reportMessage(context, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return reportMessage?.call(context, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
  $Res call({BuildContext context, Message message});
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
    Object? context = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_BlockUser(
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

class _$_BlockUser implements _BlockUser {
  const _$_BlockUser({required this.context, required this.message});

  @override
  final BuildContext context;
  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.blockUser(context: $context, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockUser &&
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
  _$$_BlockUserCopyWith<_$_BlockUser> get copyWith =>
      __$$_BlockUserCopyWithImpl<_$_BlockUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return blockUser(context, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return blockUser?.call(context, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(context, message);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (blockUser != null) {
      return blockUser(this);
    }
    return orElse();
  }
}

abstract class _BlockUser implements ChatEvent {
  const factory _BlockUser(
      {required final BuildContext context,
      required final Message message}) = _$_BlockUser;

  BuildContext get context;
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
  $Res call({Message message, bool isVisible, BuildContext context});
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
    Object? context = freezed,
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
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ChangeMessageVisibility implements _ChangeMessageVisibility {
  const _$_ChangeMessageVisibility(
      {required this.message, required this.isVisible, required this.context});

  @override
  final Message message;
  @override
  final bool isVisible;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.changeMessageVisibility(message: $message, isVisible: $isVisible, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMessageVisibility &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isVisible),
      const DeepCollectionEquality().hash(context));

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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return changeMessageVisibility(message, isVisible, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return changeMessageVisibility?.call(message, isVisible, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (changeMessageVisibility != null) {
      return changeMessageVisibility(message, isVisible, context);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
      required final bool isVisible,
      required final BuildContext context}) = _$_ChangeMessageVisibility;

  Message get message;
  bool get isVisible;
  BuildContext get context;
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
  $Res call({Talker talker, bool isVisible, BuildContext context});
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
    Object? talker = freezed,
    Object? isVisible = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_ChangeMessagesVisibility(
      talker: talker == freezed
          ? _value.talker
          : talker // ignore: cast_nullable_to_non_nullable
              as Talker,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ChangeMessagesVisibility implements _ChangeMessagesVisibility {
  const _$_ChangeMessagesVisibility(
      {required this.talker, required this.isVisible, required this.context});

  @override
  final Talker talker;
  @override
  final bool isVisible;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.changeMessagesVisibility(talker: $talker, isVisible: $isVisible, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeMessagesVisibility &&
            const DeepCollectionEquality().equals(other.talker, talker) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(talker),
      const DeepCollectionEquality().hash(isVisible),
      const DeepCollectionEquality().hash(context));

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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return changeMessagesVisibility(talker, isVisible, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return changeMessagesVisibility?.call(talker, isVisible, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (changeMessagesVisibility != null) {
      return changeMessagesVisibility(talker, isVisible, context);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
      {required final Talker talker,
      required final bool isVisible,
      required final BuildContext context}) = _$_ChangeMessagesVisibility;

  Talker get talker;
  bool get isVisible;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ChangeMessagesVisibilityCopyWith<_$_ChangeMessagesVisibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetBanCopyWith<$Res> {
  factory _$$_SetBanCopyWith(_$_SetBan value, $Res Function(_$_SetBan) then) =
      __$$_SetBanCopyWithImpl<$Res>;
  $Res call({Talker talker, bool isBanned, BuildContext context});
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
    Object? talker = freezed,
    Object? isBanned = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_SetBan(
      talker: talker == freezed
          ? _value.talker
          : talker // ignore: cast_nullable_to_non_nullable
              as Talker,
      isBanned: isBanned == freezed
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SetBan implements _SetBan {
  const _$_SetBan(
      {required this.talker, required this.isBanned, required this.context});

  @override
  final Talker talker;
  @override
  final bool isBanned;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ChatEvent.setBan(talker: $talker, isBanned: $isBanned, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBan &&
            const DeepCollectionEquality().equals(other.talker, talker) &&
            const DeepCollectionEquality().equals(other.isBanned, isBanned) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(talker),
      const DeepCollectionEquality().hash(isBanned),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_SetBanCopyWith<_$_SetBan> get copyWith =>
      __$$_SetBanCopyWithImpl<_$_SetBan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return setBan(talker, isBanned, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return setBan?.call(talker, isBanned, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (setBan != null) {
      return setBan(talker, isBanned, context);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
      {required final Talker talker,
      required final bool isBanned,
      required final BuildContext context}) = _$_SetBan;

  Talker get talker;
  bool get isBanned;
  BuildContext get context;
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
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return updateTalker(talker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return updateTalker?.call(talker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
  $Res call({int? lastMessageId, int? limit, Message? scrollToMessage});
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

  @override
  $Res call({
    Object? lastMessageId = freezed,
    Object? limit = freezed,
    Object? scrollToMessage = freezed,
  }) {
    return _then(_$_LoadMoreMessages(
      lastMessageId: lastMessageId == freezed
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      scrollToMessage: scrollToMessage == freezed
          ? _value.scrollToMessage
          : scrollToMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc

class _$_LoadMoreMessages implements _LoadMoreMessages {
  const _$_LoadMoreMessages(
      {this.lastMessageId, this.limit, this.scrollToMessage});

  @override
  final int? lastMessageId;
  @override
  final int? limit;
  @override
  final Message? scrollToMessage;

  @override
  String toString() {
    return 'ChatEvent.loadMoreMessages(lastMessageId: $lastMessageId, limit: $limit, scrollToMessage: $scrollToMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMoreMessages &&
            const DeepCollectionEquality()
                .equals(other.lastMessageId, lastMessageId) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.scrollToMessage, scrollToMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastMessageId),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(scrollToMessage));

  @JsonKey(ignore: true)
  @override
  _$$_LoadMoreMessagesCopyWith<_$_LoadMoreMessages> get copyWith =>
      __$$_LoadMoreMessagesCopyWithImpl<_$_LoadMoreMessages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return loadMoreMessages(lastMessageId, limit, this.scrollToMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return loadMoreMessages?.call(lastMessageId, limit, this.scrollToMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(lastMessageId, limit, this.scrollToMessage);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (loadMoreMessages != null) {
      return loadMoreMessages(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreMessages implements ChatEvent {
  const factory _LoadMoreMessages(
      {final int? lastMessageId,
      final int? limit,
      final Message? scrollToMessage}) = _$_LoadMoreMessages;

  int? get lastMessageId;
  int? get limit;
  Message? get scrollToMessage;
  @JsonKey(ignore: true)
  _$$_LoadMoreMessagesCopyWith<_$_LoadMoreMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScrollToMessageCopyWith<$Res> {
  factory _$$_ScrollToMessageCopyWith(
          _$_ScrollToMessage value, $Res Function(_$_ScrollToMessage) then) =
      __$$_ScrollToMessageCopyWithImpl<$Res>;
  $Res call({Message message});
}

/// @nodoc
class __$$_ScrollToMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$_ScrollToMessageCopyWith<$Res> {
  __$$_ScrollToMessageCopyWithImpl(
      _$_ScrollToMessage _value, $Res Function(_$_ScrollToMessage) _then)
      : super(_value, (v) => _then(v as _$_ScrollToMessage));

  @override
  _$_ScrollToMessage get _value => super._value as _$_ScrollToMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ScrollToMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_ScrollToMessage implements _ScrollToMessage {
  const _$_ScrollToMessage({required this.message});

  @override
  final Message message;

  @override
  String toString() {
    return 'ChatEvent.scrollToMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrollToMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ScrollToMessageCopyWith<_$_ScrollToMessage> get copyWith =>
      __$$_ScrollToMessageCopyWithImpl<_$_ScrollToMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String externalRoomId) init,
    required TResult Function(String text) sendMessage,
    required TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)
        finishLoading,
    required TResult Function(
            String externalRoomId, List<Message> messages, List<Talker> talkers)
        fetchChat,
    required TResult Function(Emotion emotion, bool isMyEmotion) showEmotion,
    required TResult Function(Message message) mentionMessage,
    required TResult Function(BuildContext context, Message message)
        copyMessage,
    required TResult Function(Message message) editMessage,
    required TResult Function() closeOverhang,
    required TResult Function(Message message, BuildContext context)
        deleteMessage,
    required TResult Function(ChatStateLoaded loaded) update,
    required TResult Function(BuildContext context, Message message)
        reportMessage,
    required TResult Function(BuildContext context, Message message) blockUser,
    required TResult Function(
            Message message, bool isVisible, BuildContext context)
        changeMessageVisibility,
    required TResult Function(
            Talker talker, bool isVisible, BuildContext context)
        changeMessagesVisibility,
    required TResult Function(
            Talker talker, bool isBanned, BuildContext context)
        setBan,
    required TResult Function(Talker talker) updateTalker,
    required TResult Function(
            int? lastMessageId, int? limit, Message? scrollToMessage)
        loadMoreMessages,
    required TResult Function(Message message) scrollToMessage,
  }) {
    return scrollToMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
  }) {
    return scrollToMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String externalRoomId)? init,
    TResult Function(String text)? sendMessage,
    TResult Function(
            Message? pinnedMessage,
            List<Message> messages,
            List<Talker> talkers,
            Talker talker,
            String externalRoomId,
            List<int> initiatorIds,
            List<int> targetIds)?
        finishLoading,
    TResult Function(String externalRoomId, List<Message> messages,
            List<Talker> talkers)?
        fetchChat,
    TResult Function(Emotion emotion, bool isMyEmotion)? showEmotion,
    TResult Function(Message message)? mentionMessage,
    TResult Function(BuildContext context, Message message)? copyMessage,
    TResult Function(Message message)? editMessage,
    TResult Function()? closeOverhang,
    TResult Function(Message message, BuildContext context)? deleteMessage,
    TResult Function(ChatStateLoaded loaded)? update,
    TResult Function(BuildContext context, Message message)? reportMessage,
    TResult Function(BuildContext context, Message message)? blockUser,
    TResult Function(Message message, bool isVisible, BuildContext context)?
        changeMessageVisibility,
    TResult Function(Talker talker, bool isVisible, BuildContext context)?
        changeMessagesVisibility,
    TResult Function(Talker talker, bool isBanned, BuildContext context)?
        setBan,
    TResult Function(Talker talker)? updateTalker,
    TResult Function(int? lastMessageId, int? limit, Message? scrollToMessage)?
        loadMoreMessages,
    TResult Function(Message message)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (scrollToMessage != null) {
      return scrollToMessage(message);
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
    required TResult Function(_UpdateMessages value) update,
    required TResult Function(_ReportMessage value) reportMessage,
    required TResult Function(_BlockUser value) blockUser,
    required TResult Function(_ChangeMessageVisibility value)
        changeMessageVisibility,
    required TResult Function(_ChangeMessagesVisibility value)
        changeMessagesVisibility,
    required TResult Function(_SetBan value) setBan,
    required TResult Function(_UpdateTalker value) updateTalker,
    required TResult Function(_LoadMoreMessages value) loadMoreMessages,
    required TResult Function(_ScrollToMessage value) scrollToMessage,
  }) {
    return scrollToMessage(this);
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
  }) {
    return scrollToMessage?.call(this);
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
    TResult Function(_UpdateMessages value)? update,
    TResult Function(_ReportMessage value)? reportMessage,
    TResult Function(_BlockUser value)? blockUser,
    TResult Function(_ChangeMessageVisibility value)? changeMessageVisibility,
    TResult Function(_ChangeMessagesVisibility value)? changeMessagesVisibility,
    TResult Function(_SetBan value)? setBan,
    TResult Function(_UpdateTalker value)? updateTalker,
    TResult Function(_LoadMoreMessages value)? loadMoreMessages,
    TResult Function(_ScrollToMessage value)? scrollToMessage,
    required TResult orElse(),
  }) {
    if (scrollToMessage != null) {
      return scrollToMessage(this);
    }
    return orElse();
  }
}

abstract class _ScrollToMessage implements ChatEvent {
  const factory _ScrollToMessage({required final Message message}) =
      _$_ScrollToMessage;

  Message get message;
  @JsonKey(ignore: true)
  _$$_ScrollToMessageCopyWith<_$_ScrollToMessage> get copyWith =>
      throw _privateConstructorUsedError;
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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

class _$_Loading extends _Loading {
  _$_Loading() : super._();

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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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

abstract class _Loading extends ChatState {
  factory _Loading() = _$_Loading;
  _Loading._() : super._();
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
      MessageInputType? messageInputType,
      List<int> initiatorIds,
      List<int> targetIds});

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
    Object? initiatorIds = freezed,
    Object? targetIds = freezed,
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
      initiatorIds: initiatorIds == freezed
          ? _value._initiatorIds
          : initiatorIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      targetIds: targetIds == freezed
          ? _value._targetIds
          : targetIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
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

class _$ChatStateLoaded extends ChatStateLoaded {
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
      this.messageInputType,
      required final List<int> initiatorIds,
      required final List<int> targetIds})
      : _talkers = talkers,
        _messages = messages,
        _emojis = emojis,
        _allEmotions = allEmotions,
        _initiatorIds = initiatorIds,
        _targetIds = targetIds,
        super._();

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
  final List<int> _initiatorIds;
  @override
  List<int> get initiatorIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initiatorIds);
  }

  final List<int> _targetIds;
  @override
  List<int> get targetIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetIds);
  }

  @override
  String toString() {
    return 'ChatState.loaded(pinnedMessage: $pinnedMessage, isLoadingMoreMessages: $isLoadingMoreMessages, isLoadedAllMessages: $isLoadedAllMessages, externalRoomId: $externalRoomId, talkers: $talkers, messages: $messages, emojis: $emojis, allEmotions: $allEmotions, talker: $talker, mirrorEmotion: $mirrorEmotion, messageInputType: $messageInputType, initiatorIds: $initiatorIds, targetIds: $targetIds)';
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
                .equals(other.messageInputType, messageInputType) &&
            const DeepCollectionEquality()
                .equals(other._initiatorIds, _initiatorIds) &&
            const DeepCollectionEquality()
                .equals(other._targetIds, _targetIds));
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
      const DeepCollectionEquality().hash(messageInputType),
      const DeepCollectionEquality().hash(_initiatorIds),
      const DeepCollectionEquality().hash(_targetIds));

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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)
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
        messageInputType,
        initiatorIds,
        targetIds);
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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
        messageInputType,
        initiatorIds,
        targetIds);
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
            MessageInputType? messageInputType,
            List<int> initiatorIds,
            List<int> targetIds)?
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
          messageInputType,
          initiatorIds,
          targetIds);
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

abstract class ChatStateLoaded extends ChatState {
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
      final MessageInputType? messageInputType,
      required final List<int> initiatorIds,
      required final List<int> targetIds}) = _$ChatStateLoaded;
  ChatStateLoaded._() : super._();

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
  List<int> get initiatorIds;
  List<int> get targetIds;
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
