import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class JoinRoomUseCase {
  final IChatRepository _chatRepository;

  const JoinRoomUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<Socket, Exception>> call(
      {required String externalRoomId, required Function(String, dynamic) eventHandler}) async {
    try {
      return Success(await _chatRepository.joinRoom(
          externalRoomId: externalRoomId, eventHandler: eventHandler));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
