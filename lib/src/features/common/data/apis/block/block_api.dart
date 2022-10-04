import 'package:dio/dio.dart';
import 'package:watchers_widget/src/features/common/data/apis/block/dtos/block_update_dto.dart';

class BlockApi {
  final Dio _dio;

  const BlockApi(this._dio);

  Future<Response> getAll() => _dio.get('/block');

  Future<Response> add(BlockUpdateDto blockUpdateDto) => _dio.post(
        '/block',
        data: blockUpdateDto.toJson(),
      );

  Future<Response> remove(BlockUpdateDto blockUpdateDto) => _dio.delete(
        '/block',
        data: blockUpdateDto.toJson(),
      );
}
