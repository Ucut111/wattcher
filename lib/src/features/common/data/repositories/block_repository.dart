import 'package:flutter/foundation.dart';
import 'package:watchers_widget/src/features/common/data/apis/block/block_api.dart';
import 'package:watchers_widget/src/features/common/data/apis/block/dtos/block_update_dto.dart';
import 'package:watchers_widget/src/features/common/domain/models/block_response.dart';

abstract class IBlockRepository {
  Future<void> add({
    required int targetId,
  });

  Future<void> remove({
    required int targetId,
  });

  Future<BlockResponse> getBlocks();
}

class BlockRepository implements IBlockRepository {
  final BlockApi _blockApi;

  const BlockRepository(this._blockApi);

  @override
  Future<void> add({
    required int targetId,
  }) =>
      _blockApi.add(BlockUpdateDto(targetId: targetId));

  @override
  Future<void> remove({
    required int targetId,
  }) =>
      _blockApi.remove(BlockUpdateDto(targetId: targetId));

  @override
  Future<BlockResponse> getBlocks() => _blockApi
      .getAll()
      .then((response) => compute(BlockResponse.fromMap, response.data as Map<String, dynamic>));
}
