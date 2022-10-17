part of 'locator.dart';

void _registerApies() {
  locator.registerLazySingleton(() => UserApi(locator()));
  locator.registerLazySingleton(() => AuthApi(locator()));
  locator.registerLazySingleton(() => BlockApi(locator()));
  locator.registerLazySingleton(() => ChatApi.create(locator()));
  locator.registerLazySingleton(() => TalkerApi(locator()));
  locator.registerLazySingleton(() => RoomApi(locator()));
  locator.registerLazySingleton(() => WordlistApi(locator()));
}
