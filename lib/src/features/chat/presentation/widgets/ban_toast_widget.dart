import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class BanToastWidget extends StatelessWidget {
  const BanToastWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.snackBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SvgIcon(
              Resources.block,
              color: CustomColors.gray200,
              size: 20,
            ),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                'Вас заблокировали. Вы не можете писать сообщения в чат',
                style: TextStyles.onPrimary(),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
