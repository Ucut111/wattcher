import 'package:formz/formz.dart';

enum UserNameValidationError { empty, tooShort }

class UserName extends FormzInput<String, UserNameValidationError> {
  const UserName.pure() : super.pure('');
  const UserName.dirty([String value = '']) : super.dirty(value);

  @override
  UserNameValidationError? validator(String? value) {
    if (value == null || value.isEmpty == true) {
      return UserNameValidationError.empty;
    }
    if (value.length < 3) {
      return UserNameValidationError.tooShort;
    }

    return null;
  }
}

extension NameValidationErrorX on UserNameValidationError? {
  String? get description {
    if (this == null) return null;

    switch (this!) {
      case UserNameValidationError.empty:
        return 'Имя не может быть пустым';
      case UserNameValidationError.tooShort:
        return 'Имя должно содержать хотя бы 3 символа';
    }
  }
}
