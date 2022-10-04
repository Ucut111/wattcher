import 'dart:convert';

class Room {
  final String externalRoomId;
  final bool isSpeak;
  final String status;
  final String name;
  final DateTime? startTime;
  final DateTime? endTime;
  final DateTime createdAt;

  Room({
    required this.externalRoomId,
    required this.isSpeak,
    required this.status,
    required this.name,
    this.startTime,
    this.endTime,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "externalRoomId": externalRoomId,
      "isSpeak": isSpeak,
      "status": status,
      "name": name,
      "startTime": startTime,
      "endTime": endTime,
      "createdAt": createdAt,
    };
  }

  factory Room.fromMap(Map<String, dynamic> map) {
    return Room(
      externalRoomId: map['externalRoomId'] ?? '',
      isSpeak: map['isSpeak'] ?? false,
      status: map['status'] ?? '',
      name: map['name'] ?? '',
      startTime: map['startTime'] == null ? null : DateTime.parse(map['startTime']),
      endTime: map['endTime'] == null ? null : DateTime.parse(map['endTime']),
      createdAt: map['createdAt'] == null ? DateTime.now() : DateTime.parse(map['createdAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Room.fromJson(String source) => Room.fromMap(json.decode(source));

  Room copyWith({
    String? externalRoomId,
    bool? isSpeak,
    String? status,
    String? name,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? createdAt,
  }) {
    return Room(
      externalRoomId: externalRoomId ?? this.externalRoomId,
      isSpeak: isSpeak ?? this.isSpeak,
      status: status ?? this.status,
      name: name ?? this.name,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
