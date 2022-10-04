import 'dart:convert';

class AuthCheckDto {
  final String externalId;

  AuthCheckDto({
    required this.externalId,
  });

  Map<String, dynamic> toMap() {
    return {
      'externalId': externalId,
    };
  }

  String toJson() => json.encode(toMap());
}
