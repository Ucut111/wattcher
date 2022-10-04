part of 'deleted_profile_bloc.dart';

@freezed
class DeletedProfileState with _$DeletedProfileState {
  const factory DeletedProfileState.loading() = _Loading;

  const factory DeletedProfileState.loaded({
    required String formatedDate,
  }) = _Loaded;
}
