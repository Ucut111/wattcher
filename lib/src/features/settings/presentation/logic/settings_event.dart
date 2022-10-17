part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = _Init;

  const factory SettingsEvent.toProfile() = _ToProfile;

  const factory SettingsEvent.toBlackList() = _ToBlackList;

  const factory SettingsEvent.backToSettings() = _BackToSettings;

  const factory SettingsEvent.toAvatarPicker() = _ToAvatarPicker;

  const factory SettingsEvent.selectAvatar({
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
  }) = _SelectAvatar;

  const factory SettingsEvent.submitAvatar({
    required Avatar selectedAvatar,
  }) = _SubmitAvatar;

  const factory SettingsEvent.backToProfile() = _BackToProfile;

  const factory SettingsEvent.showInput() = _ShowInput;

  const factory SettingsEvent.submitInput() = _SubmitInput;

  const factory SettingsEvent.showUnblockDialog({
    required User block,
    required BuildContext context,
  }) = _ShowUnblockDialog;

  const factory SettingsEvent.deleteUser({
    required BuildContext context,
  }) = _DeleteUser;

  const factory SettingsEvent.onConnectivityChanged(
    ConnectivityResult connectivityResult,
  ) = _OnConnectivityChanged;
}
