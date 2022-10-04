import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_all_emotions_use_case.dart';

class GetEmotionByNameScenario {
  final GetAllEmotionsUseCase _getAllEmotionsUseCase;

  const GetEmotionByNameScenario(this._getAllEmotionsUseCase);

  Emotion call(String emotionName) {
    return _getAllEmotionsUseCase().firstWhere((emotion) => emotion.name == emotionName);
  }
}
