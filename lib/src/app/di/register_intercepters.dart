part of 'locator.dart';

void _registerIntercepters() {
  locator.registerLazySingleton(() => AddTokenInterceptor(entityStorage: locator()));
  locator.registerLazySingleton(() => PrettyDioLogger(requestBody: true));
}
