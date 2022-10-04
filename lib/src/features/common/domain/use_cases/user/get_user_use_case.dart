import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/user_repository.dart';
import 'package:watchers_widget/src/features/common/domain/models/user.dart';

class GetUserUseCase {
  final IUserRepository _userRepository;

  const GetUserUseCase({
    required IUserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<Result<AuthUser, Exception>> call() async {
    try {
      return Success(await _userRepository.get());
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
