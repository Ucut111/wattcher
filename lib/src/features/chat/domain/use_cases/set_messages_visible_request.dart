import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class SetMessagesVisibleUseCase {
  final IChatRepository _chatRepository;

  const SetMessagesVisibleUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required SetMessagesVisibleRequest setMessagesVisibleRequest,
  }) async {
    try {
      return Success(
        _chatRepository.setMessagesVisible(setMessagesVisibleRequest: setMessagesVisibleRequest),
      );
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
