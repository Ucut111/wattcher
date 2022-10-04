import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class SetMessageVisibleUseCase {
  final IChatRepository _chatRepository;

  const SetMessageVisibleUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required SetMessageVisibleRequest setMessageVisibleRequest,
  }) async {
    try {
      return Success(
        _chatRepository.setMessageVisible(setMessageVisibleRequest: setMessageVisibleRequest),
      );
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
