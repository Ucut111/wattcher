part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState.loading() = _Loading;
  factory ChatState.loaded({
    Message? pinnedMessage,
    @Default(false) bool isLoadingMoreMessages,
    @Default(false) bool isLoadedAllMessages,
    required String externalRoomId,
    required List<Talker> talkers,
    required List<Message> messages,
    required Map<String, Widget> emojis,
    required List<Emotion> allEmotions,
    required Talker talker,
    @Default(false) bool mirrorEmotion,
    MessageInputType? messageInputType,
  }) = ChatStateLoaded;
}

extension ChatStateX on ChatState {
  T as<T extends ChatState>() => this as T;
  bool isA<T extends ChatState>() => this is T;
  bool isNotA<T extends ChatState>() => !isA<T>();
}

@freezed
class MessageInputType with _$MessageInputType {
  const MessageInputType._();

  const factory MessageInputType.reply({
    required Message message,
  }) = _ReplyType;

  const factory MessageInputType.edit({
    required Message message,
  }) = _EditType;

  String get titlePrefix => map(
        reply: (value) => 'Ответить',
        edit: (value) => 'Редактирование',
      );

  String get iconPath => map(
        reply: (value) => Resources.reply,
        edit: (value) => Resources.edit,
      );

  bool get isReply => this is _ReplyType;
  bool get isEdit => this is _EditType;
}
