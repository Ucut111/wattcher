import 'dart:convert';

class SetPinnedMessageRequest {
  final String? messageId;
  final String externalRoomId;

  const SetPinnedMessageRequest({
    required this.messageId,
    required this.externalRoomId,
  });

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'externalRoomId': externalRoomId,
    };
  }

  String toJson() => json.encode(toMap());
}
