import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/block_repository.dart';

class AddBlockUseCase {
  final IBlockRepository _blockRepository;

  const AddBlockUseCase({
    required IBlockRepository blockRepository,
  }) : _blockRepository = blockRepository;

  Future<Result<void, Exception>> call({
    required int targetId,
  }) async {
    try {
      final result = await _blockRepository.add(targetId: targetId);
      return Success(result);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
