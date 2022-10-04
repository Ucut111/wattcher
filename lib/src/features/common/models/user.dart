import 'dart:convert';

import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';
import 'package:watchers_widget/watchers_widget.dart';

class User {
  final int id;
  final String token;
  final String externalId;
  final String name;
  final String pic;
  final String email;
  final bool isModer;
  final bool isBanned;
  final int color;
  final bool isVip;
  final String vipStatus;
  final bool isInvitedGuest;
  final DateTime? deletedAt;

  Avatar get avatar => Avatar.fromPic(pic);
  StatusName? get statusName => StatusNameX.fromString(vipStatus);

  User({
    required this.id,
    required this.token,
    required this.externalId,
    required this.name,
    required this.pic,
    required this.email,
    required this.isModer,
    required this.isBanned,
    required this.color,
    required this.isVip,
    required this.vipStatus,
    required this.isInvitedGuest,
    required this.deletedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
      'externalId': externalId,
      'name': name,
      'pic': pic,
      'email': email,
      'isModer': isModer,
      'isBanned': isBanned,
      'color': color,
      'isVip': isVip,
      'vipStatus': vipStatus,
      'isInvitedGuest': isInvitedGuest,
      'deletedAt': deletedAt?.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      token: map['token'] ?? '',
      externalId: map['externalId'] ?? '',
      name: map['name'] ?? '',
      pic: map['pic'] ?? '',
      email: map['email'] ?? '',
      isModer: map['isModer'] ?? false,
      isBanned: map['isBanned'] ?? false,
      color: map['color']?.toInt() ?? 0,
      isVip: map['isVip'] ?? false,
      vipStatus: map['vipStatus'] ?? '',
      isInvitedGuest: map['isInvitedGuest'] ?? false,
      deletedAt: map['deletedAt'] != null ? DateTime.parse(map['deletedAt']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    int? id,
    String? token,
    String? externalId,
    String? name,
    String? pic,
    String? email,
    bool? isModer,
    bool? isBanned,
    int? color,
    bool? isVip,
    String? vipStatus,
    bool? isInvitedGuest,
    DateTime? deletedAt,
  }) {
    return User(
      id: id ?? this.id,
      token: token ?? this.token,
      externalId: externalId ?? this.externalId,
      name: name ?? this.name,
      pic: pic ?? this.pic,
      email: email ?? this.email,
      isModer: isModer ?? this.isModer,
      isBanned: isBanned ?? this.isBanned,
      color: color ?? this.color,
      isVip: isVip ?? this.isVip,
      vipStatus: vipStatus ?? this.vipStatus,
      isInvitedGuest: isInvitedGuest ?? this.isInvitedGuest,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}
