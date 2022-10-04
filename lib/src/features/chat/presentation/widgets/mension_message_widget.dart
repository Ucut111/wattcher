import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';

class MentionMessageWidget extends StatelessWidget {
  const MentionMessageWidget({
    required this.mentionMessage,
  });

  final Message mentionMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 3,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: CustomColors.titleText,
          ),
        ),
        const SizedBox(width: 5),
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              mentionMessage.user.name,
              style: TextStyles.title(fontSize: 13),
            ),
            Flexible(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
              Flexible(
                  child: Text(mentionMessage.text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.title(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.paragraphTextColor)))
            ])),
          ],
        )),
        const SizedBox(height: 2),
      ],
    );
  }
}
