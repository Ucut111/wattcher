import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_socket_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/talker/check_talker_use_case.dart';

import '../../../common/models/talker.dart';

part 'talkers_bloc.freezed.dart';
part 'talkers_event.dart';
part 'talkers_state.dart';

class TalkersBloc extends Bloc<TalkersEvent, TalkersState> {
  final CheckTalkerUseCase _checkTalkerUseCase;
  final GetSocketUseCase _getSocketUseCase;

  TalkersBloc({
    required CheckTalkerUseCase checkTalkerUseCase,
    required GetSocketUseCase getSocketUseCase,
    required List<Talker> talkers,
  })  : _getSocketUseCase = getSocketUseCase,
        _checkTalkerUseCase = checkTalkerUseCase,
        super(TalkersState.loading()) {
    on<TalkersEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        fetchTalkers: (event) => _fetchTalkers(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
    add(TalkersEvent.init(talkers: talkers, socket: _getSocketUseCase.call().successValue));
  }

  late final Socket _socket;

  Future<void> _init(_Init event, Emitter<TalkersState> emit) async {
    emit(TalkersState.loading());
    final talkers = <Talker>[];
    for (final talker in event.talkers) {
      talkers.add((await _checkTalkerUseCase.call(talker)).successValue);
    }

    _socket = event.socket;
    _socket.on('userJoined', _onUserJoined);
    _socket.on('userLeft', _onUserLeftHandler);

    emit(TalkersState.loaded(talkers: talkers));
  }

  Future<void> _onUserJoined(dynamic data) async {
    if (state.isNotA<_Loaded>()) return;
    final loadedState = state.as<_Loaded>();
    Talker newTalker = Talker.fromMap(data['talker']);
    newTalker = (await _checkTalkerUseCase.call(newTalker)).successValue;
    final talkers = <Talker>[...loadedState.talkers, newTalker];
    add(TalkersEvent.fetchTalkers(talkers: talkers));
  }

  Future<void> _onUserLeftHandler(dynamic data) async {
    if (state.isNotA<_Loaded>()) return;
    final loadedState = state.as<_Loaded>();
    final talkers = <Talker>[];
    talkers.addAll(loadedState.talkers);
    Talker leftTalker = Talker.fromMap(data);
    leftTalker = (await _checkTalkerUseCase.call(leftTalker)).successValue;
    talkers.removeWhere((element) => element.id == leftTalker.id);
    add(TalkersEvent.fetchTalkers(talkers: talkers));
  }

  Future<void> _fetchTalkers(_FetchTalkers event, Emitter<TalkersState> emit) async {
    emit(TalkersState.loaded(talkers: event.talkers));
  }

  @override
  Future<void> close() {
    _socket.off('userJoined', _onUserJoined);
    _socket.off('userLeft', _onUserLeftHandler);
    return super.close();
  }
}
