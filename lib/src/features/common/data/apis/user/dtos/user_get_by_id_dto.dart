import 'dart:convert';

class UserGetByIdDto {
  final String id;

  UserGetByIdDto({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());
}
