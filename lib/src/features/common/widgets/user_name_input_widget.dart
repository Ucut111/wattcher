import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class UserNameInputWidget extends StatelessWidget {
  const UserNameInputWidget({
    required this.userNameFocusNode,
    required this.userNameTextEditingController,
    required this.onSubmitted,
  });

  final FocusNode userNameFocusNode;
  final TextEditingController userNameTextEditingController;
  final void Function()? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: CustomColors.inputBorder,
      ),
      borderRadius: BorderRadius.circular(100),
    );

    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        width: 100.w,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: const BoxDecoration(
          color: CustomColors.modalBackground,
          border: Border(
            top: BorderSide(
              color: CustomColors.contributionTextColor,
              width: 2.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                buildCounter: (
                  BuildContext context, {
                  required int currentLength,
                  required int? maxLength,
                  required bool isFocused,
                }) {
                  return;
                },
                maxLength: 25,
                onSubmitted: (_) => onSubmitted?.call(),
                focusNode: userNameFocusNode,
                controller: userNameTextEditingController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  hintText: 'Введите имя...',
                  border: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  hintStyle: TextStyles.title(),
                  filled: true,
                  fillColor: CustomColors.inputFilling,
                ),
                style: TextStyles.title(),
              ),
            ),
            InkWell(
              onTap: onSubmitted,
              child: const SvgIcon(
                Resources.arrow_button,
                size: 55,
                color: CustomColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
