import 'dart:convert';

class SetMessageVisibleRequest {
  final int messageId;
  final String externalRoomId;
  final bool isVisible;

  const SetMessageVisibleRequest({
    required this.messageId,
    required this.externalRoomId,
    required this.isVisible,
  });

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'externalRoomId': externalRoomId,
      'isVisible': isVisible,
    };
  }

  String toJson() => json.encode(toMap());
}
