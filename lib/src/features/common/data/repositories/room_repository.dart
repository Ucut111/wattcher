import 'package:watchers_widget/src/core/extensions/future_dio_response_x.dart';
import 'package:watchers_widget/src/features/common/data/apis/room/requests/get_room_request.dart';
import 'package:watchers_widget/src/features/common/data/apis/room/room_api.dart';
import 'package:watchers_widget/src/features/common/models/room.dart';

abstract class IRoomRepository {
  Future<Room> getRoom({
    required String externalRoomId,
  });
}

class RoomRepository implements IRoomRepository {
  final RoomApi _roomApi;

  const RoomRepository(
    this._roomApi,
  );

  @override
  Future<Room> getRoom({required String externalRoomId}) => _roomApi
      .getRoom(GetRoomRequest(externalRoomId: externalRoomId))
      .computeResponse(Room.fromMap);
}
