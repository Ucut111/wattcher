import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    required this.onTap,
    required this.userName,
  });

  final void Function() onTap;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: CustomColors.paragraphTextColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Text(
            userName.isEmpty ? 'Введите имя' : userName,
            style: TextStyles.paragraph,
          ),
        ),
      ),
    );
  }
}
