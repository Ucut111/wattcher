import 'dart:convert';

import 'package:watchers_widget/src/features/common/models/user.dart';

class AuthUser {
  final String token;
  final String externalId;
  final User user;

  AuthUser({
    required this.token,
    required this.externalId,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'externalId': externalId,
    }..addAll(user.toMap());
  }

  factory AuthUser.fromMap(Map<String, dynamic> map) {
    return AuthUser(
      token: map['token'] ?? '',
      externalId: map['externalId'] ?? '',
      user: User.fromMap(map),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthUser.fromJson(String source) => AuthUser.fromMap(json.decode(source));

  AuthUser copyWith({
    int? id,
    String? token,
    String? externalId,
    User? user,
  }) {
    return AuthUser(
      token: token ?? this.token,
      externalId: externalId ?? this.externalId,
      user: user ?? this.user,
    );
  }
}
