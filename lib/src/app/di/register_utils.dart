part of 'locator.dart';

void _registerUtils() {
  locator.registerLazySingleton(() {
    return Dio(BaseOptions(
      baseUrl: Constants.baseUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ))
      ..interceptors.add(locator<PrettyDioLogger>())
      ..interceptors.add(locator<AddTokenInterceptor>());
  });
}
