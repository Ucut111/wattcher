import 'dart:convert';

import 'package:watchers_widget/src/features/common/models/user.dart';

class Talker {
  final int id;
  final bool hand;
  final bool isActive;
  final bool isMuted;
  final bool isBanned;
  final bool isModer;
  final bool isSupressed;
  final String role;
  final User user;

  Talker({
    required this.id,
    required this.hand,
    required this.isBanned,
    required this.isActive,
    required this.isMuted,
    required this.isModer,
    required this.isSupressed,
    required this.role,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hand': hand,
      'isActive': isActive,
      'isMuted': isMuted,
      'isBanned': isBanned,
      'isModer': isModer,
      'isSupressed': isSupressed,
      'role': role,
      'user': user.toJson(),
    };
  }

  factory Talker.fromMap(Map<String, dynamic> map) {
    return Talker(
      id: map['id']?.toInt() ?? 0,
      hand: map['hand'] ?? false,
      isActive: map['isActive'] ?? false,
      isMuted: map['isMuted'] ?? false,
      isBanned: map['isBanned'] ?? false,
      isModer: map['isModer'] ?? false,
      isSupressed: map['isSupressed'] ?? false,
      role: map['role'] ?? '',
      user: User.fromMap(map['user']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Talker.fromJson(String source) => Talker.fromMap(json.decode(source));

  Talker copyWith({
    int? id,
    bool? hand,
    bool? isActive,
    bool? isModer,
    bool? isMuted,
    bool? isBanned,
    bool? isSupressed,
    String? role,
    User? user,
  }) {
    return Talker(
      id: id ?? this.id,
      hand: hand ?? this.hand,
      isActive: isActive ?? this.isActive,
      isMuted: isMuted ?? this.isMuted,
      isBanned: isBanned ?? this.isBanned,
      isModer: isModer ?? this.isModer,
      isSupressed: isSupressed ?? this.isSupressed,
      role: role ?? this.role,
      user: user ?? this.user,
    );
  }
}
