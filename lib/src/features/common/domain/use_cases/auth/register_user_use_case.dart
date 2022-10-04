import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/repositories/auth_repository.dart';
import 'package:watchers_widget/src/features/common/data/repositories/responses/register_response.dart';

class RegisterUserUseCase {
  final IAuthRepository _authRepository;

  const RegisterUserUseCase({
    required IAuthRepository authRepository,
  }) : _authRepository = authRepository;

  Future<Result<RegisterResponse, Exception>> call({
    required String externalId,
  }) async {
    try {
      final registerResponse = await _authRepository.register(externalId: externalId);
      return Success(registerResponse);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
