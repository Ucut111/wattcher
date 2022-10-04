import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/talker_repository.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

class GetTalkersUseCase {
  final ITalkerRepository _talkerRepository;

  const GetTalkersUseCase(this._talkerRepository);

  Future<Result<List<Talker>, Exception>> call(String externalRoomId) async {
    try {
      return Success(await _talkerRepository.getTalkers(externalRoomId));
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
