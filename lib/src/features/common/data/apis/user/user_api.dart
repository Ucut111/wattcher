import 'package:dio/dio.dart';
import 'package:watchers_widget/src/features/common/data/apis/user/dtos/update_user_dto.dart';
import 'package:watchers_widget/src/features/common/data/apis/user/dtos/user_get_by_id_dto.dart';

class UserApi {
  final Dio _dio;

  const UserApi(
    this._dio,
  );

  Future<Response> update(UserUpdateDto userUpdateDto) => _dio.patch(
        'user/me',
        data: userUpdateDto.toJson(),
      );

  Future<Response> get() => _dio.get(
        'user/me',
      );

  Future<Response> getById(UserGetByIdDto userGetByIdDto) => _dio.post(
        'user/me',
        data: userGetByIdDto.toJson(),
      );

  Future<Response> delete() => _dio.delete(
        'user',
      );

  Future<Response> getAvas() => _dio.get(
        'user/getAvas',
      );
}
