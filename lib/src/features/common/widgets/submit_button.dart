import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

class SubmitButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  final bool isActive;

  const SubmitButton({
    required this.onPressed,
    required this.child,
    this.isActive = true,
  });

  factory SubmitButton.textual({
    required void Function() onTap,
    required String text,
    final bool isActive = true,
  }) =>
      SubmitButton(
        isActive: isActive,
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? CustomColors.onPrimary : CustomColors.onPrimary.withOpacity(0.2),
            fontFamily: '.SF Pro Text',
            fontSize: 17,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 100.w - 32,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isActive ? CustomColors.primary : CustomColors.primary.withOpacity(0.4),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
              side: BorderSide.none,
            ),
          ),
        ),
        onPressed: isActive ? onPressed : null,
        child: child,
      ),
    );
  }
}
