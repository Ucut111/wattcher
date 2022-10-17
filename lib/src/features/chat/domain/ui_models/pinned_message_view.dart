import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

class PinnedMessageView extends StatelessWidget {
  final void Function() onMessageTap;
  final void Function() onButtonTap;
  final Message pinnedMessage;
  final Talker talker;

  const PinnedMessageView({
    required this.talker,
    required this.pinnedMessage,
    required this.onMessageTap,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: CustomColors.modalBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.5),
            blurRadius: 0.5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              onTap: onMessageTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Row(
                  children: [
                    const SvgIcon(
                      Resources.pin,
                      color: CustomColors.gray400,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Закрепленное сообщение',
                            style: TextStyles.title(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    pinnedMessage.text,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyles.secondary(
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (talker.role =="ADMIN"||talker.isModer)
          InkWell(
            onTap: onButtonTap,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: SvgIcon(
                Resources.close,
                color: CustomColors.textMain,
                size: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
