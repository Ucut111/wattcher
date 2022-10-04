import 'dart:convert';

import 'package:watchers_widget/src/features/common/models/user.dart';

class BlockResponse {
  final List<User> initiator;
  final List<User> target;

  const BlockResponse({
    required this.initiator,
    required this.target,
  });

  factory BlockResponse.fromMap(Map<String, dynamic> map) {
    return BlockResponse(
      initiator: List<User>.from(map['initiator']?.map((x) => User.fromMap(x))),
      target: List<User>.from(map['target']?.map((x) => User.fromMap(x))),
    );
  }

  factory BlockResponse.fromJson(String source) => BlockResponse.fromMap(json.decode(source));
}
