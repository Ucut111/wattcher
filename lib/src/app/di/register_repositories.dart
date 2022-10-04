part of 'locator.dart';

void _registerRepositories() {
  locator.registerLazySingleton<IAuthRepository>(() => AuthRepository(locator(), locator()));
  locator.registerLazySingleton<IUserRepository>(() => UserRepository(locator(), locator()));
  locator.registerLazySingleton<IBlockRepository>(() => BlockRepository(locator()));
  locator.registerLazySingleton<IChatRepository>(() => ChatRepository(locator(), locator()));
  locator.registerLazySingleton<IRoomRepository>(() => RoomRepository(locator()));
  locator.registerLazySingleton<ITalkerRepository>(() => TalkerRepository(locator(),locator()));
}
