import 'dart:convert';

class SendMessageRequest {
  final String text;
  final String externalRoomId;
  final int? mentionMessageId;

  SendMessageRequest({
    required this.text,
    required this.externalRoomId,
    this.mentionMessageId,
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'externalRoomId': externalRoomId,
      if (mentionMessageId != null) 'mentionMessageId': mentionMessageId.toString(),
    };
  }

  String toJson() => json.encode(toMap());
}
