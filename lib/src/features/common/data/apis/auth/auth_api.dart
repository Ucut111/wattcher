import 'package:dio/dio.dart';
import 'package:watchers_widget/src/features/common/data/apis/auth/dtos/auth_check_dto.dart';
import 'package:watchers_widget/src/features/common/data/apis/auth/dtos/auth_login_dto.dart';
import 'package:watchers_widget/src/features/common/data/apis/auth/dtos/auth_register_dto.dart';

class AuthApi {
  final Dio _dio;

  const AuthApi(
    this._dio,
  );

  Future<Response> register(AuthRegisterDto authRegisterDto) => _dio.post(
        'auth/register',
        data: authRegisterDto.toJson(),
      );

  Future<Response> check(AuthCheckDto authCheckDto) => _dio.post(
        'auth/check',
        data: authCheckDto.toJson(),
      );

  Future<Response> login(AuthLoginDto authLoginDto) => _dio.post(
        'auth/login',
        data: authLoginDto.toJson(),
      );

  Future<Response> decrypt() => _dio.post(
        'auth/decrypt',
      );
}
