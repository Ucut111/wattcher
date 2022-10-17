import 'package:connectivity/connectivity.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';

class GetConnectivityChangeStreamUseCase {
  final IChatRepository _chatRepository;

  const GetConnectivityChangeStreamUseCase({
    required IChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  Stream<ConnectivityResult> call() => _chatRepository.onConnectivityChanged$;
}
