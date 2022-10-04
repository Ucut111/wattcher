import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/block_repository.dart';
import 'package:watchers_widget/src/features/common/domain/models/block_response.dart';

class GetBlocksUseCase {
  final IBlockRepository _blockRepository;

  const GetBlocksUseCase({
    required IBlockRepository blockRepository,
  }) : _blockRepository = blockRepository;

  Future<Result<BlockResponse, Exception>> call() async {
    try {
      final result = await _blockRepository.getBlocks();
      return Success(result);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
