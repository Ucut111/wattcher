part of 'locator.dart';

void _registerBlocs() {
  locator.registerFactoryParam((OnboardingBlocParams params, _) => OnboardingBloc(
        registerUserUseCase: locator(),
        updateUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        antiSwearingFuture: locator.getAsync(),
        params: params,
      ));

  locator.registerFactory(() => SettingsBloc(
        getBlocksUseCase: locator(),
        getUserUseCase: locator(),
        getAllAvatarsUseCase: locator(),
        updateUserUseCase: locator(),
        removeBlockUseCase: locator(),
        deleteUserUseCase: locator(),
        antiSwearingFuture: locator.getAsync(),
        getConnectivityChangeStreamUseCase: locator(),
      ));

  locator.registerFactoryParam<ChatBloc, String, void>((externalRoomId, _) => ChatBloc(
        externalRoomId: externalRoomId,
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator.getAsync(),
      ));

  locator.registerFactoryParam((DeletedProfileBlocParams params, _) => DeletedProfileBloc(
        params,
        locator(),
      ));

  locator.registerFactory(() => TooltipCubit(locator(), locator()));
}
