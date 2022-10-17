import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.chatBackground,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const SvgIcon(
                    Resources.info,
                    size: 48,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Невозможно загрузить чат',
                        style: TextStyles.title(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Ошибка',
                        style: TextStyles.secondary(fontSize: 13),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: CustomColors.divider,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Попробуйте перезагрузить',
                style: TextStyles.errorTextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
