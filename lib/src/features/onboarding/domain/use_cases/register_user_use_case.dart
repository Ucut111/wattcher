import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/onboarding/domain/i_onboarding_repository.dart';

class RegisterUserUseCase {
  final IOnboardingRepository _onboardingRepository;

  const RegisterUserUseCase({
    required IOnboardingRepository onboardingRepository,
  }) : _onboardingRepository = onboardingRepository;

  Future<Result<void, Exception>> call({
    required String externalId,
  }) async {
    try {
      await _onboardingRepository.registerUser(externalId: externalId);
      return Success(unit);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
