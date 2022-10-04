import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class DeleteMessageUseCase {
  final IChatRepository _chatRepository;

  const DeleteMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required DeleteMessageRequest deleteMessageRequest,
  }) async {
    try {
      return Success(_chatRepository.deleteMessage(deleteMessageRequest: deleteMessageRequest));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
