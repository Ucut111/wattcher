import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/avatar_popup_menu.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/mension_message_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_popup_menu.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/vip_badge.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/widgets/universal_picture.dart';

class MessageView extends StatelessWidget {
  final Message message;
  final bool isModer;
  final void Function() onMentionTap;

  const MessageView({required this.message, required this.isModer, required this.onMentionTap});

  @override
  Widget build(BuildContext context) {
    final isMyMessage = message.isMyMessage ?? false;

    if (!message.isVisible && !isModer) return const SizedBox.shrink();

    return Opacity(
      opacity: message.isVisible ? 1.0 : 0.5,
      child: Container(
          margin: const EdgeInsets.all(4),
          child: Align(
              alignment: isMyMessage ? Alignment.topRight : Alignment.topLeft,
              child: Row(
                mainAxisAlignment: isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment:
                          isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [
                        if (message.text.isNotEmpty)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (isMyMessage)
                                const SizedBox.shrink()
                              else
                                AvatarPopupMenu(
                                  message: message,
                                  isModer: isModer,
                                  child: ClipOval(
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: UniversalPicture(
                                        message.talker.user.pic,
                                      ),
                                    ),
                                  ),
                                ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: _Bubble(
                                  isModer: isModer,
                                  isSentByUser: isMyMessage,
                                  message: message,
                                  onMentionTap: onMentionTap,
                                ),
                              ),
                            ],
                          )
                        else
                          const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}

class _Bubble extends StatelessWidget {
  final Message message;
  final bool isSentByUser;
  final bool isModer;
  final void Function() onMentionTap;

  const _Bubble({
    required this.isSentByUser,
    required this.message,
    required this.isModer,
    required this.onMentionTap,
  });

  @override
  Widget build(BuildContext context) {
    return MessagePopupMenu(
      message: message,
      isSentByUser: isSentByUser,
      isModer: isModer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: 310.fw),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: isSentByUser ? CustomColors.myMessageColor : CustomColors.modalBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: _buildMessageContent(isSentByUser),
            ),
          ),
          if (!message.isVisible) ...[
            const SizedBox(width: 8),
            const SvgIcon(Resources.disabled),
          ],
        ],
      ),
    );
  }

  Widget _buildMessageContent(bool isSentByUser) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          if (!isSentByUser) ...[
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  message.talker.user.name,
                  style: TextStyle(
                    color: CustomColors.getUserColor(message.talker.user.color),
                    fontFamily: '.SF UI Display',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                if ((message.talker.role == "ADMIN") || (message.talker.isModer)) ...[
                  const SizedBox(
                    width: 3,
                  ),
                  const SvgIcon(
                    Resources.admin_check_mark,
                    size: 14,
                  ),
                  // const SizedBox(
                  //   width: 3,
                  // ),
                  //const Text('admin', style: TextStyles.contribution),
                ],
                const SizedBox(width: 4),
                if (message.talker.user.statusName != null)
                  VipBadgeWidget(statusName: message.talker.user.statusName!),
              ],
            ),
          ],

          // Message text
          ...[
            if (message.mentionMessage != null) ...[
              MentionMessageWidget(
                mentionMessage: message.mentionMessage!,
                onTap: onMentionTap,
              ),
              const SizedBox(height: 2),
            ],
            Flexible(
              child: Linkify(
                textWidthBasis: TextWidthBasis.longestLine,
                onOpen: (message.talker.role == "ADMIN") || (message.talker.isModer)?(link) async {
                  if (!await launchUrl(
                    Uri.parse(link.url),
                    mode: LaunchMode.externalApplication,
                  )) {
                    throw 'Could not launch ${link.url}';
                  }
                }:(_){},
                text: message.text,
                style: TextStyles.primary,
                linkStyle: (message.talker.role == "ADMIN") || (message.talker.isModer)?null:TextStyles.primary,
              ),
            ),
          ],

          const SizedBox(height: 3),

          // Bottom
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                message.updatedAt != null ? 'Изменено ${message.updatedAt}' : message.createdAt,
                style: TextStyles.subtitle2,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
