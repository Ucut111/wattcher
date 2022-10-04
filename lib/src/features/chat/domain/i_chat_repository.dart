import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';

import '../../common/models/room.dart';
import '../data/request/delete_message_request.dart';
import '../data/request/edit_message_request.dart';
import '../data/request/send_message_request.dart';

abstract class IChatRepository {
  Future<List<Message>> getMessages({
    required String externalRoomId,
    String? limit,
    String? lastId,
  });

  Socket getSocket();

  Future<Message?> getMessageById({
    required String externalRoomId,
    required String messageId,
  });

  Future<Message?> getPinnedMessage({
    required String externalRoomId,
  });

  Future<Room?> getRoom({
    required String externalRoomId,
  });

  Future<Socket> joinRoom({
    required String externalRoomId,
    required Function(String, dynamic) eventHandler,
  });

  void sendMessage({
    required SendMessageRequest sendMessageRequest,
  });

  void editMessage({
    required EditMessageRequest editMessageRequest,
  });

  void deleteMessage({
    required DeleteMessageRequest deleteMessageRequest,
  });

  Future<Message> checkMessage({
    required Message message,
  });

  void sendEmotion({
    required Emotion emotion,
    required String externalRoomId,
  });

  void setMessageVisible({
    required SetMessageVisibleRequest setMessageVisibleRequest,
  });

  void setMessagesVisible({
    required SetMessagesVisibleRequest setMessagesVisibleRequest,
  });

  void setBan({
    required SetBanRequest setBanRequest,
  });

  Future<void> reportMessage({
    required ReportMessageRequest reportMessageRequest,
  });

  void close();
}
