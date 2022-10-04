import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/base/dependent_stateless_widget.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/custom_popup_menu.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/popup_menu_item.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';

class AvatarPopupMenu extends BlocDependentStatelessWidget<ChatBloc, ChatEvent, ChatState> {
  final Message message;
  final bool isModer;
  final Widget child;

  AvatarPopupMenu({
    required this.message,
    required this.isModer,
    required this.child,
  });

  final CustomPopupMenuController _controller = CustomPopupMenuController();

  @override
  bool buildWhen(ChatState previous, ChatState current) => false;

  @override
  Widget builder(BuildContext context, _, ChatBloc bloc) {
    return CustomPopupMenu(
      isLTR: true,
      position: PreferredPosition.top,
      controller: _controller,
      pressType: PressType.singleClick,
      menuBuilder: () {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 75.w,
            color: CustomColors.modalBackground,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: isModer ? _moderMenu(bloc) : _userMenu(bloc, context),
            ),
          ),
        );
      },
      child: child,
    );
  }

  void _onMenuTap(void Function() onTap) {
    onTap();
    _controller.hideMenu();
  }

  List<Widget> _userMenu(ChatBloc bloc, BuildContext context) => [
        PopupMenuItemWidget(
          titleText: 'Заблокировать',
          iconPath: Resources.report,
          popupMenuItemType: PopupMenuItemType.destructive,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.blockUser(message: message));
            });
          },
        ),
      ];

  List<Widget> _moderMenu(ChatBloc bloc) => [
        if (message.talker.isSupressed)
          PopupMenuItemWidget(
            titleText: 'Показать сообщения',
            iconPath: Resources.show_message,
            popupMenuItemType: PopupMenuItemType.positive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.changeMessagesVisibility(
                  message: message,
                  isVisible: true,
                ));
              });
            },
          )
        else
          PopupMenuItemWidget(
            titleText: 'Скрыть сообщения',
            iconPath: Resources.hide_message,
            popupMenuItemType: PopupMenuItemType.destructive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.changeMessagesVisibility(
                  message: message,
                  isVisible: false,
                ));
              });
            },
          ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        if (message.talker.isBanned)
          PopupMenuItemWidget(
            titleText: 'Разблокировать',
            iconPath: Resources.show_message,
            popupMenuItemType: PopupMenuItemType.positive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.setBan(message: message, isBanned: false));
              });
            },
          )
        else
          PopupMenuItemWidget(
            titleText: 'Заблокировать',
            iconPath: Resources.report,
            popupMenuItemType: PopupMenuItemType.destructive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.setBan(message: message, isBanned: true));
              });
            },
          )
      ];
}
