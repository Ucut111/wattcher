import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class CloseSocketUseCase {
  final IChatRepository _chatRepository;

  const CloseSocketUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call() async {
    try {
      return Success(_chatRepository.close());
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
