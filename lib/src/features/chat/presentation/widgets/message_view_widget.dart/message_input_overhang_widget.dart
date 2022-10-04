import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/dependent_stateless_widget.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';

class MessageInputOverhangWidget
    extends BlocDependentStatelessWidget<ChatBloc, ChatEvent, ChatState> {
  const MessageInputOverhangWidget();

  @override
  bool buildWhen(ChatState previous, ChatState current) {
    if (previous is ChatStateLoaded && current is ChatStateLoaded) {
      return previous.messageInputType != current.messageInputType;
    }

    return previous is! ChatStateLoaded && current is ChatStateLoaded;
  }

  @override
  Widget builder(BuildContext context, ChatState state, ChatBloc bloc) {
    if (state is ChatStateLoaded && state.messageInputType != null) {
      return _buildWidget(
        type: state.messageInputType!,
        onClose: () => bloc.add(const ChatEvent.closeOverhang()),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildWidget({
    required MessageInputType type,
    required VoidCallback onClose,
  }) {
    final message = type.message;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(height: 1, thickness: 1, color: CustomColors.borderColor),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(
            children: [
              SvgIcon(
                type.iconPath,
                color: CustomColors.primaryColor,
              ),
              const SizedBox(width: 8),
              Container(
                color: CustomColors.primaryColor,
                width: 1,
                height: 30,
              ),
              const SizedBox(width: 11),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${type.titlePrefix} ${type.isReply ? message.talker.user.name : ''}',
                            style: TextStyles.subtitle1(color: CustomColors.primaryColor),
                          ),
                          Flexible(
                              child: Row(mainAxisSize: MainAxisSize.min, children: [
                                Flexible(
                                  child: Text(
                                    message.text,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyles.subtitle1(),
                                  ),
                                )
                              ])),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: onClose,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SvgIcon(
                          Resources.close,
                          color: CustomColors.danger,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}