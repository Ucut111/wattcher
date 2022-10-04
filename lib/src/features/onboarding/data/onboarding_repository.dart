import 'dart:convert';

import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/common/models/app_settings.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';
import 'package:watchers_widget/src/features/onboarding/data/onboarding_api.dart';
import 'package:watchers_widget/src/features/onboarding/domain/i_onboarding_repository.dart';

class OnboardingRepository implements IOnboardingRepository {
  final SharedPreferencesEntityStorage _entityStorage;
  final OnboardingApi _onboardingApi;

  const OnboardingRepository(this._onboardingApi, this._entityStorage);

  @override
  Future<void> registerUser({
    required String externalId,
  }) async {
    final responseData = await _onboardingApi
        .register(jsonEncode({
          "externalId": externalId,
        }))
        .then((response) => response.data);

    await _entityStorage.save(responseData['access_token'], AppSettings.accessToken);
    await _entityStorage.save(User.fromMap(responseData['user']).toJson(), AppSettings.user);
  }

  @override
  Future<void> updateUser({
    required String name,
    required String avatarId,
  }) async {
    _onboardingApi
        .updateUser(jsonEncode({
          "name": name,
          "pic": avatarId,
        }))
        .then((response) => response.data);

    // Actualize user in local storage, cuz back sends only {true}
    final user = User.fromJson(await _entityStorage.get(AppSettings.user));
    await _entityStorage.save(
      user.copyWith(name: name, pic: avatarId).toJson(),
      AppSettings.user,
    );
  }
}
