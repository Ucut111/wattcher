import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/watchers_widget.dart';

class VipBadgeWidget extends StatelessWidget {
  final StatusName statusName;
  final bool isSettings;

  const VipBadgeWidget({
    required this.statusName,
    this.isSettings = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isSettings ? 8 : 100),
        color: statusName.badgeColor,
        border: isSettings
            ? Border.all(
                width: 1,
                color: CustomColors.chatBackground,
                style: BorderStyle.solid,
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1),
        child: Text(
          isSettings ? statusName.name : statusName.name.toLowerCase(),
          style: TextStyles.onPrimary(),
        ),
      ),
    );
  }
}
