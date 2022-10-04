part of 'talkers_bloc.dart';

@freezed
class TalkersState with _$TalkersState {
  factory TalkersState.loading() = _Loading;
  factory TalkersState.loaded({
    required List<Talker> talkers
  }) = _Loaded;
}

extension TalkersStateX on TalkersState {
  T as<T extends TalkersState>() => this as T;
  bool isA<T extends TalkersState>() => this is T;
  bool isNotA<T extends TalkersState>() => !isA<T>();
}