import 'dart:convert';

class SetBanRequest {
  final int userId;
  final String externalRoomId;
  final bool isBanned;

  const SetBanRequest({
    required this.userId,
    required this.externalRoomId,
    required this.isBanned,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'externalRoomId': externalRoomId,
      'isBanned': isBanned,
    };
  }

  String toJson() => json.encode(toMap());
}
