import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_pinned_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class SetPinnedMessageUseCase {
  final IChatRepository _chatRepository;

  const SetPinnedMessageUseCase(this._chatRepository);

  Future<Result<void, Exception>> call({
    required SetPinnedMessageRequest setPinnedMessageRequest,
  }) async {
    try {
      return Success(
        _chatRepository.setPinnedMessage(setPinnedMessageRequest: setPinnedMessageRequest),
      );
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
