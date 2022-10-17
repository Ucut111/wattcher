import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class ScrollDownWidget extends StatelessWidget {
  const ScrollDownWidget({required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2, bottom: 56),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColors.primary,
          ),
          child: const SvgIcon(
            Resources.arrow_down,
            size: 32,
          ),
        ),
      ),
    );
  }
}
