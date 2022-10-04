import 'package:dio/dio.dart';
import 'package:watchers_widget/src/features/common/domain/models/app_settings.dart';

import '../shared_preferences_storage/shared_preferences_storage.dart';

class AddTokenInterceptor extends Interceptor {
  final SharedPreferencesEntityStorage _entityStorage;

  AddTokenInterceptor({
    required SharedPreferencesEntityStorage entityStorage,
  }) : _entityStorage = entityStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _entityStorage.get(AppSettings.accessToken);

    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
