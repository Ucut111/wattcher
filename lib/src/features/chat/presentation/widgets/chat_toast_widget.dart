import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class ChatToastWidget extends StatelessWidget {
  final String iconPath;
  final String text;

  final void Function()? onClose;

  const ChatToastWidget({required this.iconPath, required this.text,this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 70.fh),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.snackBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgIcon(
                      iconPath,
                      color: CustomColors.textMain,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        text,
                        style: TextStyles.onPrimary(),
                      ),
                    ),
                    const SizedBox(width: 16),
                    if (onClose!=null)
                    GestureDetector(
                      onTap: onClose,
                      child: const Icon(
                        Icons.close,
                        color: CustomColors.textMain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
