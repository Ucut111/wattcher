import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const primary = Color(0xFF00AB4E);

  static const onPrimary = Colors.white;

  static const secondary = Color(0xFFF0F0F0);

  static const gray200 = Color(0xFF555555);

  static const gray400 = Color(0xFF8A8B8A);

  static const gray800 = Color(0xFFE9E9E9);

  static const transparentBarrer = Colors.black54;

  static const inputFilling = Color(0xFFFAFAFA);

  static const inputBorder = Color(0xFFD5D3D3);

  static const divider = Color(0xFFE5E5E5);

  static const myMessageColor = Color(0xFFF2FFF8);

  static const chatBackground = Color(0xFFF5F5F5);

  static const textMain = Color(0xFF292929);

  static const textSecondary = Color(0xFF7A7A7A);

  static const textTertiary = Color(0xFFA1A3A1);

  static const paragraphTextColor = Color.fromRGBO(0, 0, 0, 0.8);

  static const contributionTextColor = Color.fromRGBO(255, 255, 255, 0.4);

  static const modalBackground = Colors.white;

  static const danger = Color(0xFFFF2D55);

  static const snackBackground = Color(0xA4A4A4B8); // Color.fromRGBO(164, 164, 164, 0.72);

  static const blockColor = Color.fromRGBO(255, 45, 85, 0.2);

  static const positive = Color(0xFF00B347);

  static const highlightColor = Color.fromRGBO(121, 121, 121, 1);

  // Vip statuses
  static const club = Color(0xFF00AB4E);
  static const silver = Color(0xFF555859);
  static const gold = Color(0xFF6C5C33);
  static const platinum = Color(0xFF323232);

  static Color getUserColor(int index) {
    if (index >= _userColors.length) {
      return _userColors[0];
    }
    return _userColors[index];
  }

  static const _userColors = [
    Color(0xff000099),
    Color(0xff00ab4e),
    Color(0xff8a8b8a),
    Color(0xffc73834),
    Color(0xffd46e3b),
    Color(0xff00a775),
    Color(0xff007dc5),
    Color(0xffb1a000),
  ];
}
