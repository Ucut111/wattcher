import 'dart:convert';

class BlockUpdateDto {
  final int targetId;

  BlockUpdateDto({
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return {
      'targetId': targetId,
    };
  }

  String toJson() => json.encode(toMap());
}
