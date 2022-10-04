abstract class IOnboardingRepository {
  Future<void> registerUser({
    required String externalId,
  });

  Future<void> updateUser({
    required String name,
    required String avatarId,
  });
}
