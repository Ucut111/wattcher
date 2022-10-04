part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = _Loading;

  const factory SettingsState.settings({
    required List<BlockUser> blocks,
  }) = _Settings;

  const factory SettingsState.profile({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _Profile;

  const factory SettingsState.avatarPicker({
    required List<BlockUser> blocks,
    required BaseUser user,
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
    required bool isAvatarChanged,
  }) = _AvatarPicker;

  const factory SettingsState.inputEditor({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _InputEditor;

  const factory SettingsState.blackList({
    required List<BlockUser> blocks,
  }) = _BlockUsers;
}
