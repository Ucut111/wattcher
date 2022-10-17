import 'package:flutter/cupertino.dart';
import 'package:watchers_widget/src/app/di/locator.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class DateHeaderWidget extends StatelessWidget {
  final DateTime date;

  const DateHeaderWidget({required this.date});

  String buildFormattedDate({required DateTime date}) {
    final DateTime today = DateTime.now().toLocal();
    if ((date.day == today.day) && (date.month == today.month) && (date.year == today.year)) {
      return 'Сегодня';
    }
    if ((date.day == (today.day - 1)) && (date.month == today.month) && (date.year == today.year)) {
      return 'Вчера';
    }
    if (date.year == today.year) {
      return buildDateFormat('dd MMMM').format(date);
    }
    return buildDateFormat('dd MMMM YYYY').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.fw,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.fh),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.fh, horizontal: 8.fw),
            decoration: BoxDecoration(
                color: CustomColors.gray600,
                border: Border.all(color: CustomColors.inputBorder),
                borderRadius: BorderRadius.circular(74.fh)),
            child: Text(
              buildFormattedDate(date: date.toLocal()),
              style: TextStyles.onPrimary(
                fontSize: 11,
                color: CustomColors.dateTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
