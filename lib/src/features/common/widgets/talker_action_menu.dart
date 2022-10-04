import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/popup_menu_item.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';
import 'package:watchers_widget/src/features/common/widgets/talker_action_menu_tile.dart';
import 'package:watchers_widget/src/features/common/widgets/universal_picture.dart';

class TalkerActionMenu extends StatefulWidget {
  final Talker talker;
  final bool isMe;
  final void Function(Talker talker, bool isBanned) onToggleUserBan;
  final void Function(Talker talker, bool isVisible) onToggleMessagesVisibility;
  final bool iAmAdminOrModer;
  final bool isShowActions;

  const TalkerActionMenu({
    required this.talker,
    required this.isMe,
    required this.onToggleMessagesVisibility,
    required this.onToggleUserBan,
    required this.iAmAdminOrModer,
    required this.isShowActions,
  });
  @override
  _TalkerActionMenuState createState() => _TalkerActionMenuState();
}

class _TalkerActionMenuState extends State<TalkerActionMenu> {
  late bool showActions;

  @override
  void initState() {
    showActions = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (widget.isShowActions)
          ? () {
              setState(() {
                showActions = !showActions;
              });
            }
          : () {},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: CircleAvatar(
                    radius: 20,
                    child: UniversalPicture(
                      widget.talker.user.pic,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if ((widget.talker.role == 'ADMIN') || widget.talker.isModer)
                        Row(
                          children: [
                            Text(
                              widget.talker.user.name,
                              style: TextStyles.title(fontSize: 15),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const SvgIcon(
                              Resources.admin_check_mark,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'admin',
                              style: TextStyles.title(
                                fontSize: 15,
                                color: CustomColors.contributionTextColor,
                              ),
                            ),
                          ],
                        )
                      else
                        Text(
                          widget.talker.user.name,
                          style: TextStyles.title(fontSize: 15),
                        ),
                      if (widget.isShowActions)
                        const SvgIcon(
                          Resources.chevron,
                          color: CustomColors.textSecondary,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 63),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: CustomColors.divider,
                  ),
                ),
                if (showActions) _buildActions()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        SizedBox(
          height: 8,
        ),
        Divider(
          height: 1.32,
          color: CustomColors.divider,
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        if (widget.talker.isSupressed)
          TalkerActionMenuTile(
            title: 'Показать сообщения',
            subtitle: 'Сообщения будут видны всем',
            onTap: () => widget.onToggleMessagesVisibility(widget.talker, true),
            talker: widget.talker,
            iconPath: Resources.show_message,
            type: PopupMenuItemType.positive,
          )
        else
          TalkerActionMenuTile(
            title: 'Скрыть сообщения',
            subtitle: 'Видно только админу',
            onTap: () => widget.onToggleMessagesVisibility(widget.talker, false),
            talker: widget.talker,
            iconPath: Resources.hide_message,
            type: PopupMenuItemType.destructive,
          ),
        _buildDivider(),
        if (widget.talker.isBanned)
          TalkerActionMenuTile(
            title: 'Разблокировать',
            subtitle: 'Разблокируйте пользователя',
            onTap: () => widget.onToggleUserBan(widget.talker, false),
            talker: widget.talker,
            iconPath: Resources.show_message,
            type: PopupMenuItemType.positive,
          )
        else
          TalkerActionMenuTile(
            title: 'Заблокировать',
            subtitle: 'Заблокируйте пользователя',
            onTap: () => widget.onToggleUserBan(widget.talker, true),
            talker: widget.talker,
            iconPath: Resources.report,
            type: PopupMenuItemType.destructive,
          ),
        _buildDivider(),
      ],
    );
  }
}
