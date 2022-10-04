import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/onboarding/domain/i_onboarding_repository.dart';

class UpdateUserUseCase {
  final IOnboardingRepository _onboardingRepository;

  const UpdateUserUseCase({
    required IOnboardingRepository onboardingRepository,
  }) : _onboardingRepository = onboardingRepository;

  Future<Result<void, Exception>> call({
    required String name,
    required String avatarId,
  }) async {
    try {
      await _onboardingRepository.updateUser(name: name, avatarId: avatarId);
      return Success(unit);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
