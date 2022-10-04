import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class EditMessageUseCase {
  final IChatRepository _chatRepository;

  const EditMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required EditMessageRequest editMessageRequest,
  }) async {
    try {
      return Success(_chatRepository.editMessage(editMessageRequest: editMessageRequest));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
