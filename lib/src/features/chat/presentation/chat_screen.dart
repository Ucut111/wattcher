import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/chat_appbar.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/message_view.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/pinned_message_view.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
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
  final ScrollController scrollController = ScrollController();

  bool showOverlay = false;

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset) {
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: state.map(
            loading: (_) => const LoadingWidget(),
            loaded: (state) {
              return Stack(
                children: [
                  Column(
                    children: [
                      ChatAppbar(
                        talkersCount: state.talkers.length.toString(),
                        onCountTap: () {
                          Navigator.of(context).push(TalkersScreen.route(state.talkers));
                        },
                        onLeaveTap: () {},
                      ),
                      Expanded(child:
                      Stack(
                        children: [
                          Column(
                            children: [
                              if (state.pinnedMessage != null)
                                PinnedMessageView(
                                    pinnedMessage: state.pinnedMessage!,
                                    onMessageTap: () {},
                                    onButtonTap: () {}),
                              Expanded(
                                child: ListView.builder(
                                  controller: scrollController,
                                  reverse: true,
                                  itemCount: state.messages.length + 1,
                                  itemBuilder: (BuildContext context, int index) {
                                    if (index < state.messages.length) {
                                      return MessageView(
                                        isModer: state.talker.isModer,
                                        message: state.messages[state.messages.length - 1 - index],
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
                          scrollController.animateTo(
                              scrollController.initialScrollOffset,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease
                          );
                        },
                      ),
                    ],
                  ),
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
