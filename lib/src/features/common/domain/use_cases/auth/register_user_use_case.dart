import 'package:watchers_widget/src/core/fp/result.dart';
import 'package:watchers_widget/src/features/common/data/apis/auth/dtos/auth_register_request.dart';
import 'package:watchers_widget/src/features/common/data/repositories/auth_repository.dart';
import 'package:watchers_widget/src/features/common/data/repositories/responses/register_response.dart';
import 'package:watchers_widget/watchers_widget.dart';

class RegisterUserUseCase {
  final IAuthRepository _authRepository;

  const RegisterUserUseCase({
    required IAuthRepository authRepository,
  }) : _authRepository = authRepository;

  Future<Result<RegisterResponse, Exception>> call({
    required String externalId,
    required StatusName? statusName,
  }) async {
    try {
      final registerResponse = await _authRepository.register(
        authRegisterRequest: AuthRegisterRequest(
          externalId: externalId,
          statusName: statusName,
        ),
      );
      return Success(registerResponse);
    } on Exception catch (error, stackTrace) {
      return Error(error, stackTrace);
    }
  }
}
