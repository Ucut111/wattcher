import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class GetSocketUseCase {
  final IChatRepository _chatRepository;

  const GetSocketUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Result<Socket, Exception> call() {
    try {
      final socket = _chatRepository.getSocket();
      return Success(socket);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
