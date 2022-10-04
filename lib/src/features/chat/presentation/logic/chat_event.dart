part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.init({
    required String externalRoomId,
  }) = _Init;

  const factory ChatEvent.sendMessage({
    required String text,
  }) = _SendMessage;

  const factory ChatEvent.finishLoading({
    Message? pinnedMessage,
    required List<Message> messages,
    required List<Talker> talkers,
    required Talker talker,
    required String externalRoomId,
    required List<int> initiatorIds,
    required List<int> targetIds,
  }) = _FinishLoading;

  const factory ChatEvent.fetchChat({
    required String externalRoomId,
    required List<Message> messages,
    required List<Talker> talkers,
  }) = _FetchChat;

  const factory ChatEvent.showEmotion({
    required Emotion emotion,
    required bool isMyEmotion,
  }) = _ShowEmotion;
  const factory ChatEvent.mentionMessage({
    required Message message,
  }) = _MentionMessage;

  const factory ChatEvent.copyMessage({
    required BuildContext context,
    required Message message,
  }) = _CopyMessage;

  const factory ChatEvent.editMessage({
    required Message message,
  }) = _EditMessage;

  const factory ChatEvent.closeOverhang() = _CloseOverhang;

  const factory ChatEvent.deleteMessage({
    required Message message,
    required BuildContext context,
  }) = _DeleteMessage;

  const factory ChatEvent.update(
    ChatStateLoaded loaded,
  ) = _UpdateMessages;

  const factory ChatEvent.reportMessage({
    required BuildContext context,
    required Message message,
  }) = _ReportMessage;

  const factory ChatEvent.blockUser({
    required BuildContext context,
    required Message message,
  }) = _BlockUser;

  const factory ChatEvent.changeMessageVisibility({
    required Message message,
    required bool isVisible,
    required BuildContext context,
  }) = _ChangeMessageVisibility;

  const factory ChatEvent.changeMessagesVisibility({
    required Talker talker,
    required bool isVisible,
    required BuildContext context,
  }) = _ChangeMessagesVisibility;

  const factory ChatEvent.setBan({
    required Talker talker,
    required bool isBanned,
    required BuildContext context,
  }) = _SetBan;

  const factory ChatEvent.updateTalker(Talker talker) = _UpdateTalker;

  const factory ChatEvent.loadMoreMessages({
    int? lastMessageId,
    int? limit,
    Message? scrollToMessage,
  }) = _LoadMoreMessages;

  const factory ChatEvent.scrollToMessage({required Message message}) = _ScrollToMessage;
}
