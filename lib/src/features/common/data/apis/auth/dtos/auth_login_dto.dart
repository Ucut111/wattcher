import 'dart:convert';

class AuthLoginDto {
  final int id;
  final String token;

  AuthLoginDto({
    required this.id,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
    };
  }

  String toJson() => json.encode(toMap());
}
