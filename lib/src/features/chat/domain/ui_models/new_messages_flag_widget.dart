import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class NewMessagesFlag extends StatelessWidget {
  const NewMessagesFlag({
    required this.messagesCount,
    required this.onCommonUnreadTap,
    required this.onMentionUnreadTap,
    required this.mentionUnreadMessagesCount,
  });

  final int mentionUnreadMessagesCount;
  final int messagesCount;
  final void Function() onCommonUnreadTap;
  final void Function() onMentionUnreadTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16.fw, bottom: 80.fh),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (mentionUnreadMessagesCount != 0)
              InkWell(
                splashColor: Colors.transparent,
                onTap: onMentionUnreadTap,
                child: buildUnreadForMention(),
              ),
            if ((mentionUnreadMessagesCount != 0) &&
                ((messagesCount - mentionUnreadMessagesCount) > 0))
              SizedBox(
                height: 6.fh,
              ),
            if ((messagesCount - mentionUnreadMessagesCount) > 0)
              InkWell(
                splashColor: Colors.transparent,
                onTap: onCommonUnreadTap,
                child: buildCommonUnread(),
              ),
          ],
        ));
  }

  Widget buildUnreadForMention() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 24.fh,
            width: 24.fh,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.gray200,
              ),
              child: Center(
                  child: SvgIcon(
                Resources.email,
                size: 16.fh,
                color: CustomColors.onPrimary,
              )),
            )),
        SizedBox(
          width: 6.fw,
        ),
        CounterWidget(count: mentionUnreadMessagesCount.toString()),
      ],
    );
  }

  Widget buildCommonUnread() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CounterWidget(count: (messagesCount - mentionUnreadMessagesCount).toString()),
        SizedBox(
          height: 6.fh,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColors.primary,
          ),
          child: const SvgIcon(
            Resources.arrow_down,
            size: 28,
          ),
        ),
      ],
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    required this.count,
  });

  final String count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 28,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: CustomColors.primary,
        ),
        child: Center(
          child: Text(
            count,
            style: TextStyles.subtitle1(color: CustomColors.onPrimary),
          ),
        ),
      ),
    );
  }
}
