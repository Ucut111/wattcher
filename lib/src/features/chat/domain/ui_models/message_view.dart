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
          margin: const EdgeInsets.only(bottom: 6),
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
                              const SizedBox(width: 4),
                              //if (widget.message.myMessage) const _MessageStatus(readStatus: true) else const SizedBox.shrink(),
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

class _MessageStatus extends StatefulWidget {
  final bool readStatus;
  const _MessageStatus({Key? key, required this.readStatus}) : super(key: key);

  @override
  __MessageStatusState createState() => __MessageStatusState();
}

class __MessageStatusState extends State<_MessageStatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check_circle_outline_outlined,
          size: 18,
          color: widget.readStatus ? const Color(0xFF4428D9) : const Color(0xFF979797),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class _Bubble extends StatelessWidget {
  final Message message;
  final bool isSentByUser;
  final bool isModer;
  final void Function() onMentionTap;

  const _Bubble(
      {required this.isSentByUser,
      required this.message,
      required this.isModer,
      required this.onMentionTap});
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
                      color:
                          isSentByUser ? CustomColors.myMessageColor : CustomColors.modalBackground,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: isSentByUser
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (message.mentionMessage != null)
                                    MentionMessageWidget(
                                      mentionMessage: message.mentionMessage!,
                                      onTap: onMentionTap,
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                          child: Linkify(
                                        textWidthBasis: TextWidthBasis.longestLine,
                                        onOpen: (link) async {
                                          if (!await launchUrl(
                                            Uri.parse(link.url),
                                            mode: LaunchMode.externalApplication,
                                          )) {
                                            throw 'Could not launch ${link.url}';
                                          }
                                        },
                                        text: message.text,
                                        style: TextStyles.primary,
                                      )),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                              Text(
                                message.updatedAt != null
                                    ? 'Updated at ${message.updatedAt}'
                                    : message.createdAt,
                                style: TextStyles.subtitle2,
                                textAlign: TextAlign.end,
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        message.talker.user.name,
                                        style: TextStyle(
                                          color:
                                              CustomColors.getUserColor(message.talker.user.color),
                                          fontFamily: '.SF UI Display',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      if ((message.talker.role == "ADMIN") ||
                                          (message.talker.isModer)) ...[
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        const SvgIcon(
                                          Resources.admin_check_mark,
                                          size: 14,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        const Text('admin', style: TextStyles.contribution),
                                      ],
                                      const SizedBox(width: 4),
                                      if (message.talker.user.statusName != null)
                                        VipBadgeWidget(statusName: message.talker.user.statusName!),
                                    ],
                                  ),
                                  if (message.mentionMessage != null)
                                    MentionMessageWidget(
                                      mentionMessage: message.mentionMessage!,
                                      onTap: onMentionTap,
                                    ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Linkify(
                                    textWidthBasis: TextWidthBasis.longestLine,
                                    onOpen: (link) async {
                                      if (!await launchUrl(
                                        Uri.parse(link.url),
                                        mode: LaunchMode.externalApplication,
                                      )) {
                                        throw 'Could not launch ${link.url}';
                                      }
                                    },
                                    text: message.text,
                                    style: TextStyles.primary,
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                              Text(
                                message.updatedAt != null
                                    ? 'Updated at ${message.updatedAt}'
                                    : message.createdAt,
                                style: TextStyles.subtitle2,
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ))),
            if (!message.isVisible) ...[
              const SizedBox(width: 8),
              const SvgIcon(Resources.disabled),
            ],
          ],
        ));
  }
}
