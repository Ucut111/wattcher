import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/popup_menu_item.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

class TalkerActionMenuTile extends StatelessWidget {
  final void Function() onTap;
  final Talker talker;
  final String title;
  final String subtitle;
  final String iconPath;
  final PopupMenuItemType type;

  const TalkerActionMenuTile({
    required this.onTap,
    required this.talker,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    this.type = PopupMenuItemType.basic,
  });

  @override
  Widget build(BuildContext context) {
    final color = type.color;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.title(fontSize: 13),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subtitle,
                  style: TextStyles.contribution,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          SvgIcon(
            iconPath,
            size: 32,
            color: color,
          ),
        ],
      ),
    );
  }
}
