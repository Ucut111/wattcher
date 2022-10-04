import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/user_repository.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';

class GetAllAvatarsUseCase {
  final IUserRepository _userRepository;

  const GetAllAvatarsUseCase(
    this._userRepository,
  );

  Future<Result<List<Avatar>, Exception>> call() async {
    try {
      return Success(await _userRepository.getAvas());
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
