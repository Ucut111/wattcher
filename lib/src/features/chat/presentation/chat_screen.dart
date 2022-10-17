import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sizer/sizer.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/utils/transitions.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/chat_appbar.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/date_header_widget.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/large_message_toast.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/message_view.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/pinned_message_view.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/scroll_down_widget.dart';
import 'package:watchers_widget/src/features/chat/domain/ui_models/unread_header_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/be_first_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emotion_panel.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/user_banned_widget.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/settings/presentation/settings_screen.dart';
import 'package:watchers_widget/src/features/talkers/presentation/talkers_screen.dart';
import 'widgets/chat_toast_widget.dart';
import 'widgets/message_view_widget.dart/message_input_widget.dart';

class ChatScreen extends StatefulWidget {
  final String externalRoomId;

  const ChatScreen({required this.externalRoomId});

  static Route route({required String externalRoomId}) =>
      Transitions.buildFadeTranstion(ChatScreen(externalRoomId: externalRoomId));

  @override
  _ChatScreenState createState() => _ChatScreenState(externalRoomId);
}

class _ChatScreenState extends BlocInjectableState<ChatScreen, ChatBloc, ChatEvent, ChatState> {
  _ChatScreenState(String externalRoomId) : super.withParams(param1: externalRoomId);
  bool showOverlay = false;
  bool showScrollDown = false;

  @override
  void initState() {
    bloc.scrollController.addListener(() {
      if (0.0 == bloc.scrollController.offset &&
          bloc.scrollController.offset != bloc.scrollController.position.maxScrollExtent) {
        bloc.add(const ChatEvent.loadMoreMessages());
      }
      if (bloc.scrollController.hasClients &&
          (bloc.scrollController.offset != bloc.scrollController.position.maxScrollExtent)) {
        if (!showScrollDown) {
          setState(() {
            showScrollDown = true;
          });
        }
      } else {
        if (showScrollDown) {
          setState(() {
            showScrollDown = false;
          });
        }
      }
    });

    bloc.focusNode.addListener(_updateShowOverlayStatus);
    bloc.focusNode.addListener(() => _updateKeyboardInsets(context));

    super.initState();
  }

  void _updateShowOverlayStatus() {
    setState(() {
      showOverlay = bloc.focusNode.hasFocus;
    });
  }

  void _updateKeyboardInsets(BuildContext context) {
    if (!bloc.scrollController.hasClients) return;

    _startPosition = bloc.scrollController.offset;
    _acJumpValue = 0;
  }

  double _lastBottomInset = 0;
  double _startPosition = 0;
  double _acJumpValue = 0;

