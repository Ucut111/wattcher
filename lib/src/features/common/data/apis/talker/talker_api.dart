import 'package:dio/dio.dart';

class TalkerApi {
  final Dio _dio;

  const TalkerApi(this._dio);

  Future<Response> getTalkers(String externalRoomId) => _dio.get('talker/room/$externalRoomId');
}
