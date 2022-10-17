import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:uuid/uuid.dart';

import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';
import 'package:watchers_widget/src/core/utils/concurrency.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_pinned_message_request.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/check_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/close_socket_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/edit_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_all_emotions_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_emotion_by_name_scenario.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_message_array_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_pinned_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/join_room_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/on_connectivity_changed_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/report_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_emotion_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_ban_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_message_visible_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_pinned_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/chat_toast_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/report_type_widget.dart';
import 'package:watchers_widget/src/features/common/anti_swearing/anti_swearing.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/add_block_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/get_blocks_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/talker/get_talkers_use_case.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';
import 'package:watchers_widget/src/features/common/widgets/dialogs/confirm_dialog.dart';
import 'package:watchers_widget/src/features/common/widgets/emoji_animation.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetMessageArrayUseCase _getMessageArrayUseCase;
  final GetPinnedMessageUseCase _getPinnedMessageUseCase;
  final JoinRoomUseCase _joinRoomUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final CheckMessageUseCase _checkMessageUseCase;
  final SendEmotionUseCase _sendEmotionUseCase;
  final GetAllEmotionsUseCase _getAllEmotionsUseCase;
  final GetEmotionByNameScenario _getEmotionByNameScenario;
  final GetTalkersUseCase _getTalkersUseCase;
  final EditMessageUseCase _editMessageUseCase;
  final DeleteMessageUseCase _deleteMessageUseCase;
  final ReportMessageUseCase _reportMessageUseCase;
  final AddBlockUseCase _addBlockUseCase;
  final SetMessageVisibleUseCase _setMessageVisibleUseCase;
  final SetMessagesVisibleUseCase _setMessagesVisibleUseCase;
  final SetBanUseCase _setBanUseCase;
  final GetBlocksUseCase _getBlocksUseCase;
  final CloseSocketUseCase _closeSocketUseCase;
  final GetConnectivityChangeStreamUseCase _getConnectivityChangeStreamUseCase;
  final SetPinnedMessageUseCase _setPinnedMessageUseCase;
  final Future<AntiSwearing> _antiSwearingFuture;

  final List<StreamSubscription> _subscriptions = [];

  ChatBloc(
    this._addBlockUseCase,
    this._checkMessageUseCase,
    this._closeSocketUseCase,
    this._deleteMessageUseCase,
    this._editMessageUseCase,
    this._getAllEmotionsUseCase,
    this._getConnectivityChangeStreamUseCase,
    this._getEmotionByNameScenario,
    this._getMessageArrayUseCase,
    this._getBlocksUseCase,
    this._getPinnedMessageUseCase,
    this._setMessageVisibleUseCase,
    this._reportMessageUseCase,
    this._getTalkersUseCase,
    this._joinRoomUseCase,
    this._sendEmotionUseCase,
    this._sendMessageUseCase,
    this._setBanUseCase,
    this._setMessagesVisibleUseCase,
    this._setPinnedMessageUseCase,
    this._antiSwearingFuture, {
    required String externalRoomId,
  }) : super(ChatState.loading()) {
    on<ChatEvent>(
      (event, emit) => event.mapOrNull(
        init: (event) => _onInit(event, emit),
        sendMessage: (event) => _sendMessage(event, emit),
        loadMoreMessages: (event) => _loadMoreMessages(event, emit),
        showEmotion: (event) => _showEmotion(event, emit),
        mentionMessage: (event) => _mentionMessage(event, emit),
        copyMessage: (event) => _copyMessage(event, emit),
        editMessage: (event) => _onEditMessage(event, emit),
        closeOverhang: (event) => _onCloseOverhang(event, emit),
        deleteMessage: (event) => _onDeleteMessage(event, emit),
        update: (event) => _onUpdate(event, emit),
        reportMessage: (event) => _onReportMessage(event, emit),
        blockUser: (event) => _onBlockUser(event, emit),
        scrollToMessage: (event) => _onScrollToMessage(event, emit),
        setMessageRead: (event) => _onSetMessageRead(event, emit),
        setLargeMessage: (event) => _onSetLargeMessage(event, emit),
      ),
      transformer: bloc_concurrency.concurrent(),
    );
    on<_ChangeMessageVisibility>(_onChangeMessageVisibility);
    on<_ChangeMessagesVisibility>(_onChangeMessagesVisibility);
    on<_FinishLoading>(_finishLoading);
    on<_SetBan>(_setBan);
    on<_ConnectivityChanged>(_onConnectivityChanged);
    on<ChatEventSetPinnedMessage>(_onSetPinnedMessage);
    on<_UpdatePinnedMessage>(_onUpdatePinnedMessage);
    on<ChangeSelectedEmotion>(_changeSelectedEmotion);
    on<SetEmotionPannelVisibility>(_setEmotionPannelVisibility);
    on<SendSelectedEmotion>(_sendSelectedEmotion);

    _subscriptions.add(
      _getConnectivityChangeStreamUseCase.call().listen(
            (connectivityResult) => add(_ConnectivityChanged(connectivityResult)),
          ),
    );

    _init(externalRoomId);
  }

  bool fixScroll = false;

  final TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  final AutoScrollController _scrollController = AutoScrollController(initialScrollOffset: 20000);
  AutoScrollController get scrollController => _scrollController;

  final FToast _fToast = FToast();

  void _showToast({required BuildContext context, required String text, required String iconPath}) {
    _fToast.init(context);
    _fToast.removeCustomToast();
    _fToast.showToast(
        toastDuration: const Duration(milliseconds: 1500),
        gravity: ToastGravity.BOTTOM,
        child: ChatToastWidget(
          onClose: () {
            _fToast.removeCustomToast();
          },
          iconPath: iconPath,
          text: text,
        ));
  }

  void _init(String externalRoomId) => add(ChatEvent.init(externalRoomId: externalRoomId));
  Future<void> _onInit(_Init event, Emitter<ChatState> emit) async {
    emit(ChatState.loading());

    final blockResult = await _getBlocksUseCase.call();
    if (blockResult.isError) return;
    final initiatorids = blockResult.successValue.initiator.map((e) => e.id).toList();
    final targetIds = blockResult.successValue.target.map((e) => e.id).toList();

    await _joinRoomUseCase.call(
      externalRoomId: event.externalRoomId,
      eventHandler: (socketEvent, data) async {
        log.debug('Recieved <<< event: $socketEvent, data: $data');

        if (socketEvent == 'successfullyJoined') {
          final tupleResult = await waitConcurrently3(
            _getMessageArrayUseCase.call(externalRoomId: event.externalRoomId),
            _getTalkersUseCase.call(event.externalRoomId),
            _getPinnedMessageUseCase.call(externalRoomId: event.externalRoomId),
          );

          if (tupleResult.item1.isError || tupleResult.item2.isError || tupleResult.item3.isError) {
            return;
          }
          _controller.addListener(() {
            if (state is ChatStateLoaded) {
              final loadedState = state.as<ChatStateLoaded>();
              if (_controller.text.length > 500) {
                if (loadedState.largeMessage == false) {
                  add(const ChatEvent.setLargeMessage(largeMessage: true));
                }
              } else {
                if (loadedState.largeMessage == true) {
                  Future.delayed(const Duration(seconds: 2), () {
                    add(const ChatEvent.setLargeMessage(largeMessage: false));
                  });
                }
              }
            }
          });

          add(_FinishLoading(
            messages: tupleResult.item1.successValue
                .map((e) => _setMessageVisibility(e, initiatorids, targetIds))
                .toList(),
            talkers: tupleResult.item2.successValue,
            pinnedMessage: tupleResult.item3.successValue,
            talker: Talker.fromMap(data['talker']),
            externalRoomId: event.externalRoomId,
            initiatorIds: initiatorids,
            targetIds: targetIds,
          ));

          return;
        }

        if (state.isNotA<ChatStateLoaded>()) return;
        final loadedState = state.as<ChatStateLoaded>();

        if (socketEvent == 'emotion') {
          final emotionName = data['emotion']['name'];

          add(ChatEvent.showEmotion(
            emotion: _getEmotionByNameScenario.call(emotionName),
            isMyEmotion: false,
          ));
        }

        if (socketEvent == 'message') {
          final Message newMessage =
              (await _checkMessageUseCase(message: Message.fromMap(data['message']))).successValue!;

          final checkedMessage = _setMessageVisibility(
            newMessage,
            loadedState.initiatorIds,
            loadedState.targetIds,
          );

          final messages = <Message>[...loadedState.messages, checkedMessage];

          if (scrollController.hasClients &&
                  scrollController.position.maxScrollExtent == scrollController.offset ||
              checkedMessage.isMyMessage == true) {
            add(ChatEvent.update(loadedState.copyWith(messages: messages)));
          } else {
            add(ChatEvent.update(loadedState.copyWith(
                unreadMentions: checkedMessage.isMentionMe == true
                    ? loadedState.unreadMentions + 1
                    : loadedState.unreadMentions,
                messages: messages,
                firstUnreadMessageIndex: loadedState.firstUnreadMessageIndex ?? messages.length - 1,
                unreadMessages: [...loadedState.unreadMessages, checkedMessage])));
          }

          if (scrollController.hasClients &&
              scrollController.position.maxScrollExtent == scrollController.offset) {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent + 1000,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.ease,
            );
          }
          return;
        }

        if (socketEvent == 'userJoined') {
          final Talker newTalker = Talker.fromMap(data['talker']);
          final talkers = <Talker>{...loadedState.talkers, newTalker};

          add(ChatEvent.update(loadedState.copyWith(talkers: talkers.toList())));
          return;
        }

        if (socketEvent == 'userLeft') {
          final talkers = Set<Talker>.from(loadedState.talkers);

          final int leftTalkerId = data['id'];
          talkers.removeWhere((element) => element.id == leftTalkerId);

          add(ChatEvent.update(loadedState.copyWith(talkers: talkers.toList())));
          return;
        }

        if (socketEvent == 'messageEdited') {
          // Todo(dartloli): make message factory (to unify this logic)
          final Message rawEditedMessage = Message.fromMap(data['message']);
          final Message editedMessage = await _checkMessageUseCase
              .call(message: rawEditedMessage)
              .then((value) => value.successValue!);

          final editedMessageIndex =
              loadedState.messages.indexWhere((message) => message.id == editedMessage.id);

          final messages = List<Message>.from(loadedState.messages);
          messages[editedMessageIndex] = editedMessage;

          add(ChatEvent.update(loadedState.copyWith(messages: messages)));
          return;
        }

        if (socketEvent == 'messageDeleted') {
          final messages = List<Message>.from(loadedState.messages);
          messages.removeWhere((message) => message.id.toString() == data['messageId'].toString());

          add(ChatEvent.update(loadedState.copyWith(messages: messages)));
          final int indexInUnread = loadedState.unreadMessages
              .indexWhere((element) => element.id.toString() == data['messageId'].toString());
          if (indexInUnread != -1) {
            add(ChatEvent.setMessageRead(message: loadedState.unreadMessages[indexInUnread]));
          }
          return;
        }

        if (socketEvent == 'messageVisibleSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedMessage = Message.fromMap(data['message']);

          if (loadedState.talker == updatedMessage.talker) {
            return;
          }

          final updatedIndex = messages.indexWhere((message) => message.id == updatedMessage.id);
          if (updatedIndex == -1) return;

          messages[updatedIndex] = updatedMessage;
          add(ChatEvent.update(loadedState.copyWith(messages: messages)));
          return;
        }

        if (socketEvent == 'messagesVisibleSet') {
          final messages = List<Message>.from(loadedState.messages);

          final int userId = int.parse(data['userId'].toString());
          final bool isVisible = data['isVisible'];

          // Update messages
          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.creatorId == userId) {
              messages[i] = message.copyWith(
                isVisible: isVisible,
                talker: message.talker.copyWith(isSupressed: !isVisible),
              );
            }
          }

          // Update talkers
          final talkerIndex = loadedState.talkers.indexWhere((e) => e.user.id == userId);

          final talkers = List<Talker>.from(loadedState.talkers);
          if (talkerIndex != -1) {
            talkers[talkerIndex] = talkers[talkerIndex].copyWith(isSupressed: !isVisible);
          }

          // Update talker
          Talker updatedTalker = loadedState.talker.copyWith();
          if (loadedState.talker.user.id == userId) {
            updatedTalker = updatedTalker.copyWith(isSupressed: !isVisible);
          }

          add(ChatEvent.update(loadedState.copyWith(
            messages: messages,
            talkers: talkers,
            talker: updatedTalker,
          )));
        }

        if (socketEvent == 'userBanSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedUser = User.fromMap(data['user']);

          // Update messages
          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.talker.id == updatedUser.id) {
              messages[i] = message.copyWith(
                talker: message.talker.copyWith(user: updatedUser),
              );
            }
          }

          // Update talkers
          final talkerIndex = loadedState.talkers.indexWhere(
            (e) => e.user.id == updatedUser.id,
          );
          final talkers = List<Talker>.from(loadedState.talkers);
          if (talkerIndex != -1) {
            talkers[talkerIndex] = talkers[talkerIndex].copyWith(user: updatedUser);
          }

          add(ChatEvent.update(loadedState.copyWith(
            messages: messages,
            talkers: talkers,

            // Update talker
            talker: updatedUser.id == loadedState.talker.user.id
                ? loadedState.talker.copyWith(user: updatedUser)
                : loadedState.talker,
          )));
        }

        if (socketEvent == 'banSet' || socketEvent == 'talkerBanSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedTalker = Talker.fromMap(data['talker']);

          // Update messages
          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.talker.id == updatedTalker.id) {
              messages[i] = message.copyWith(
                talker: updatedTalker,
              );
            }
          }

          // Update talkers
          final talkerIndex = loadedState.talkers.indexWhere(
            (e) => e.user.id == updatedTalker.user.id,
          );
          final talkers = List<Talker>.from(loadedState.talkers);
          if (talkerIndex != -1) {
            talkers[talkerIndex] = updatedTalker;
          }

          add(ChatEvent.update(loadedState.copyWith(
            messages: messages,
            talkers: talkers,

            // Update talker
            talker: updatedTalker.user.id == loadedState.talker.user.id
                ? updatedTalker
                : loadedState.talker,
          )));
        }

        if (socketEvent == 'blockSet') {
          final bool isBlocked = data['isBlocked'];
          final int initiatorId = data['initiatorId'];
          final int targetId = data['targetId'];

          final messages = List<Message>.from(loadedState.messages);

          // Если мы сейчас модер, то у нас нет работы с ЧС
          if (loadedState.talker.isModer) return;

          final myId = loadedState.talker.user.id;

          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];

            // Скрыть сообщения цели у инициатора
            if (myId == initiatorId && message.creatorId == targetId) {
              messages[i] = message.copyWith(
                isVisible: !isBlocked,
              );
            }

            // Скрыть сообщения инициатора у цели
            if (myId == targetId && message.creatorId == initiatorId) {
              messages[i] = message.copyWith(
                isVisible: !isBlocked,
              );
            }
          }

          final initiatorIds = List<int>.from(loadedState.initiatorIds);
          final targetIds = List<int>.from(loadedState.targetIds);

          if (initiatorId == myId) {
            if (isBlocked) {
              initiatorIds.add(targetId);
            } else {
              initiatorIds.remove(targetId);
            }
          }

          if (targetId == myId) {
            if (isBlocked) {
              targetIds.add(initiatorId);
            } else {
              targetIds.remove(initiatorId);
            }
          }

          add(ChatEvent.update(loadedState.copyWith(
            messages: messages,
            initiatorIds: initiatorIds,
            targetIds: targetIds,
          )));
        }

        if (socketEvent == 'messagePinned') {
          // Открепляем
          if (data['message'] == null) {
            final updatedMessages = List<Message>.from(loadedState.messages);
            final index = updatedMessages.indexWhere((m) => m.isPinned);

            if (index != -1) {
              updatedMessages[index] = updatedMessages[index].copyWith(isPinned: false);
            }

            _updatePinnedMessage(_UpdatePinnedMessage(
              pinnedMessage: null,
              messages: updatedMessages,
            ));
            return;
          }

          // Закрепляем
          final Message pinnedMessage = Message.fromMap(data['message']);
          final updatedMessages = List<Message>.from(loadedState.messages);
          final index = updatedMessages.indexWhere((m) => m.id == pinnedMessage.id);

          if (index != -1) {
            updatedMessages[index] = pinnedMessage
              ..isMyMessage = updatedMessages[index].isMyMessage;
          }

          _updatePinnedMessage(_UpdatePinnedMessage(
            pinnedMessage: pinnedMessage,
            messages: updatedMessages,
          ));
        }
        if (socketEvent == 'userUpdated') {
          final user = User.fromMap(data['user']);
          final messages = List<Message>.from(loadedState.messages);

          // Update messages
          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.talker.user.id == user.id) {
              messages[i] = message.copyWith(
                talker: message.talker.copyWith(user: user),
              );
            }
          }

          // Update talkers
          final talkerIndex = loadedState.talkers.indexWhere(
            (e) => e.user.id == user.id,
          );
          final talkers = List<Talker>.from(loadedState.talkers);
          if (talkerIndex != -1) {
            talkers[talkerIndex] = talkers[talkerIndex].copyWith(user: user);
          }

          add(ChatEvent.update(loadedState.copyWith(
            messages: messages,
            talkers: talkers,

            // Update talker
            talker: user.id == loadedState.talker.user.id
                ? loadedState.talker.copyWith(user: user)
                : loadedState.talker,
          )));
        }
      },
    );
  }

  /// [ChatEvent.finishLoading]
  void finishLoading(ChatEvent event) => add(event);
  void _finishLoading(_FinishLoading event, Emitter<ChatState> emit) {
    final allEmotions = _getAllEmotionsUseCase.call();

    emit(ChatState.loaded(
      pinnedMessage: event.pinnedMessage,
      messages: event.messages,
      talkers: event.talkers,
      emojis: {},
      allEmotions: allEmotions,
      selectedEmotion: allEmotions.first,
      externalRoomId: event.externalRoomId,
      talker: event.talker,
      initiatorIds: event.initiatorIds,
      targetIds: event.targetIds,
      noneConnection: false,
    ));
  }

  /// [ChatEvent.loadMoreMessages]
  void loadMoreMessages(ChatEvent event) => add(event);
  Future<void> _loadMoreMessages(_LoadMoreMessages event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    if (loadedState.isLoadedAllMessages) return;
    if (event.scrollToMessage == null) {
      fixScroll = true;
    }
    emit(loadedState.copyWith(
      isLoadingMoreMessages: true,
    ));

    final lastMessageId = event.lastMessageId != null
        ? event.lastMessageId.toString()
        : loadedState.messages.first.id.toString();

    final messagesResult = await _getMessageArrayUseCase.call(
        externalRoomId: loadedState.externalRoomId,
        lastId: lastMessageId,
        limit: event.limit.toString());

    if (messagesResult.isError) return;

    final messages = <Message>[
      ...messagesResult.successValue,
      ...loadedState.messages,
    ];

    emit(loadedState.copyWith(
      messages: messages,
      isLoadingMoreMessages: false,
      isLoadedAllMessages: messagesResult.successValue.isEmpty,
    ));

    if (event.scrollToMessage != null) {
      add(ChatEvent.scrollToMessage(message: event.scrollToMessage!));
    }
  }

  Future<void> _onScrollToMessage(_ScrollToMessage event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    final int mentionIndex =
        loadedState.messages.indexWhere((element) => element.id == event.message.id);

    if (mentionIndex != -1) {
      _scrollController
          .scrollToIndex(
            mentionIndex,
            duration: const Duration(microseconds: 100),
            preferPosition: AutoScrollPosition.begin,
          )
          .whenComplete(() => scrollController.highlight(mentionIndex,
              highlightDuration: const Duration(seconds: 3)));
    } else {
      add(
        ChatEvent.loadMoreMessages(
            scrollToMessage: event.message,
            limit: loadedState.messages.first.id - event.message.id + 10),
      );
    }
  }

  Future<void> _onSetMessageRead(_SetMessageRead event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    final List<Message> currentUnreadMessages = [];
    int unreadMentionsCount = 0;
    for (int i = 0; i < loadedState.unreadMessages.length; i++) {
      if (loadedState.unreadMessages.indexOf(event.message) < i) {
        currentUnreadMessages.add(loadedState.unreadMessages[i]);
        if (loadedState.unreadMessages[i].isMentionMe == true) {
          unreadMentionsCount++;
        }
      }
    }

    add(ChatEvent.update(loadedState.copyWith(
      firstUnreadMessageIndex:
          currentUnreadMessages.isEmpty ? null : loadedState.firstUnreadMessageIndex,
      unreadMentions: unreadMentionsCount,
      unreadMessages: currentUnreadMessages,
    )));
  }

  final Map<String, Widget> _emojis = {};

  Future<void> _showEmotion(_ShowEmotion event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    final animationId = const Uuid().v4();

    _emojis.addAll({
      animationId: Padding(
        key: ValueKey(animationId),
        padding: const EdgeInsets.only(right: 12),
        child: Align(
          alignment: Alignment.bottomRight,
          child: EmojiAnimation(
            animationId: animationId,
            onCompleted: (animationId) {
              _emojis.remove(animationId);
            },
            mirror: !loadedState.mirrorEmotion,
            child: EmojiWidget(
              emotionPath: event.emotion.path,
              isTransparentBackground: true,
            ),
          ),
        ),
      ),
    });

    if (event.isMyEmotion) {
      _sendEmotionUseCase.call(
        emotion: event.emotion,
        externalRoomId: loadedState.externalRoomId,
      );
    }

    emit(loadedState.copyWith(
      emojis: _emojis,
      mirrorEmotion: !loadedState.mirrorEmotion,
    ));

    // add(const _CleanEmojis());
  }

  Future<void> _sendMessage(_SendMessage event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loaded = state.as<ChatStateLoaded>();
    if (event.text.length > 500) {
      return;
    }
    if ((await _antiSwearingFuture).containsSwearing(event.text)) {
      _showToast(
          context: event.context,
          text: 'Попробуйте переформулировать',
          iconPath: Resources.disabled);
      return;
    }

    // Edit message
    final messageInputType = loaded.messageInputType;
    if (messageInputType != null) {
      if (messageInputType is _EditType) {
        _editMessageUseCase.call(
          editMessageRequest: EditMessageRequest(
            text: event.text,
            messageId: messageInputType.message.id.toString(),
            externalRoomId: loaded.externalRoomId,
            mentionMessageId: messageInputType.message.mentionMessage?.id.toString(),
          ),
        );

        // Close overhang
        add(const ChatEvent.closeOverhang());
        return;
      }
    }

    // Send message
    _sendMessageUseCase.call(
      sendMessageRequest: SendMessageRequest(
        text: event.text,
        externalRoomId: loaded.externalRoomId,
        mentionMessageId: loaded.messageInputType?.mapOrNull(
          reply: (value) => value.message.id,
        ),
      ),
    );

    // Close overhang
    emit(loaded.copyWith(messageInputType: null));
    _controller.clear();
  }

  void _copyMessage(_CopyMessage event, Emitter<ChatState> emit) {
    Clipboard.setData(ClipboardData(text: event.message.text));

    _showToast(
      context: event.context,
      text: 'Текст сообщения скопирован',
      iconPath: Resources.copy,
    );
  }

  void _mentionMessage(_MentionMessage event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    emit(state
        .as<ChatStateLoaded>()
        .copyWith(messageInputType: MessageInputType.reply(message: event.message)));
    _focusNode.requestFocus();
  }

  void _onEditMessage(_EditMessage event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    emit(state
        .as<ChatStateLoaded>()
        .copyWith(messageInputType: MessageInputType.edit(message: event.message)));
    _controller.text = event.message.text;
    _controller.selection = TextSelection.fromPosition(TextPosition(
      offset: controller.text.length,
    ));
    _focusNode.requestFocus();
  }

  void _onSetLargeMessage(_SetLargeMessage event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    emit(state.as<ChatStateLoaded>().copyWith(largeMessage: event.largeMessage));
  }

  void _onCloseOverhang(_CloseOverhang event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    _controller.clear();
    emit(state.as<ChatStateLoaded>().copyWith(messageInputType: null));
  }

  Future<void> _onDeleteMessage(_DeleteMessage event, Emitter<ChatState> emit) async {
    await showDialog(
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Удалить сообщение?',
        confirmButtonText: 'Удалить',
        onConfirm: () async {
          await _deleteMessageUseCase.call(
            deleteMessageRequest: DeleteMessageRequest(
              messageId: event.message.id.toString(),
              externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
            ),
          );
          Navigator.pop(context);

          _showToast(
            context: event.context,
            text: 'Сообщение удалено',
            iconPath: Resources.remove,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _onUpdate(_UpdateMessages event, Emitter<ChatState> emit) => emit(event.loaded);

  Future<void> _onReportMessage(_ReportMessage event, Emitter<ChatState> emit) async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: event.context,
      builder: (context) {
        return ReportTypeWidget(
          onSelected: (reportType) async {
            await showDialog(
              useRootNavigator: false,
              context: event.context,
              builder: (context) => ConfirmDialog(
                titleText: 'Сообщить о неприемлемом контенте от ${event.message.talker.user.name}',
                confirmButtonText: 'Отправить',
                onConfirm: () async {
                  _reportMessageUseCase.call(
                    reportMessageRequest: ReportMessageRequest(
                      messageId: event.message.id,
                      reason: reportType.name,
                    ),
                  );
                  Navigator.pop(context);

                  _showToast(
                    context: event.context,
                    text: 'Мы получили вашу жалобу',
                    iconPath: Resources.report_badge_simple,
                  );
                },
                onCancel: () {
                  Navigator.pop(context);
                },
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _onBlockUser(_BlockUser event, Emitter<ChatState> emit) async {
    await showDialog(
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Заблокировать ${event.message.talker.user.name}?',
        confirmButtonText: 'Заблокировать',
        subtitleText: 'Пользователь не сможет с вами общаться',
        onConfirm: () async {
          await _addBlockUseCase.call(targetId: event.message.creatorId);
          Navigator.pop(context);

          _showToast(
            context: event.context,
            text: 'Пользователь заблокирован',
            iconPath: Resources.block,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Future<void> _onChangeMessageVisibility(
    _ChangeMessageVisibility event,
    Emitter<ChatState> emit,
  ) async {
    Future<void> action() async => _setMessageVisibleUseCase.call(
          setMessageVisibleRequest: SetMessageVisibleRequest(
            messageId: event.message.id,
            externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
            isVisible: event.isVisible,
          ),
        );

    if (event.isVisible) {
      await action();
      return;
    }

    await showDialog(
      useRootNavigator: false,
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Скрыть сообщение от ${event.message.talker.user.name}?',
        confirmButtonText: 'Скрыть',
        subtitleText: 'Другие пользователи больше не смогут видеть сообщение от этого пользователя',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showToast(
            context: event.context,
            text: 'Сообщение скрыто',
            iconPath: Resources.hide_message,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  /// [ChatEvent.changeMessagesVisibility]
  void changeMessagesVisibility(ChatEvent event) => add(event);
  Future<void> _onChangeMessagesVisibility(
    _ChangeMessagesVisibility event,
    Emitter<ChatState> emit,
  ) async {
    Future<void> action() async => _setMessagesVisibleUseCase.call(
          setMessagesVisibleRequest: SetMessagesVisibleRequest(
            userId: event.talker.user.id.toString(),
            externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
            isVisible: event.isVisible,
          ),
        );

    if (event.isVisible) {
      await action();
      return;
    }

    await showDialog(
      useRootNavigator: false,
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Скрыть сообщения от ${event.talker.user.name}?',
        confirmButtonText: 'Скрыть',
        subtitleText: 'Другие пользователи больше не смогут видеть сообщения от этого пользователя',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showToast(
            context: event.context,
            text: 'Сообщения скрыты',
            iconPath: Resources.hide_message,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  /// [ChatEvent.setBan]
  void setBan(ChatEvent event) => add(event);
  Future<void> _setBan(_SetBan event, Emitter<ChatState> emit) async {
    Future<void> action() async => _setBanUseCase.call(
          setBanRequest: SetBanRequest(
            userId: event.talker.user.id,
            externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
            isBanned: event.isBanned,
          ),
        );

    if (!event.isBanned) {
      await action();
      return;
    }

    await showDialog(
      useRootNavigator: false,
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Заблокировать ${event.talker.user.name}?',
        confirmButtonText: 'Заблокировать',
        subtitleText: 'Пользователь не сможет участвовать в этой комнате',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showToast(
            context: event.context,
            text: 'Пользователь заблокирован',
            iconPath: Resources.block,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  /// Скрываем сообщения
  Message _setMessageVisibility(
    Message message,
    List<int> initiatorIds,
    List<int> targetIds,
  ) {
    // Скрываем сообщение, если автор нас заблокировал
    for (final targetId in targetIds) {
      if (message.creatorId == targetId) {
        return message.copyWith(isVisible: false);
      }
    }

    // Скрываем сообщение, если мы заблокировали автора
    for (final initiatorId in initiatorIds) {
      if (message.creatorId == initiatorId) {
        return message.copyWith(isVisible: false);
      }
    }

    return message;
  }

  @override
  Future<void> close() async {
    await _closeSocketUseCase.call();
    for (final sub in _subscriptions) {
      sub.cancel();
    }
    return super.close();
  }

  /// [ChatEvent.connectivityChanged]
  Future<void> _onConnectivityChanged(_ConnectivityChanged event, Emitter<ChatState> emit) async {
    await state.mapOrNull(
      loaded: (state) async {
        emit(state.copyWith(
          noneConnection:
              event.connectivityResult == ConnectivityResult.none || state.noneConnection,
        ));
      },
    );
  }

  /// [ChatEvent.setPinnedMessage]
  void setPinnedMessage(ChatEventSetPinnedMessage event) => add(event);
  Future<void> _onSetPinnedMessage(ChatEventSetPinnedMessage event, Emitter<ChatState> emit) async {
    final actionName = event.isPinned ? 'Закрепить' : 'Открепить';
    final snackbarActionName = event.isPinned ? 'закреплено' : 'откреплено';
    final leadingIconPath = event.isPinned ? Resources.pin : Resources.unpin;

    await showDialog(
      useRootNavigator: false,
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: '$actionName сообщение?',
        confirmButtonText: actionName,
        onConfirm: () async {
          state.mapOrNull(
            loaded: (state) => _setPinnedMessageUseCase.call(
              setPinnedMessageRequest: SetPinnedMessageRequest(
                messageId: event.isPinned ? event.message.id.toString() : null,
                externalRoomId: state.externalRoomId,
              ),
            ),
          );
          Navigator.pop(context);

          _showToast(
            context: event.context,
            text: 'Сообщение $snackbarActionName',
            iconPath: leadingIconPath,
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  /// [ChatEvent.updatePinnedMessage]
  void _updatePinnedMessage(_UpdatePinnedMessage event) => add(event);
  void _onUpdatePinnedMessage(_UpdatePinnedMessage event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) => emit(state.copyWith(
        pinnedMessage: event.pinnedMessage,
        messages: event.messages,
      )),
    );
  }

  void changeSelectedEmotion(ChangeSelectedEmotion event) => add(event);
  void _changeSelectedEmotion(ChangeSelectedEmotion event, Emitter<ChatState> emit) {
    state.mapOrNull(loaded: (state) {
      emit(state.copyWith(selectedEmotion: event.emotion, showEmojiPannel: false));
    });
  }

  void setEmotionPannelVisibility(SetEmotionPannelVisibility event) => add(event);
  void _setEmotionPannelVisibility(SetEmotionPannelVisibility event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) {
        emit(state.copyWith(showEmojiPannel: event.isVisible));
      },
    );
  }

  void sendSelectedEmotion(SendSelectedEmotion event) => add(event);
  void _sendSelectedEmotion(SendSelectedEmotion event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) {
        add(ChatEvent.showEmotion(emotion: state.selectedEmotion, isMyEmotion: true));
      },
    );
  }
}
