import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/chat_appbar.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/message_view.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/pinned_message_view.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/ban_toast_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/be_first_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/user_banned_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/settings/presentation/settings_screen.dart';
import 'package:watchers_widget/src/features/talkers/presentation/talkers_screen.dart';
import 'widgets/message_view_widget.dart/message_input_widget.dart';

class ChatScreen extends StatefulWidget {
  final String externalRoomId;

  const ChatScreen({required this.externalRoomId});

  static Route route({required String externalRoomId}) =>
      MaterialPageRoute(builder: (_) => ChatScreen(externalRoomId: externalRoomId));

  @override
  _ChatScreenState createState() => _ChatScreenState(externalRoomId);
}

class _ChatScreenState extends BlocInjectableState<ChatScreen, ChatBloc, ChatEvent, ChatState> {
  _ChatScreenState(String externalRoomId) : super.withParams(param1: externalRoomId);
  bool showOverlay = false;

  @override
  void initState() {
    bloc.scrollController.addListener(() {
      if (bloc.scrollController.position.maxScrollExtent == bloc.scrollController.offset) {
        bloc.add(const ChatEvent.loadMoreMessages());
      }
    });
    bloc.focusNode.addListener(_updateShowOverlayStatus);

    super.initState();
  }

  void _updateShowOverlayStatus() {
    setState(() {
      showOverlay = bloc.focusNode.hasFocus;
    });
  }

  @override
  Widget builder(BuildContext context, ChatState state) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: CustomColors.chatBackground,
        body: SafeArea(
          child: state.map(
            loading: (_) => const LoadingWidget(),
            loaded: (state) {
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    children: [
                      ChatAppbar(
                        talkersCount: state.talkers.length.toString(),
                        onCountTap: () {
                          Navigator.of(context).push(
                            TalkersScreen.route(
                              bloc: bloc,
                              onToggleUserBan: (talker, value) {
                                return bloc.setBan(
                                  ChatEvent.setBan(
                                    talker: talker,
                                    isBanned: value,
                                    context: context,
                                  ),
                                );
                              },
                              onToggleMessagesVisibility: (talker, isVisible) {
                                return bloc.changeMessagesVisibility(
                                  ChatEvent.changeMessagesVisibility(
                                    talker: talker,
                                    isVisible: isVisible,
                                    context: context,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        onLeaveTap: () {},
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: state.isChatEmpty
                              ? const BeFirstWidget()
                              : Stack(
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (state.pinnedMessage != null)
                                          PinnedMessageView(
                                            pinnedMessage: state.pinnedMessage!,
                                            onMessageTap: () {
                                              bloc.add(ChatEvent.scrollToMessage(
                                                  message: state.pinnedMessage!));
                                            },
                                            onButtonTap: () {},
                                          ),
                                        Expanded(
                                          child: ListView.builder(
                                            controller: bloc.scrollController,
                                            shrinkWrap: true,
                                            reverse: true,
                                            itemCount: state.messages.length + 1,
                                            itemBuilder: (BuildContext context, int index) {
                                              if (index < state.messages.length) {
                                                final message = state
                                                    .messages[state.messages.length - 1 - index];
                                                return AutoScrollTag(
                                                  highlightColor:
                                                      CustomColors.highlightColor.withOpacity(0.5),
                                                  key: ValueKey(index),
                                                  controller: bloc.scrollController,
                                                  index: index,
                                                  child: MessageView(
                                                    onMentionTap: () {
                                                      bloc.add(ChatEvent.scrollToMessage(
                                                        message: message.mentionMessage!,
                                                      ));
                                                    },
                                                    isModer: state.talker.isModer,
                                                    message: message,
                                                  ),
                                                );
                                              } else {
                                                if (state.isLoadingMoreMessages) {
                                                  return const LoadingWidget();
                                                } else {
                                                  return const SizedBox.shrink();
                                                }
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (showOverlay)
                                      Positioned.fill(
                                        child: GestureDetector(
                                          onTap: () {
                                            FocusManager.instance.primaryFocus?.unfocus();
                                          },
                                          child: Container(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                        ),
                      ),
                      MessageInputWidget(
                        enabled: !state.talker.isBanned,
                        emotions: state.allEmotions,
                        onEmotionSelected: (emoji) {
                          bloc.add(
                            ChatEvent.showEmotion(
                              emotion: emoji,
                              isMyEmotion: true,
                            ),
                          );
                        },
                        onSettingsTap: () {
                          Navigator.of(context).push(SettingsScreen.route());
                        },
                        focusNode: bloc.focusNode,
                        controller: bloc.controller,
                        onSendTap: () {
                          bloc.add(ChatEvent.sendMessage(text: bloc.controller.text.trim()));
                          bloc.scrollController.animateTo(
                            bloc.scrollController.initialScrollOffset,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease,
                          );
                        },
                      ),
                    ],
                  ),
                  if (state.talker.isBanned)
                    Positioned(
                      bottom: 70,
                      width: 100.w - 32,
                      child: const BanToastWidget(),
                    ),
                  if (state.talker.user.isBanned) ...[
                    Positioned.fill(
                      child: Container(
                        color: CustomColors.transparentBarrer,
                      ),
                    ),
                    const UserBannedWidget(),
                  ],
                  ...state.emojis.values,
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.focusNode.removeListener(_updateShowOverlayStatus);
    super.dispose();
  }
}

class MyWidgetSize extends StatelessWidget {
  const MyWidgetSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 100);
  }
}
