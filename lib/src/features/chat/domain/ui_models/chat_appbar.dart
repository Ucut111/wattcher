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
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 6),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: onLeaveTap,
                child: SvgIcon(
                  Resources.leave,
                  //width: 24,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, top: 6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: onCountTap,
                  child: CircleAvatar(
                    backgroundColor: CustomColors.modalBackground,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        SvgIcon(
                          Resources.people,
                          width: 13,
                          height: 9,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          talkersCount,
                          style: TextStyles.subtitle1(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          height: 1.32,
          color: CustomColors.borderColor,
        )
      ],
    );
  }
}
