part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.init({
    required String externalId,
  }) = _Init;

  const factory OnboardingEvent.showLicence(Licence licence) = _ShowLicence;

  const factory OnboardingEvent.acceptLicences() = _AcceptLicences;

  const factory OnboardingEvent.backToMain() = _BackToMain;

  const factory OnboardingEvent.showInput() = _ShowInput;

  const factory OnboardingEvent.submitInput() = _SubmitInput;

  const factory OnboardingEvent.submitForm({
    required String userName,
  }) = _SubmitForm;

  const factory OnboardingEvent.backToForm({
    required String userName,
  }) = _BackToForm;

  const factory OnboardingEvent.selectAvatar({
    required List<Avatar> avatars,
    required Avatar selectedAvatar,
    required String userName,
  }) = _SelectAvatar;

  const factory OnboardingEvent.submitAvatar({
    required Avatar selectedAvatar,
    required List<Avatar> avatars,
    required String userName,
  }) = _SubmitAvatar;
}
