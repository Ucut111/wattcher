import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/base/dependent_stateless_widget.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
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
      pressType: PressType.longPress,
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
              children: isModer ? _moderMenu(bloc, context) : _userMenu(bloc, context),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message.talker.user.name,
                  style: TextStyles.title(fontWeight: FontWeight.w400, fontSize: 17)),
            ],
          ),
        ),
        PopupMenuItemWidget(
          titleText: '??????????????????????????',
          iconPath: Resources.report,
          popupMenuItemType: PopupMenuItemType.destructive,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.blockUser(message: message, context: context));
            });
          },
        ),
      ];

  List<Widget> _moderMenu(ChatBloc bloc, BuildContext context) => [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message.talker.user.name,
                  style: TextStyles.title(fontWeight: FontWeight.w400, fontSize: 17)),
            ],
          ),
        ),
        if (message.talker.isSupressed)
          PopupMenuItemWidget(
            titleText: '???????????????? ??????????????????',
            iconPath: Resources.show_message,
            popupMenuItemType: PopupMenuItemType.positive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.changeMessagesVisibility(
                  context: context,
                  talker: message.talker,
                  isVisible: true,
                ));
              });
            },
          )
        else
          PopupMenuItemWidget(
            titleText: '???????????? ??????????????????',
            iconPath: Resources.hide_message,
            popupMenuItemType: PopupMenuItemType.destructive,
            onTap: () {
              _onMenuTap(() {
                bloc.add(ChatEvent.changeMessagesVisibility(
                  talker: message.talker,
                  isVisible: false,
                  context: context,
                ));
              });
            },
          ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.divider,
        ),
        if (message.talker.isBanned)
          PopupMenuItemWidget(
            titleText: '????????????????????????????',
            iconPath: Resources.show_message,
            popupMenuItemType: PopupMenuItemType.positive,
            onTap: () {
              _onMenuTap(() {
                bloc.setBan(ChatEvent.setBan(
                  talker: message.talker,
                  isBanned: false,
                  context: context,
                ));
              });
            },
          )
        else
          PopupMenuItemWidget(
            titleText: '??????????????????????????',
            iconPath: Resources.report,
            popupMenuItemType: PopupMenuItemType.destructive,
            onTap: () {
              _onMenuTap(() {
                bloc.setBan(ChatEvent.setBan(
                  talker: message.talker,
                  isBanned: true,
                  context: context,
                ));
              });
            },
          )
      ];
}
