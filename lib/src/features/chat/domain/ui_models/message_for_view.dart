import 'package:watchers_widget/src/features/common/models/user.dart';

class MessageForView {
  final bool myMessage;
  final String id;
  final User sender;
  final String text;
  final String updatedAt;
  final MessageForView? mentionedMessage;

  MessageForView(
      {required this.myMessage,
      required this.id,
      required this.sender,
      required this.text,
      required this.updatedAt,
      this.mentionedMessage});

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'mentionedMessageId': mentionedMessageId,
  //     'senderId': senderId,
  //     'externalRoomId': externalRoomId,
  //     'text': text,
  //     'updatedAt': updatedAt,
  //   };
  // }
  //
  // factory MessageForView.fromMap(Map<String, dynamic> map) {
  //   return MessageForView(
  //     id: map['id']?.toString() ?? '',
  //     senderId: map['senderId']?.toString() ?? '',
  //     updatedAt: map['updatedAt']?.toString() ?? '',
  //     text: map['text']?.toString() ?? '',
  //     externalRoomId: map['externalRoomId']?.toString() ?? '',
  //     mentionedMessageId: map['mentionedMessageId']?.toString() ?? '',
  //   );
  // }
  //
  // String toJson() => json.encode(toMap());
  //
  // factory MessageForView.fromJson(String source) =>
  //     MessageForView.fromMap(json.decode(source));
  //
  // MessageForView copyWith({
  //   String? id,
  //   String? senderId,
  //   String? externalRoomId,
  //   String? text,
  //   String? updatedAt,
  //   String? mentionedMessageId,
  // }) {
  //   return MessageForView(
  //     id: id ?? this.id,
  //     text: text ?? this.text,
  //     updatedAt: updatedAt ?? this.updatedAt,
  //   );
  // }
}
