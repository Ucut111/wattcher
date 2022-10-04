import 'dart:convert';

class EditMessageRequest {
  final String messageId;
  final String text;
  final String externalRoomId;
  final String? mentionMessageId;

  const EditMessageRequest({
    required this.messageId,
    required this.text,
    required this.externalRoomId,
    required this.mentionMessageId,
  });

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'text': text,
      'externalRoomId': externalRoomId,
      if (mentionMessageId != null) 'mentionMessageId': mentionMessageId,
    };
  }

  String toJson() => json.encode(toMap());
}
