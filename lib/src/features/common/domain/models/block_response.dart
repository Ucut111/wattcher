import 'dart:convert';

import 'package:watchers_widget/src/features/common/domain/models/user.dart';

class BlockResponse {
  final List<BlockUser> initiator;
  final List<BlockUser> target;

  const BlockResponse({
    required this.initiator,
    required this.target,
  });

  factory BlockResponse.fromMap(Map<String, dynamic> map) {
    return BlockResponse(
      initiator: List<BlockUser>.from(map['initiator']?.map((x) => BlockUser.fromMap(x))),
      target: List<BlockUser>.from(map['target']?.map((x) => BlockUser.fromMap(x))),
    );
  }

  factory BlockResponse.fromJson(String source) => BlockResponse.fromMap(json.decode(source));
}
