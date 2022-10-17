part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = _Loading;

  const factory SettingsState.settings({
    List<User>? blocks,
  }) = _Settings;

  const factory SettingsState.profile({
    required User? user,
  }) = _Profile;

  const factory SettingsState.avatarPicker({
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
    required bool isAvatarChanged,
  }) = _AvatarPicker;

  const factory SettingsState.inputEditor() = _InputEditor;

  const factory SettingsState.blackList({
    required List<User>? blocks,
  }) = _BlockUsers;
}
