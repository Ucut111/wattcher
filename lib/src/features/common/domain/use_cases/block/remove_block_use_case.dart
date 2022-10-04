import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/block_repository.dart';

class RemoveBlockUseCase {
  final IBlockRepository _blockRepository;

  const RemoveBlockUseCase({
    required IBlockRepository blockRepository,
  }) : _blockRepository = blockRepository;

  Future<Result<void, Exception>> call({
    required int targetId,
  }) async {
    try {
      final result = await _blockRepository.remove(targetId: targetId);
      return Success(result);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
