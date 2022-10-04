part of 'locator.dart';

void _registerBlocs() {
  locator.registerFactoryParam<OnboardingBloc, String, void>((externalId, _) => OnboardingBloc(
        registerUserUseCase: locator(),
        updateUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        externalId: externalId,
      ));

  locator.registerFactory(() => SettingsBloc(
        getBlocksUseCase: locator(),
        getUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        updateUserUseCase: locator(),
        removeBlockUseCase: locator(),
      ));

  locator.registerFactoryParam<ChatBloc, String, void>((externalRoomId, _) => ChatBloc(
        getMessageArrayUseCase: locator(),
        getPinnedMessageUseCase: locator(),
        joinRoomUseCase: locator(),
        sendMessageUseCase: locator(),
        checkMessageUseCase: locator(),
        sendEmotionUseCase: locator(),
        externalRoomId: externalRoomId,
        getAllEmotionsUseCase: locator(),
        getEmotionByNameScenario: locator(),
        getTalkersUseCase: locator(),
        deleteMessageUseCase: locator(),
        editMessageUseCase: locator(),
        reportMessageUseCase: locator(),
        getUserUseCase: locator(),
        addBlockUseCase: locator(),
        setMessageVisibleUseCase: locator(),
        setMessagesVisibleUseCase: locator(),
        setBanUseCase: locator(),
      ));
  locator.registerFactoryParam<TalkersBloc, List<Talker>, void>((talkers, _) => TalkersBloc(
        checkTalkerUseCase: locator(),
        getSocketUseCase: locator(),
        talkers: talkers,
      ));
}
