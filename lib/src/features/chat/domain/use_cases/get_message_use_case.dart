import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

import 'package:watchers_widget/src/features/common/models/message.dart';

class GetMessageUseCase {
  final IChatRepository _chatRepository;

  const GetMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<Message?, Exception>> call({
    required String externalRoomId,
    required String messageId,
  }) async {
    try {
      final message = await _chatRepository.getMessageById(
          externalRoomId: externalRoomId, messageId: messageId);
      return Success(message);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
