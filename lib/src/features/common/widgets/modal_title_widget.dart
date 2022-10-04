import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';

class ModalTitleWidget extends StatelessWidget {
  final String titleText;
  final void Function() onBackTap;

  const ModalTitleWidget({
    required this.titleText,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onBackTap,
          child: const Icon(
            CupertinoIcons.back,
            color: CustomColors.textMain,
          ),
        ),
        Text(
          titleText,
          style: TextStyles.title(),
        ),
        const Icon(
          CupertinoIcons.back,
          color: Colors.transparent,
        ),
      ],
    );
  }
}
