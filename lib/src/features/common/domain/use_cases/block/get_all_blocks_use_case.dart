import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/block_repository.dart';
import 'package:watchers_widget/src/features/common/domain/models/user.dart';

class GetAllBlocksUseCase {
  final IBlockRepository _blockRepository;

  const GetAllBlocksUseCase({
    required IBlockRepository blockRepository,
  }) : _blockRepository = blockRepository;

  Future<Result<List<BlockUser>, Exception>> call() async {
    try {
      final result = await _blockRepository.getAll();
      return Success(result);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
