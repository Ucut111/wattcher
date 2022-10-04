import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';

class GetAllEmotionsUseCase {
  const GetAllEmotionsUseCase();

  List<Emotion> call() {
    return const [
      Emotion(name: 'thumbsUp', path: 'thumbs_up'),
      Emotion(name: 'FaceWithHeartEyes', path: 'face_with_heart_eyes'),
      Emotion(name: 'flexedBiceps', path: 'flexed_biceps'),
      Emotion(name: 'grinningFace', path: 'grinning_face'),
      Emotion(name: 'clappingHands', path: 'clapping_hands'),
      Emotion(name: 'yawningFace', path: 'yawning_face'),
      Emotion(name: 'poutingFace', path: 'pouting_face'),
    ];
  }
}
