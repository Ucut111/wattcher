part of 'locator.dart';

void _registerUseCases() {
  // Auth
  locator.registerFactory(() => RegisterUserUseCase(authRepository: locator()));

  // Blocks
  locator.registerFactory(() => AddBlockUseCase(blockRepository: locator()));
  locator.registerFactory(() => RemoveBlockUseCase(blockRepository: locator()));
  locator.registerFactory(() => GetAllBlocksUseCase(blockRepository: locator()));

  // User
  locator.registerFactory(() => DeleteUserUseCase(userRepository: locator()));
  locator.registerFactory(() => GetUserByIdUseCase(userRepository: locator()));
  locator.registerFactory(() => GetUserUseCase(userRepository: locator()));
  locator.registerFactory(() => UpdateUserUseCase(userRepository: locator()));

  // Avatar
  locator.registerFactory(() => GetAllAvatarsUseCase(locator()));

  // Chat
  locator.registerFactory(() => GetMessageArrayUseCase(chatRepository: locator()));
  locator.registerFactory(() => GetMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => GetPinnedMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => JoinRoomUseCase(chatRepository: locator()));
  locator.registerFactory(() => SendMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => EditMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => DeleteMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => CheckMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => SendEmotionUseCase(chatRepository: locator()));
  locator.registerFactory(() => ReportMessageUseCase(chatRepository: locator()));
  locator.registerFactory(() => SetMessageVisibleUseCase(chatRepository: locator()));
  locator.registerFactory(() => SetMessagesVisibleUseCase(chatRepository: locator()));
  locator.registerFactory(() => SetBanUseCase(chatRepository: locator()));

  // Emotions
  locator.registerFactory(() => const GetAllEmotionsUseCase());
  locator.registerFactory(() => GetEmotionByNameScenario(locator()));

  // Room
  locator.registerFactory(() => GetRoomUseCase(locator()));

  // Talkers
  locator.registerFactory(() => GetTalkersUseCase(locator()));
  locator.registerFactory(() => CheckTalkerUseCase(locator()));

  //
  locator.registerFactory(() => GetSocketUseCase(chatRepository: locator()));
}
