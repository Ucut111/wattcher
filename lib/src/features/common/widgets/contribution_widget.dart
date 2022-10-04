import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';

class ContributionWidget extends StatelessWidget {
  const ContributionWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Работает на базе Watchers.io',
      textAlign: TextAlign.center,
      style: TextStyles.contribution.copyWith(color: CustomColors.textTertiary),
    );
  }
}
