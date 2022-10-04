import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class SendMessageUseCase {
  final IChatRepository _chatRepository;

  const SendMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required SendMessageRequest sendMessageRequest,
  }) async {
    try {
      return Success(_chatRepository.sendMessage(sendMessageRequest: sendMessageRequest));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