  @override
  Widget builder(BuildContext context, ChatState state) {
    final bottomInset =
        MediaQuery.of(context).viewInsets.bottom - MediaQuery.of(context).viewPadding.bottom;

    if (bottomInset != _lastBottomInset && bloc.scrollController.hasClients) {
      final jumpValue = bottomInset - _lastBottomInset;

      _lastBottomInset = bottomInset;

      bloc.scrollController.animateTo(
        _startPosition + _acJumpValue + jumpValue,
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate,
      );

      _acJumpValue += jumpValue;
    }

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets,
      duration: const Duration(milliseconds: 200),
      curve: Curves.decelerate,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: state.maybeMap(
            loaded: (state) {
              // if (state.unreadMessages.isNotEmpty) {
              //   return NewMessagesFlag(
              //     mentionUnreadMessagesCount: state.unreadMentions,
              //     messagesCount: state.unreadMessages.length,
              //     onCommonUnreadTap: () {
              //       bloc.scrollController.scrollToIndex(
              //         state.firstUnreadMessageIndex!,
              //         preferPosition: AutoScrollPosition.begin,
              //         duration: const Duration(microseconds: 100),
              //       );
              //     },
              //     onMentionUnreadTap: () {
              //       if (state.unreadMentions>0){
              //         bloc.scrollController.scrollToIndex(
              //           state.messages.indexOf(state.unreadMessages.firstWhere((element) => element.isMentionMe == true)),
              //           preferPosition: AutoScrollPosition.begin,
              //           duration: const Duration(microseconds: 100),
              //         );
              //       }
              //     },
              //   );
              // } else {
              if (showScrollDown) {
                return ScrollDownWidget(
                  onTap: () {
                    bloc.scrollController.animateTo(
                      bloc.scrollController.position.maxScrollExtent + 1000,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.ease,
                    );
                  },
                );
              }
              // }
            },
            orElse: () {},
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: CustomColors.chatBackground,
          body: state.map(
            loading: (_) => const LoadingWidget(),
            loaded: (state) {
              return SafeArea(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ChatScreenBodyWidget(
                      state: state,
                      bloc: bloc,
                      showOverlay: showOverlay,
                    ),
                    if (state.talker.isBanned && !state.noneConnection)
                      Positioned(
                        bottom: 70,
                        width: 100.w - 32,
                        child: const ChatToastWidget(
                          text: 'Вас заблокировали. Вы не можете писать сообщения в чат',
                          iconPath: Resources.block,
                        ),
                      ),
                    if (state.largeMessage)
                      Positioned(
                        bottom: 70,
                        width: 100.w - 32,
                        child: LargeMessageToast(
                          inputController: bloc.controller,
                        ),
                      ),
                    if (state.noneConnection)
                      Positioned(
                        bottom: 70,
                        width: 100.w - 32,
                        child: const ChatToastWidget(
                          iconPath: Resources.no_internet,
                          text: 'Отсутствует интернет-соединение',
                        ),
                      ),
                    if (state.talker.user.isBanned) ...[
                      Positioned.fill(
                        child: Container(
                          color: CustomColors.transparentBarrer,
                        ),
                      ),
                      const UserBannedWidget(),
                    ],
                    if (state.showEmojiPannel)
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            bloc.setEmotionPannelVisibility(
                                const SetEmotionPannelVisibility(isVisible: false));
                          },
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: 68,
                      right: 8,
                      child: EmotionPannel(
                        isVisible: state.showEmojiPannel,
                        emotions: state.allEmotions,
                        onEmotionSelected: (emoji) {
                          bloc.changeSelectedEmotion(ChangeSelectedEmotion(emotion: emoji));
                        },
                      ),
                    ),
                    ...state.emojis.values,
                  ],
                ),
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

class ChatScreenBodyWidget extends StatefulWidget {
  const ChatScreenBodyWidget({
    required this.bloc,
    required this.state,
    required this.showOverlay,
  });

  final ChatBloc bloc;
  final ChatStateLoaded state;
  final bool showOverlay;

  @override
  State<ChatScreenBodyWidget> createState() => _ChatScreenBodyWidgetState();
}

class _ChatScreenBodyWidgetState extends State<ChatScreenBodyWidget> {
  bool markAsVisible = true;
  Widget? onLoadContent;
  double offsetFromBottom = 0;

  Widget _buildContent({
    bool giveScrollTag = false,
  }) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.state.messages.length,
      itemBuilder: (context, index) {
        final message = widget.state.messages[index];
        final DateTime currentMessageDateTime = DateTime.parse(message.serverDateTime).toLocal();
        final DateTime prevDateTime = index > 0
            ? DateTime.parse(widget.state.messages[index - 1].serverDateTime).toLocal()
            : DateTime(1990);
        return VisibilityDetector(
            key: ValueKey(index),
            onVisibilityChanged: (visibilityInfo) {
              if ((widget.state.unreadMessages.contains(message)) &&
                  (visibilityInfo.visibleFraction == 1)) {
                widget.bloc.add(ChatEvent.setMessageRead(message: message));
              }
            },
            child: Column(children: [
              if ((currentMessageDateTime.day != prevDateTime.day) ||
                  (currentMessageDateTime.month != prevDateTime.month) ||
                  (currentMessageDateTime.year != prevDateTime.year))
                DateHeaderWidget(
                  date: DateTime.parse(message.serverDateTime),
                ),
              if (widget.state.firstUnreadMessageIndex == index) UnreadHeaderWidget(),
              AutoScrollTag(
                  highlightColor: CustomColors.primary.withOpacity(0.1),
                  key: ValueKey(index),
                  controller: widget.bloc.scrollController,
                  index: index,
                  child: _buildMessageView(
                    message: message,
                  )),
            ]));
      },
    );
  }

