import 'package:dio/dio.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/core/constants/constants.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/common/data/interceptors/add_token_interceptor.dart';

class ChatApi {
  final Dio _dio;
  late Socket _socket;

  Socket get socket => _socket;
  ChatApi(Dio dio) : _dio = dio;

  factory ChatApi.create(
    AddTokenInterceptor addTokenInterceptor,
  ) {
    final Dio client = Dio(BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ))
      // ..interceptors.add(prettyDioLogger)
      ..interceptors.add(addTokenInterceptor);

    return ChatApi(client);
  }

  Future<Response> getRoom(String externalRoomId) => _dio.get(
        'room/$externalRoomId',
      );

  Future<Response> getMessages(Map<String, dynamic>? requestParams, String externalRoomId) =>
      _dio.get('message/room/$externalRoomId', queryParameters: requestParams);

  Future<Response> getPinnedMessage(String externalRoomId) => _dio.get(
        'message/room/$externalRoomId/pinned',
      );

  Future<Response> getMessageById(String externalRoomId, String messageId) => _dio.get(
        'message/room/$externalRoomId/$messageId',
      );

  Future<Response> reportMessage(ReportMessageRequest reportMessageRequest) => _dio.post(
        'report',
        data: reportMessageRequest.toMap(),
      );

  Socket joinRoom(String externalRoomId, String token, Function(String, dynamic) eventHandler) {
    return _socket = io(
        Constants.baseUrl,
        OptionBuilder()
            .setAuth({'token': token})
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build())
      ..onAny(eventHandler)
      ..onConnect((_) async {
        emitAndLog('join', {'externalRoomId': externalRoomId});
      })
      ..connect();
  }

  Socket leaveRoom(String externalRoomId) => _socket.disconnect();

  void sendMessage(SendMessageRequest sendMessageRequest) {
    emitAndLog('message', sendMessageRequest.toMap());
  }

  void editMessage(EditMessageRequest editMessageRequest) {
    emitAndLog('editMessage', editMessageRequest.toMap());
  }

  void deleteMessage(DeleteMessageRequest deleteMessageRequest) {
    emitAndLog('deleteMessage', deleteMessageRequest.toMap());
  }

  void sendEmotion(Emotion emotion, String externalRoomId) {
    emitAndLog('emotion', {
      'emotion': emotion.toMap(),
      'externalRoomId': externalRoomId,
    });
  }

  void setMessageVisible(SetMessageVisibleRequest setMessageVisibleRequest) {
    emitAndLog('setMessageVisible', setMessageVisibleRequest.toMap());
  }

  void setMessagesVisible(SetMessagesVisibleRequest setMessagesVisibleRequest) {
    emitAndLog('setMessagesVisible', setMessagesVisibleRequest.toMap());
  }

  void setBan(SetBanRequest setBanRequest) {
    emitAndLog('setBan', setBanRequest.toMap());
  }

  void emitAndLog(String event, [dynamic data]) {
    log.debug('Sended >>> event: $event, data: $data');
    _socket.emit(event, data);
  }

  void close() {
    log.debug('Socket was closed');
    _socket.close();
  }
}
