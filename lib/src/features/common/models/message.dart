import 'dart:convert';
import 'package:watchers_widget/src/app/di/locator.dart';

import 'package:watchers_widget/src/features/common/models/talker.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';

class Message {
  final int id;
  final String text;
  final String type;
  final bool isVisible;
  final bool isPinned;
  final bool hasPreview;
  final String externalRoomId;
  final int creatorId;
  final Message? mentionMessage;
  final Talker talker;
  final String? updatedAt;
  final String createdAt;
  final String serverDateTime;

  // Todo(Dartloli): add message factory (check user.id before constuctor)
  bool? isMyMessage;
  bool? isMentionMe;

  Message({
    required this.id,
    required this.text,
    required this.type,
    required this.isVisible,
    required this.isPinned,
    required this.hasPreview,
    required this.externalRoomId,
    required this.creatorId,
    required this.serverDateTime,
    this.mentionMessage,
    required this.talker,
    this.updatedAt,
    required this.createdAt,
    this.isMyMessage,
    this.isMentionMe,
  });

  Map<String, dynamic> toMap() {
    return {
      //'id': id,
      'text': text,
      'externalRoomId': externalRoomId,
      'mentionMessageId': mentionMessage?.id,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    String? _formatDate(String? serverDate) {
      if (serverDate == null) {
        return null;
      } else {
        final DateTime serverDateTime = DateTime.parse(serverDate);
        final DateTime today = DateTime.now();
        if ((serverDateTime.day == today.day) &&
            (serverDateTime.month == today.month) &&
            (serverDateTime.year == today.year)) {
          return buildDateFormat('HH:mm').format(serverDateTime.toLocal());
        } else {
          return buildDateFormat('HH:mm, dd MMMM').format(serverDateTime.toLocal());
        }
      }
    }

    return Message(
      id: map['id']?.toInt() ?? '',
      text: map['text'] ?? '',
      type: map['type'] ?? '',
      isVisible: map['isVisible'] ?? false,
      isPinned: map['isPinned'] ?? false,
      hasPreview: map['hasPreview'] ?? false,
      externalRoomId: map['externalRoomId'] ?? '',
      creatorId: map['creatorId']?.toInt() ?? 0,
      mentionMessage: map['mentionMessage'] != null ? Message.fromMap(map['mentionMessage']) : null,
      talker: Talker.fromMap(map['talker']),
      updatedAt: _formatDate(map['updatedAt']),
      createdAt: _formatDate(map['createdAt']) ?? '',
      serverDateTime: map['createdAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));

  Message copyWith({
    int? id,
    String? text,
    String? type,
    bool? isVisible,
    bool? isPinned,
    bool? hasPreview,
    String? externalRoomId,
    int? creatorId,
    Message? mentionMessage,
    Talker? talker,
    User? user,
    String? updatedAt,
    String? createdAt,
    String? serverDateTime,
  }) {
    return Message(
        id: id ?? this.id,
        text: text ?? this.text,
        type: type ?? this.type,
        isVisible: isVisible ?? this.isVisible,
        isPinned: isPinned ?? this.isPinned,
        hasPreview: hasPreview ?? this.hasPreview,
        externalRoomId: externalRoomId ?? this.externalRoomId,
        creatorId: creatorId ?? this.creatorId,
        mentionMessage: mentionMessage ?? this.mentionMessage,
        talker: talker ?? this.talker,
        updatedAt: updatedAt ?? this.updatedAt,
        createdAt: createdAt ?? this.createdAt,
        serverDateTime: serverDateTime ?? this.serverDateTime,
        isMyMessage: isMyMessage,
        isMentionMe: isMentionMe);
  }
}
