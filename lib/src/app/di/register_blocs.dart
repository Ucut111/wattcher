part of 'locator.dart';

void _registerBlocs() {
  locator.registerFactoryParam((OnboardingBlocParams params, _) => OnboardingBloc(
        registerUserUseCase: locator(),
        updateUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        params: params,
      ));

  locator.registerFactory(() => SettingsBloc(
        getBlocksUseCase: locator(),
        getUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        updateUserUseCase: locator(),
        removeBlockUseCase: locator(),
        deleteUserUseCase: locator(),
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
        addBlockUseCase: locator(),
        setMessageVisibleUseCase: locator(),
        setMessagesVisibleUseCase: locator(),
        setBanUseCase: locator(),
        getBlocksUseCase: locator(),
        closeSocketUseCase: locator(),
      ));

  locator.registerFactoryParam((DeletedProfileBlocParams params, _) => DeletedProfileBloc(
        params,
        locator(),
      ));
}
