import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    required this.onTap,
    required this.userName,
    this.showChangeTrailing = true,
  });

  final void Function() onTap;
  final String userName;
  final bool showChangeTrailing;

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
            color: CustomColors.inputBorder,
          ),
          color: CustomColors.inputFilling,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (userName.isEmpty)
                Text(
                  'Введите имя',
                  style: TextStyles.secondary(),
                )
              else
                Text(
                  userName,
                  style: TextStyles.primary,
                  textAlign: TextAlign.left,
                ),
              if (showChangeTrailing)
                const Text(
                  'изменить',
                  style: TextStyles.highlighted,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
