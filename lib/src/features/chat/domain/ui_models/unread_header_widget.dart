import 'package:flutter/cupertino.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class UnreadHeaderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.fw,
      height: 36.fh,
      child: Container(
        color: CustomColors.gray800,
        child: Center(
          child: Text(
            'Непрочитанные сообщения',
            style: TextStyles.onPrimary(
                fontSize: 12, color: CustomColors.textSecondary),
          ),
        ),
      ),
    );
  }

}