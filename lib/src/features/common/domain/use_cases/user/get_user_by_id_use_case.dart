import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/user_repository.dart';
import 'package:watchers_widget/src/features/common/domain/models/user.dart';

class GetUserByIdUseCase {
  final IUserRepository _userRepository;

  const GetUserByIdUseCase({
    required IUserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<Result<AuthUser, Exception>> call({
    required String id,
  }) async {
    try {
      final result = await _userRepository.getById(id: id);
      return Success(result);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
