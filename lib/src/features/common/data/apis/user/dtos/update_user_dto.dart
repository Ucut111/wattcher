import 'dart:convert';

class UserUpdateDto {
  final String? name;
  final String? pic;

  UserUpdateDto({
    this.name,
    this.pic,
  });

  Map<String, dynamic> toMap() {
    return {
      if (name != null) 'name': name,
      if (pic != null) 'pic': pic,
    };
  }

  String toJson() => json.encode(toMap());
}
