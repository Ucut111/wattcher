part of 'deleted_profile_bloc.dart';

@freezed
class DeletedProfileEvent with _$DeletedProfileEvent {
  const factory DeletedProfileEvent.restoreProfile({
    required BuildContext context,
  }) = RestoreProfileEvent;

  const factory DeletedProfileEvent.init() = _Init;
}
