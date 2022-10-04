import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';

class SendEmotionUseCase {
  final IChatRepository _chatRepository;

  const SendEmotionUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Future<Result<void, Exception>> call({
    required Emotion emotion,
    required String externalRoomId,
  }) async {
    try {
      return Success(_chatRepository.sendEmotion(
        emotion: emotion,
        externalRoomId: externalRoomId,
      ));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
