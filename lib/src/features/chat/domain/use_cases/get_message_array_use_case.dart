import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

import 'package:watchers_widget/src/features/common/models/message.dart';

class GetMessageArrayUseCase {
  final IChatRepository _chatRepository;

  const GetMessageArrayUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<List<Message>, Exception>> call({
    required String externalRoomId,
    String? limit,
    String? lastId,
  }) async {
    try {
      final messages = await _chatRepository.getMessages(
        externalRoomId: externalRoomId,
        limit: limit,
        lastId: lastId,
      );
      return Success(messages);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
