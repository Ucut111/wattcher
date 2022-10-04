part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = _Init;

  const factory SettingsEvent.toProfile({
    required List<User> blocks,
  }) = _ToProfile;

  const factory SettingsEvent.toBlackList({
    required List<User> blocks,
  }) = _ToBlackList;

  const factory SettingsEvent.backToSettings({
    required List<User> blocks,
  }) = _BackToSettings;

  const factory SettingsEvent.toAvatarPicker({
    required List<User> blocks,
    required User user,
  }) = _ToAvatarPicker;

  const factory SettingsEvent.selectAvatar({
    required List<User> blocks,
    required User user,
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
  }) = _SelectAvatar;

  const factory SettingsEvent.submitAvatar({
    required List<User> blocks,
    required User user,
    required Avatar selectedAvatar,
  }) = _SubmitAvatar;

  const factory SettingsEvent.backToProfile({
    required List<User> blocks,
    required User user,
  }) = _BackToProfile;

  const factory SettingsEvent.showInput({
    required List<User> blocks,
    required User user,
  }) = _ShowInput;

  const factory SettingsEvent.submitInput({
    required List<User> blocks,
    required User user,
  }) = _SubmitInput;

  const factory SettingsEvent.showUnblockDialog({
    required BuildContext context,
    required User user,
    required List<User> blocks,
  }) = _ShowUnblockDialog;

  const factory SettingsEvent.deleteUser({
    required BuildContext context,
  }) = _DeleteUser;
}
