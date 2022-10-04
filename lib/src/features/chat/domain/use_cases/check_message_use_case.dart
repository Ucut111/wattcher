import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

import 'package:watchers_widget/src/features/common/models/message.dart';

class CheckMessageUseCase {
  final IChatRepository _chatRepository;

  const CheckMessageUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<Message?, Exception>> call({required Message message}) async {
    try {
      final mess = await _chatRepository.checkMessage(message: message);
      return Success(mess);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
