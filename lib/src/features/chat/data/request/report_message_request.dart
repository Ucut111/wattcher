import 'dart:convert';

class ReportMessageRequest {
  final int messageId;
  final String reason;

  const ReportMessageRequest({
    required this.messageId,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'reason': reason,
    };
  }

  String toJson() => json.encode(toMap());
}
