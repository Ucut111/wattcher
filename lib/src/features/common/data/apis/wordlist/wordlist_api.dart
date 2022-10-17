import 'package:dio/dio.dart';

class WordlistApi {
  final Dio _dio;

  const WordlistApi(this._dio);

  Future<Response> getWordlist() => _dio.get('/wordlist');
}
