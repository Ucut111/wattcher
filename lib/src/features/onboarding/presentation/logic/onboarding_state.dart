part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState.loading() = _Loading;

  factory OnboardingState.main() = _Main;

  factory OnboardingState.showChat() = _ShowChat;

  factory OnboardingState.showDeleted({
    required DateTime deletedAt,
  }) = _ShowDeleted;

  factory OnboardingState.licenceDetails({
    required String licenceText,
  }) = _LicenceDetails;

  factory OnboardingState.form({
    required String userName,
    String? errorDescription,
  }) = _Form;

  factory OnboardingState.input() = _Input;

  factory OnboardingState.avatarPicker({
    required Avatar selectedAvatar,
    required List<Avatar> avatars,
    required String userName,
  }) = _AvatarPicker;
}

extension FormStateX on _Form {
  bool get isSubmitActive => errorDescription == null && userName.isNotEmpty;
}
