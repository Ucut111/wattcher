import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/talker_repository.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

class CheckTalkerUseCase {
  final ITalkerRepository _talkerRepository;

  const CheckTalkerUseCase(this._talkerRepository);

  Future<Result<Talker, Exception>> call(Talker talker) async {
    try {
      return Success(await _talkerRepository.checkTalker(talker));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
