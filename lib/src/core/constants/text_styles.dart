import 'package:flutter/material.dart';

import 'custom_colors.dart';

class TextStyles {
  TextStyles._();

  static const highlighted = TextStyle(
    color: CustomColors.primaryColor,
    fontFamily: '.SF UI Display',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle title({
    double fontSize = 17,
    FontWeight fontWeight = FontWeight.w500,
    Color color = CustomColors.titleText
  }) =>
      TextStyle(
        color: color,
        fontFamily: '.SF UI Display',
        fontWeight: fontWeight,
        fontSize: fontSize,
      );

  static TextStyle subtitle1({
    Color? color,
    double fontSize = 15
  }) =>
      TextStyle(
        color: color ?? CustomColors.contributionTextColor,
        fontFamily: '.SF UI Display',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      );

  static const subtitle2 = TextStyle(
    color: CustomColors.paragraphTextColor,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.w300,
    fontSize: 10,
  );

  static const input = TextStyle(
    color: CustomColors.titleText,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const hint = TextStyle(
    color: CustomColors.borderColor,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const paragraph = TextStyle(
    color: CustomColors.paragraphTextColor,
    fontFamily: '.SF UI Display',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const contribution = TextStyle(
    fontFamily: '.SF UI Display',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: CustomColors.contributionTextColor,
  );

  static const messageText = TextStyle(
    color: CustomColors.titleText,
    fontFamily: '.SF UI Display',
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static TextStyle errorTextStyle({
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      TextStyle(
        fontFamily: '.SF UI Display',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: CustomColors.danger,
      );

  static const setting = TextStyle(
    fontFamily: '.SF UI Display',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: CustomColors.settingText,
  );
}
