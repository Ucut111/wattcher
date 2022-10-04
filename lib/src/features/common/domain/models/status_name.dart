import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

enum StatusName { club, silver, gold, platinum }

extension StatusNameX on StatusName {
  String get name => describeEnum(this).toUpperCase();

  T map<T>({
    required T Function() club,
    required T Function() silver,
    required T Function() gold,
    required T Function() platinum,
  }) {
    switch (this) {
      case StatusName.club:
        return club();
      case StatusName.silver:
        return silver();
      case StatusName.gold:
        return gold();
      case StatusName.platinum:
        return platinum();
    }
  }

  Color get badgeColor => map(
        club: () => CustomColors.club,
        silver: () => CustomColors.silver,
        gold: () => CustomColors.gold,
        platinum: () => CustomColors.platinum,
      );

  static StatusName? fromString(String vipStatus) {
    for (final status in StatusName.values) {
      if (vipStatus == status.name) {
        return status;
      }
    }

    return null;
  }
}
