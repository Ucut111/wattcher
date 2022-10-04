import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

import '../../../../core/constants/resources.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../common/models/message.dart';

class PinnedMessageView extends StatelessWidget {
  final void Function() onMessageTap;
  final void Function() onButtonTap;
  final Message pinnedMessage;

  const PinnedMessageView(
      {required this.pinnedMessage, required this.onMessageTap, required this.onButtonTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onMessageTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
            padding: const EdgeInsets.only(left: 14, right: 18, top: 8),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Закрепленное сообщение',
                          style: TextStyles.title(fontSize: 12, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Row(children: [
                            Flexible(
                                child: Text(pinnedMessage.text,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyles.title(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: CustomColors.paragraphTextColor)))
                          ])),
                    ],
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: onButtonTap,
                    child: const SvgIcon(
                      Resources.pin,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                height: 1.32,
                color: CustomColors.divider,
              )
            ])));
  }
}
