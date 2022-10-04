import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class SetBanUseCase {
  final IChatRepository _chatRepository;

  const SetBanUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required SetBanRequest setBanRequest,
  }) async {
    try {
      return Success(
        _chatRepository.setBan(setBanRequest: setBanRequest),
      );
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
