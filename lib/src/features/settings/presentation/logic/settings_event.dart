part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = _Init;

  const factory SettingsEvent.toProfile({
    required List<BlockUser> blocks,
  }) = _ToProfile;

  const factory SettingsEvent.toBlackList({
    required List<BlockUser> blocks,
  }) = _ToBlackList;

  const factory SettingsEvent.backToSettings({
    required List<BlockUser> blocks,
  }) = _BackToSettings;

  const factory SettingsEvent.toAvatarPicker({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _ToAvatarPicker;

  const factory SettingsEvent.selectAvatar({
    required List<BlockUser> blocks,
    required BaseUser user,
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
  }) = _SelectAvatar;

  const factory SettingsEvent.submitAvatar({
    required List<BlockUser> blocks,
    required BaseUser user,
    required Avatar selectedAvatar,
  }) = _SubmitAvatar;

  const factory SettingsEvent.backToProfile({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _BackToProfile;

  const factory SettingsEvent.showInput({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _ShowInput;

  const factory SettingsEvent.submitInput({
    required List<BlockUser> blocks,
    required BaseUser user,
  }) = _SubmitInput;

  const factory SettingsEvent.showUnblockDialog({
    required BuildContext context,
    required BlockUser block,
    required List<BlockUser> blocks,
  }) = _ShowUnblockDialog;
}
