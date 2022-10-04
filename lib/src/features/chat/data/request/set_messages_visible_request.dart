import 'dart:convert';

class SetMessagesVisibleRequest {
  final String userId;
  final String externalRoomId;
  final bool isVisible;

  const SetMessagesVisibleRequest({
    required this.userId,
    required this.externalRoomId,
    required this.isVisible,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'externalRoomId': externalRoomId,
      'isVisible': isVisible,
    };
  }

  String toJson() => json.encode(toMap());
}
