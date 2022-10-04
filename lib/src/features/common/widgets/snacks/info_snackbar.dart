import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class InfoSnackbar {
  final String titleText;
  final String leadingIconPath;

  const InfoSnackbar({
    required this.titleText,
    required this.leadingIconPath,
  });

  SnackBar build() => SnackBar(
        dismissDirection: DismissDirection.horizontal,
        margin: const EdgeInsets.only(bottom: 70, left: 16, right: 16),
        padding: EdgeInsets.zero,
        duration: const Duration(milliseconds: 1500),
        content: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _SnackBarBody(leadingIconPath: leadingIconPath, titleText: titleText),
              ],
            ),
          ],
        ),
        backgroundColor: CustomColors.snackBackground,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      );
}

class _SnackBarBody extends StatelessWidget {
  const _SnackBarBody({
    Key? key,
    required this.leadingIconPath,
    required this.titleText,
  }) : super(key: key);

  final String leadingIconPath;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    SvgIcon(
                      leadingIconPath,
                      color: CustomColors.textMain,
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        titleText,
                        style: TextStyles.onPrimary(),
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
              Builder(
                builder: (context) => GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                  child: const Icon(
                    Icons.close,
                    color: CustomColors.textMain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
