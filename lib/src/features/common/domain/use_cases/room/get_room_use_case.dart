import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/room_repository.dart';

import '../../../models/room.dart';

class GetRoomUseCase {
  final IRoomRepository _roomRepository;

  const GetRoomUseCase(
    this._roomRepository,
  );

  Future<Result<Room, Exception>> call({
    required String externalRoomId,
  }) async {
    try {
      final room = await _roomRepository.getRoom(externalRoomId: externalRoomId);
      return Success(room);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
