import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:watchers_widget/src/features/common/data/interceptors/add_token_interceptor.dart';

class OnboardingApi {
  final Dio _dio;

  OnboardingApi(
    Dio dio,
  ) : _dio = dio;

  factory OnboardingApi.create(
    PrettyDioLogger prettyDioLogger,
    AddTokenInterceptor addTokenInterceptor,
  ) {
    final Dio client = Dio(BaseOptions(
      baseUrl: 'https://webbackend.dev.watchers.io/',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ))
      ..interceptors.add(prettyDioLogger)
      ..interceptors.add(addTokenInterceptor);

    return OnboardingApi(client);
  }

  Future<Response> register(String requestBody) => _dio.post(
        'auth/register',
        data: requestBody,
      );

  Future<Response> updateUser(String requestBody) => _dio.patch(
        'user/me',
        data: requestBody,
      );
}