  Widget _buildMessageView({
    required Message message,
  }) {
    return MessageView(
      onMentionTap: () {
        widget.bloc.add(ChatEvent.scrollToMessage(
          message: message.mentionMessage!,
        ));
      },
      isModer: widget.state.talker.isModer,
      message: message,
    );
  }

  void setOnLoadContentOrAddPostFrameCallback() {
    if ((widget.state.isLoadingMoreMessages) && (widget.bloc.fixScroll)) {
      markAsVisible = false;
      onLoadContent = _buildContent();
    } else {
      if (!widget.bloc.scrollController.hasClients) return;

      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!widget.bloc.scrollController.hasClients) return;

        if (widget.bloc.scrollController.position.maxScrollExtent != offsetFromBottom &&
            widget.bloc.fixScroll) {
          widget.bloc.scrollController
              .jumpTo(widget.bloc.scrollController.position.maxScrollExtent - offsetFromBottom);
          setState(() {
            markAsVisible = true;
            widget.bloc.fixScroll = false;
          });
        }
        offsetFromBottom = widget.bloc.scrollController.position.maxScrollExtent;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    setOnLoadContentOrAddPostFrameCallback();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ChatAppbar(
          isAdminOrModer: (widget.state.talker.role == "ADMIN") || (widget.state.talker.isModer),
          talkersCount: widget.state.talkers.length.toString(),
          onCountTap: () {
            Navigator.of(context).push(
              TalkersScreen.route(
                bloc: widget.bloc,
                onToggleUserBan: (talker, value) {
                  return widget.bloc.setBan(
                    ChatEvent.setBan(
                      talker: talker,
                      isBanned: value,
                      context: context,
                    ),
                  );
                },
                onToggleMessagesVisibility: (talker, isVisible) {
                  return widget.bloc.changeMessagesVisibility(
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.state.pinnedMessage != null)
                PinnedMessageView(
                  talker: widget.state.talker,
                  pinnedMessage: widget.state.pinnedMessage!,
                  onMessageTap: () {
                    widget.bloc.add(ChatEvent.scrollToMessage(
                      message: widget.state.pinnedMessage!,
                    ));
                  },
                  onButtonTap: () {
                    widget.bloc.setPinnedMessage(ChatEventSetPinnedMessage(
                      context: context,
                      message: widget.state.pinnedMessage!,
                      isPinned: false,
                    ));
                  },
                ),
              Expanded(
                child: widget.state.isChatEmpty
                    ? const SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: BeFirstWidget(),
                      )
                    : ScrollConfiguration(
                        behavior: NoGlowScrollBehavior(),
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            SingleChildScrollView(
                              physics: const ClampingScrollPhysics(),
                              controller: widget.bloc.scrollController,
                              child: Stack(
                                children: [
                                  Visibility(
                                    maintainAnimation: true,
                                    maintainSize: true,
                                    maintainState: true,
                                    visible: markAsVisible,
                                    child: _buildContent(giveScrollTag: true),
                                  ),
                                  if (!markAsVisible)
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: onLoadContent == null ? Container() : onLoadContent!,
                                    ),
                                  if (widget.showOverlay)
                                    Positioned.fill(
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusManager.instance.primaryFocus?.unfocus();
                                        },
                                        child: Container(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              MessageInputWidget(
                largeMessage: widget.state.largeMessage,
                enabled: !widget.state.talker.isBanned,
                emotions: widget.state.allEmotions,
                onLongPressEmotion: () {
                  widget.bloc.setEmotionPannelVisibility(
                      const SetEmotionPannelVisibility(isVisible: true));
                },
                onSendEmotion: () {
                  widget.bloc.sendSelectedEmotion(const SendSelectedEmotion());
                },
                selectedEmotion: widget.state.selectedEmotion,
                onSettingsTap: () {
                  Navigator.of(context).push(SettingsScreen.route());
                },
                focusNode: widget.bloc.focusNode,
                controller: widget.bloc.controller,
                onSendTap: () {
                  widget.bloc.add(ChatEvent.sendMessage(
                      text: widget.bloc.controller.text.trim(), context: context));

                  // Свои сообщения мы анимируем сразу вниз
                  if (!widget.bloc.scrollController.hasClients) return;
                  widget.bloc.scrollController.animateTo(
                    widget.bloc.scrollController.position.maxScrollExtent + 1000,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
