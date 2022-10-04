import 'package:watchers_widget/src/features/common/data/apis/auth/auth_api.dart';
import 'package:watchers_widget/src/features/common/data/apis/auth/dtos/auth_register_request.dart';
import 'package:watchers_widget/src/features/common/data/repositories/responses/register_response.dart';
import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/common/domain/models/app_settings.dart';

abstract class IAuthRepository {
  Future<RegisterResponse> register({
    required AuthRegisterRequest authRegisterRequest,
  });
}

class AuthRepository implements IAuthRepository {
  final AuthApi _authApi;
  final SharedPreferencesEntityStorage _entityStorage;

  const AuthRepository(this._authApi, this._entityStorage);

  @override
  Future<RegisterResponse> register({
    required AuthRegisterRequest authRegisterRequest,
  }) async {
    final responseData = await _authApi
        .register(authRegisterRequest)
        .then((response) => RegisterResponse.fromMap(response.data));

    await _entityStorage.save(responseData.accessToken, AppSettings.accessToken);
    await _entityStorage.save(responseData.user.toJson(), AppSettings.user);

    return responseData;
  }
}
