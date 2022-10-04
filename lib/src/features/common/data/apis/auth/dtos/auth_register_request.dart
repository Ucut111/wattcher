import 'dart:convert';

import 'package:watchers_widget/watchers_widget.dart';

class AuthRegisterRequest {
  final String externalId;
  final StatusName? statusName;

  AuthRegisterRequest({
    required this.externalId,
    required this.statusName,
  });

  Map<String, dynamic> toMap() {
    return {
      'externalId': externalId,
      if (statusName != null) 'vipStatus': statusName!.name,
      if (statusName != null) 'isVip': true,
    };
  }

  String toJson() => json.encode(toMap());
}
