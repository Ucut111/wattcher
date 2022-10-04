import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/user_repository.dart';

class DeleteUserUseCase {
  final IUserRepository _userRepository;

  const DeleteUserUseCase({
    required IUserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<Result<void, Exception>> call() async {
    try {
      return Success(await _userRepository.delete());
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
