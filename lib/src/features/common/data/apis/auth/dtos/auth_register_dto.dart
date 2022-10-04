import 'dart:convert';

class AuthRegisterDto {
  final String externalId;

  AuthRegisterDto({
    required this.externalId,
  });

  Map<String, dynamic> toMap() {
    return {
      'externalId': externalId,
    };
  }

  String toJson() => json.encode(toMap());
}
