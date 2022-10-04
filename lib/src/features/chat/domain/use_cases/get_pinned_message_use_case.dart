import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

import 'package:watchers_widget/src/features/common/models/message.dart';

class GetPinnedMessageUseCase {
  final IChatRepository _chatRepository;

  const GetPinnedMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<Message?, Exception>> call({
    required String externalRoomId,
  }) async {
    try {
      final pinnedMessage = await _chatRepository.getPinnedMessage(externalRoomId: externalRoomId);
      return Success(pinnedMessage);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
