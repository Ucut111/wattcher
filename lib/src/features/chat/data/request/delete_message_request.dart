import 'dart:convert';

class DeleteMessageRequest {
  final String messageId;
  final String externalRoomId;

  const DeleteMessageRequest({
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
