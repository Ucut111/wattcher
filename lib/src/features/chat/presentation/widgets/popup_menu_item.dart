import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class PopupMenuItemWidget extends StatelessWidget {
  final String titleText;
  final String iconPath;
  final PopupMenuItemType popupMenuItemType;
  final void Function() onTap;

  const PopupMenuItemWidget({
    required this.titleText,
    required this.iconPath,
    required this.onTap,
    this.popupMenuItemType = PopupMenuItemType.basic,
  });

  @override
  Widget build(BuildContext context) {
    final color = popupMenuItemType.color;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleText,
                style: TextStyle(
                  fontSize: 17,
                  color: color,
                ),
              ),
              SvgIcon(
                iconPath,
                color: color,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum PopupMenuItemType { basic, positive, destructive }

extension PopupMenuItemTypeX on PopupMenuItemType {
  T mapValue<T>({
    required T basic,
    required T positive,
    required T destructive,
  }) {
    switch (this) {
      case PopupMenuItemType.basic:
        return basic;
      case PopupMenuItemType.positive:
        return positive;
      case PopupMenuItemType.destructive:
        return destructive;
    }
  }

  Color get color => mapValue(
        basic: CustomColors.paragraphTextColor,
        positive: CustomColors.positive,
        destructive: CustomColors.danger,
      );
}
