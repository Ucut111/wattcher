import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/user_repository.dart';

class UpdateUserUseCase {
  final IUserRepository _userRepository;

  const UpdateUserUseCase({
    required IUserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<Result<void, Exception>> call({
    String? name,
    String? pic,
  }) async {
    try {
      await _userRepository.update(name: name, pic: pic);
      return Success(unit);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
