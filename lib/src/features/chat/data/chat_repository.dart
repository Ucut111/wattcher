import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/features/chat/data/chat_api.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/common/models/app_settings.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/models/room.dart';

import 'request/set_pinned_message_request.dart';

class ChatRepository implements IChatRepository {
  final SharedPreferencesEntityStorage _entityStorage;
  final ChatApi _chatApi;

  const ChatRepository(this._entityStorage, this._chatApi);

  @override
  Future<Message?> getMessageById(
      {required String externalRoomId, required String messageId}) async {
    final responseData =
        await _chatApi.getMessageById(externalRoomId, messageId).then((response) => response.data);

    if (responseData != null) {
      return Message.fromMap(responseData);
    }
  }

  @override
  Future<List<Message>> getMessages({
    required String externalRoomId,
    String? limit,
    String? lastId,
  }) async {
    final responseData = await _chatApi.getMessages(
      {
        if (limit != null) 'limit': limit,
        if (lastId != null) 'lastId': lastId,
      },
      externalRoomId,
    ).then((response) => response.data);

    final userMap = jsonDecode(await _entityStorage.get(AppSettings.user));
    return (responseData as List).map<Message>((messageData) {
      final message = Message.fromMap(messageData);
      message.isMyMessage = userMap['id'] == message.talker.user.id;
      if (userMap['id'] == message.talker.user.id) {
        return message.copyWith(isVisible: true);
      } else {
        return message;
      }
    }).toList();
  }

  @override
  Future<Message?> getPinnedMessage({
    required String externalRoomId,
  }) async {
    final responseData =
        await _chatApi.getPinnedMessage(externalRoomId).then((response) => response.data);

    if ((responseData != null) && (responseData.isNotEmpty)) {
      return Message.fromMap(responseData);
    }
  }

  @override
  Future<Room?> getRoom({
    required String externalRoomId,
  }) async {
    final responseData = await _chatApi.getRoom(externalRoomId).then((response) => response.data);

    if (responseData != null) {
      return Room.fromMap(responseData);
    }
  }

  @override
  Future<void> reportMessage({required ReportMessageRequest reportMessageRequest}) async {
    await _chatApi.reportMessage(reportMessageRequest);
  }

  @override
  Future<Socket> joinRoom({
    required String externalRoomId,
    required Function(String, dynamic) eventHandler,
  }) async {
    final userMap = jsonDecode(await _entityStorage.get(AppSettings.user));
    return _chatApi.joinRoom(externalRoomId, userMap['token'], eventHandler);
  }

  @override
  void sendMessage({required SendMessageRequest sendMessageRequest}) {
    _chatApi.sendMessage(sendMessageRequest);
  }

  @override
  Future<Message> checkMessage({
    required Message message,
  }) async {
    final userMap = jsonDecode(await _entityStorage.get(AppSettings.user));
    message.isMyMessage = message.creatorId == userMap['id'];
    message.isMentionMe =
        message.mentionMessage != null && message.mentionMessage!.creatorId == userMap['id'];
    return message;
  }

  @override
  void sendEmotion({
    required Emotion emotion,
    required String externalRoomId,
  }) {
    _chatApi.sendEmotion(emotion, externalRoomId);
  }

  @override
  void setMessageVisible({required SetMessageVisibleRequest setMessageVisibleRequest}) {
    _chatApi.setMessageVisible(setMessageVisibleRequest);
  }

  @override
  void setMessagesVisible({required SetMessagesVisibleRequest setMessagesVisibleRequest}) {
    _chatApi.setMessagesVisible(setMessagesVisibleRequest);
  }

  @override
  void setBan({required SetBanRequest setBanRequest}) {
    _chatApi.setBan(setBanRequest);
  }

  @override
  void editMessage({required EditMessageRequest editMessageRequest}) {
    _chatApi.editMessage(editMessageRequest);
  }

  @override
  void deleteMessage({required DeleteMessageRequest deleteMessageRequest}) {
    _chatApi.deleteMessage(deleteMessageRequest);
  }

  @override
  void setPinnedMessage({required SetPinnedMessageRequest setPinnedMessageRequest}) {
    return _chatApi.setPinnedMessage(setPinnedMessageRequest);
  }

  @override
  Socket getSocket() {
    return _chatApi.socket;
  }

  @override
  void close() {
    _chatApi.close();
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged$ => _chatApi.onConnectivityChanged$;
}
