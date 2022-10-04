import 'package:dio/dio.dart';
import 'package:watchers_widget/src/features/common/data/apis/room/requests/get_room_request.dart';

class RoomApi {
  final Dio _dio;

  const RoomApi(this._dio);

  Future<Response> getRoom(GetRoomRequest request) => _dio.get('/room/${request.externalRoomId}');
}
