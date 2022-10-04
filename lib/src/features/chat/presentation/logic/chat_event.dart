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
    required Message message,
  }) = _CopyMessage;

  const factory ChatEvent.editMessage({
    required Message message,
  }) = _EditMessage;

  const factory ChatEvent.closeOverhang() = _CloseOverhang;

  const factory ChatEvent.deleteMessage({
    required Message message,
  }) = _DeleteMessage;

  const factory ChatEvent.updateMessages(
    List<Message> messages,
  ) = _UpdateMessages;

  const factory ChatEvent.updateTalkers(
    List<Talker> talkers,
  ) = _UpdateTalkers;

  const factory ChatEvent.reportMessage({
    required BuildContext context,
    required Message message,
  }) = _ReportMessage;

  const factory ChatEvent.blockUser({
    required Message message,
  }) = _BlockUser;

  const factory ChatEvent.changeMessageVisibility({
    required Message message,
    required bool isVisible,
  }) = _ChangeMessageVisibility;

  const factory ChatEvent.changeMessagesVisibility({
    required Message message,
    required bool isVisible,
  }) = _ChangeMessagesVisibility;

  const factory ChatEvent.setBan({
    required Message message,
    required bool isBanned,
  }) = _SetBan;

  const factory ChatEvent.updateTalker(Talker talker) = _UpdateTalker;

  const factory ChatEvent.loadMoreMessages() = _LoadMoreMessages;
}
