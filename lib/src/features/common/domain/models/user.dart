import 'dart:convert';

import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';

class BaseUser {
  final String name;
  final String pic;
  final String email;
  final bool isModer;
  final bool isBanned;
  final int color;

  Avatar get avatar => Avatar.fromPic(pic);

  BaseUser({
    required this.name,
    required this.pic,
    required this.email,
    required this.isModer,
    required this.isBanned,
    required this.color,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'pic': pic,
      'email': email,
      'isModer': isModer,
      'isBanned': isBanned,
      'color': color,
    };
  }

  factory BaseUser.fromMap(Map<String, dynamic> map) {
    return BaseUser(
      name: map['name'] ?? '',
      pic: map['pic'] ?? '',
      email: map['email'] ?? '',
      isModer: map['isModer'] ?? false,
      isBanned: map['isBanned'] ?? false,
      color: map['color']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseUser.fromJson(String source) => BaseUser.fromMap(json.decode(source));

  BaseUser copyWith({
    String? name,
    String? pic,
    String? email,
    bool? isModer,
    bool? isBanned,
    int? color,
  }) {
    return BaseUser(
      name: name ?? this.name,
      pic: pic ?? this.pic,
      email: email ?? this.email,
      isModer: isModer ?? this.isModer,
      isBanned: isBanned ?? this.isBanned,
      color: color ?? this.color,
    );
  }
}

class AuthUser {
  final int id;
  final String token;
  final String externalId;
  final BaseUser baseUser;

  AuthUser({
    required this.id,
    required this.token,
    required this.externalId,
    required this.baseUser,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
      'externalId': externalId,
    }..addAll(baseUser.toMap());
  }

  factory AuthUser.fromMap(Map<String, dynamic> map) {
    return AuthUser(
      id: map['id']?.toInt() ?? 0,
      token: map['token'] ?? '',
      externalId: map['externalId'] ?? '',
      baseUser: BaseUser.fromMap(map),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthUser.fromJson(String source) => AuthUser.fromMap(json.decode(source));

  AuthUser copyWith({
    int? id,
    String? token,
    String? externalId,
    BaseUser? baseUser,
  }) {
    return AuthUser(
      id: id ?? this.id,
      token: token ?? this.token,
      externalId: externalId ?? this.externalId,
      baseUser: baseUser ?? this.baseUser,
    );
  }
}

class BlockUser {
  final int id;
  final BaseUser baseUser;

  BlockUser({
    required this.id,
    required this.baseUser,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    }..addAll(baseUser.toMap());
  }

  factory BlockUser.fromMap(Map<String, dynamic> map) {
    return BlockUser(
      id: map['id']?.toInt() ?? 0,
      baseUser: BaseUser.fromMap(map),
    );
  }

  String toJson() => json.encode(toMap());

  factory BlockUser.fromJson(String source) => BlockUser.fromMap(json.decode(source));
}
