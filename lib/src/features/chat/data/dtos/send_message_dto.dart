import 'dart:convert';

class SendMessageDto {
  final String? text;
  final String? externalRoomId;
  final String? mentionMessageId;

  SendMessageDto({
    this.text,
    this.externalRoomId,
    this.mentionMessageId
  });

  Map<String, dynamic> toMap() {
    return {
      if (text != null) 'text': text,
      if (externalRoomId != null) 'externalRoomId': externalRoomId,
      if (mentionMessageId != null) 'mentionMessageId': mentionMessageId,
    };
  }

  String toJson() => json.encode(toMap());
}
