part of 'talkers_bloc.dart';

@freezed
class TalkersEvent with _$TalkersEvent{

  const factory TalkersEvent.init({
    required List<Talker> talkers,
    required Socket socket
}) = _Init;
  const factory TalkersEvent.fetchTalkers({
    required List<Talker> talkers,
  }) = _FetchTalkers;
}