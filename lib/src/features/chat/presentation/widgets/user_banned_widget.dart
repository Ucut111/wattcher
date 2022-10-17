import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class UserBannedWidget extends StatelessWidget {
  const UserBannedWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.fw),
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.modalBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.fw, vertical: 28.fh),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Администратор заблокировал вас за нарушение правил сервиса',
                style: TextStyles.title(fontWeight: FontWeight.w600, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.fh),
              Text(
                'Если у вас есть вопросы напишите нам ligastavok@watchers.io',
                style: TextStyles.secondary(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
