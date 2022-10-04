import 'dart:convert';

import 'package:watchers_widget/src/features/common/domain/models/user.dart';

class RegisterResponse {
  final bool isNew;
  final bool isDeleted;
  final String accessToken;
  final AuthUser user;
  RegisterResponse({
    required this.isNew,
    required this.isDeleted,
    required this.accessToken,
    required this.user,
  });

  factory RegisterResponse.fromMap(Map<String, dynamic> map) {
    return RegisterResponse(
      isNew: map['isNew'] ?? false,
      isDeleted: map['isDeleted'] ?? false,
      accessToken: map['access_token'] ?? '',
      user: AuthUser.fromMap(map['user']),
    );
  }

  factory RegisterResponse.fromJson(String source) => RegisterResponse.fromMap(json.decode(source));
}
