part of 'locator.dart';

void _registerStorages() {
  locator.registerSingletonAsync(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => SharedPrefencesProvider(locator.getAsync()));
  locator.registerLazySingleton(() => SharedPreferencesEntityStorage(locator()));
}
