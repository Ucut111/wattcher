import 'package:flutter/material.dart';

import 'custom_colors.dart';

class TextStyles {
  TextStyles._();

  static const highlighted = TextStyle(
    color: CustomColors.primary,
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle title({
    double fontSize = 17,
    FontWeight fontWeight = FontWeight.w500,
    Color color = CustomColors.textMain,
  }) =>
      TextStyle(
        color: color,
        fontFamily: 'Inter',
        fontWeight: fontWeight,
        fontSize: fontSize,
      );

  static TextStyle subtitle1({Color? color, double fontSize = 15}) => TextStyle(
        color: color ?? CustomColors.contributionTextColor,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      );

  static const subtitle2 = TextStyle(
    color: CustomColors.paragraphTextColor,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w300,
    fontSize: 10,
  );

  static const input = TextStyle(
    color: CustomColors.textMain,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const hint = TextStyle(
    color: CustomColors.textTertiary,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const secondary = TextStyle(
    color: CustomColors.textSecondary,
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle onPrimary({
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.w400,
    Color color = CustomColors.onPrimary,
  }) =>
      TextStyle(
        color: color,
        fontFamily: 'Inter',
        fontSize: fontSize,
        fontWeight: fontWeight,
      );

  static const contribution = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: CustomColors.textSecondary,
  );

  static const primary = TextStyle(
    color: CustomColors.textMain,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static TextStyle errorTextStyle({
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      TextStyle(
        fontFamily: 'Inter',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: CustomColors.danger,
      );

  static const setting = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: CustomColors.textSecondary,
  );
}
