import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

import '../../../../core/constants/text_styles.dart';

class ChatAppbar extends StatelessWidget {
  final String talkersCount;

  final void Function() onLeaveTap;
  final void Function() onCountTap;

  const ChatAppbar({
    required this.talkersCount,
    required this.onCountTap,
    required this.onLeaveTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        margin: const EdgeInsets.only(bottom: 1),
        decoration: const BoxDecoration(
          color: CustomColors.modalBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: InkWell(
                    onTap: onCountTap,
                    splashColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColors.gray800,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SvgIcon(
                              Resources.people,
                              height: 11,
                              color: CustomColors.gray400,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              talkersCount,
                              style: TextStyles.subtitle1(
                                fontSize: 14,
                                color: CustomColors.gray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
