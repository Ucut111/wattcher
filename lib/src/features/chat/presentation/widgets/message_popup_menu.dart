import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/base/dependent_stateless_widget.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/custom_popup_menu.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/popup_menu_item.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';

class MessagePopupMenu extends BlocDependentStatelessWidget<ChatBloc, ChatEvent, ChatState> {
  final Message message;
  final bool isSentByUser;
  final bool isModer;
  final Widget child;

  MessagePopupMenu({
    required this.message,
    required this.isSentByUser,
    required this.isModer,
    required this.child,
  });

  final CustomPopupMenuController _controller = CustomPopupMenuController();

  @override
  bool buildWhen(ChatState previous, ChatState current) => false;

  @override
  Widget builder(BuildContext context, _, ChatBloc bloc) {
    return CustomPopupMenu(
      isLTR: !isSentByUser,
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
              children: isSentByUser ? _selfMessageMenu(bloc) : _otherMessageMenu(bloc, context),
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

  List<Widget> _otherMessageMenu(ChatBloc bloc, BuildContext context) => [
        PopupMenuItemWidget(
          titleText: 'Ответить',
          iconPath: Resources.reply,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.mentionMessage(message: message));
            });
          },
        ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        PopupMenuItemWidget(
          titleText: 'Копировать',
          iconPath: Resources.copy,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.copyMessage(message: message));
            });
          },
        ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        if (isModer) ...[
          if (message.isVisible)
            PopupMenuItemWidget(
              titleText: 'Скрыть сообщение',
              iconPath: Resources.hide_message,
              popupMenuItemType: PopupMenuItemType.destructive,
              onTap: () {
                _onMenuTap(() {
                  bloc.add(ChatEvent.changeMessageVisibility(
                    message: message,
                    isVisible: false,
                  ));
                });
              },
            )
          else
            PopupMenuItemWidget(
              titleText: 'Показать сообщение',
              iconPath: Resources.show_message,
              popupMenuItemType: PopupMenuItemType.positive,
              onTap: () {
                _onMenuTap(() {
                  bloc.add(ChatEvent.changeMessageVisibility(
                    message: message,
                    isVisible: true,
                  ));
                });
              },
            ),
          const Divider(
            indent: 12,
            height: 1,
            color: CustomColors.borderColor,
          ),
        ],
        PopupMenuItemWidget(
          titleText: 'Сообщить о нарушении',
          iconPath: Resources.report,
          popupMenuItemType: PopupMenuItemType.destructive,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.reportMessage(
                message: message,
                context: context,
              ));
            });
          },
        ),
      ];

  List<Widget> _selfMessageMenu(ChatBloc bloc) => [
        PopupMenuItemWidget(
          titleText: 'Ответить',
          iconPath: Resources.reply,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.mentionMessage(message: message));
            });
          },
        ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        PopupMenuItemWidget(
          titleText: 'Изменить',
          iconPath: Resources.edit,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.editMessage(message: message));
            });
          },
        ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        PopupMenuItemWidget(
          titleText: 'Копировать',
          iconPath: Resources.copy,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.copyMessage(message: message));
            });
          },
        ),
        const Divider(
          indent: 12,
          height: 1,
          color: CustomColors.borderColor,
        ),
        PopupMenuItemWidget(
          titleText: 'Удалить',
          iconPath: Resources.remove,
          popupMenuItemType: PopupMenuItemType.destructive,
          onTap: () {
            _onMenuTap(() {
              bloc.add(ChatEvent.deleteMessage(message: message));
            });
          },
        ),
      ];
}
