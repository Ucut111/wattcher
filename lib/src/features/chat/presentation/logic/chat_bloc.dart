import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:uuid/uuid.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
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
import 'package:watchers_widget/src/features/chat/domain/use_cases/report_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_emotion_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_ban_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_message_visible_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/report_type_widget.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/add_block_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/get_blocks_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/talker/get_talkers_use_case.dart';
import 'package:watchers_widget/src/features/common/models/message.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';
import 'package:watchers_widget/src/features/common/widgets/dialogs/confirm_dialog.dart';
import 'package:watchers_widget/src/features/common/widgets/emoji_animation.dart';
import 'package:watchers_widget/src/features/common/widgets/snacks/info_snackbar.dart';

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

  ChatBloc({
    required GetMessageArrayUseCase getMessageArrayUseCase,
    required GetPinnedMessageUseCase getPinnedMessageUseCase,
    required JoinRoomUseCase joinRoomUseCase,
    required SendMessageUseCase sendMessageUseCase,
    required CheckMessageUseCase checkMessageUseCase,
    required String externalRoomId,
    required SendEmotionUseCase sendEmotionUseCase,
    required GetAllEmotionsUseCase getAllEmotionsUseCase,
    required GetEmotionByNameScenario getEmotionByNameScenario,
    required GetTalkersUseCase getTalkersUseCase,
    required EditMessageUseCase editMessageUseCase,
    required DeleteMessageUseCase deleteMessageUseCase,
    required ReportMessageUseCase reportMessageUseCase,
    required AddBlockUseCase addBlockUseCase,
    required SetMessageVisibleUseCase setMessageVisibleUseCase,
    required SetMessagesVisibleUseCase setMessagesVisibleUseCase,
    required SetBanUseCase setBanUseCase,
    required GetBlocksUseCase getBlocksUseCase,
    required CloseSocketUseCase closeSocketUseCase,
  })  : _getMessageArrayUseCase = getMessageArrayUseCase,
        _getPinnedMessageUseCase = getPinnedMessageUseCase,
        _joinRoomUseCase = joinRoomUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _checkMessageUseCase = checkMessageUseCase,
        _sendEmotionUseCase = sendEmotionUseCase,
        _getAllEmotionsUseCase = getAllEmotionsUseCase,
        _getEmotionByNameScenario = getEmotionByNameScenario,
        _getTalkersUseCase = getTalkersUseCase,
        _editMessageUseCase = editMessageUseCase,
        _deleteMessageUseCase = deleteMessageUseCase,
        _reportMessageUseCase = reportMessageUseCase,
        _addBlockUseCase = addBlockUseCase,
        _setMessageVisibleUseCase = setMessageVisibleUseCase,
        _setMessagesVisibleUseCase = setMessagesVisibleUseCase,
        _setBanUseCase = setBanUseCase,
        _getBlocksUseCase = getBlocksUseCase,
        _closeSocketUseCase = closeSocketUseCase,
        super(ChatState.loading()) {
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
      ),
      transformer: bloc_concurrency.concurrent(),
    );
    on<_ChangeMessageVisibility>(_onChangeMessageVisibility);
    on<_ChangeMessagesVisibility>(_onChangeMessagesVisibility);
    on<_FinishLoading>(_finishLoading);
    on<_SetBan>(_setBan);

    _init(externalRoomId);
  }

  final TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  final AutoScrollController _scrollController = AutoScrollController();
  AutoScrollController get scrollController => _scrollController;

  void _init(String externalRoomId) => add(ChatEvent.init(externalRoomId: externalRoomId));
  Future<void> _onInit(_Init event, Emitter<ChatState> emit) async {
    emit(ChatState.loading());

    final talkersResult = await _getTalkersUseCase.call(event.externalRoomId);

    if (talkersResult.isError) return;

    final pinnedMessageResult =
        await _getPinnedMessageUseCase.call(externalRoomId: event.externalRoomId);

    if (pinnedMessageResult.isError) return;

    final messagesResult = await _getMessageArrayUseCase.call(
      externalRoomId: event.externalRoomId,
    );

    if (messagesResult.isError) return;

    final blockResult = await _getBlocksUseCase.call();
    if (blockResult.isError) return;
    final initiatorids = blockResult.successValue.initiator.map((e) => e.id).toList();
    final targetIds = blockResult.successValue.target.map((e) => e.id).toList();

    await _joinRoomUseCase.call(
      externalRoomId: event.externalRoomId,
      eventHandler: (socketEvent, data) async {
        log.debug('Recieved <<< event: $socketEvent, data: $data');

        if (socketEvent == 'successfullyJoined') {
          add(_FinishLoading(
            pinnedMessage: pinnedMessageResult.successValue,
            messages: messagesResult.successValue
                .map((e) => _setMessageVisibility(e, initiatorids, targetIds))
                .toList(),
            talkers: talkersResult.successValue,
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

          add(ChatEvent.update(loadedState.copyWith(messages: messages)));
          return;
        }

        if (socketEvent == 'userJoined') {
          final Talker newTalker = Talker.fromMap(data['talker']);
          final talkers = <Talker>[...loadedState.talkers, newTalker];

          add(ChatEvent.update(loadedState.copyWith(talkers: talkers)));
          return;
        }

        if (socketEvent == 'userLeft') {
          final talkers = <Talker>[];
          talkers.addAll(loadedState.talkers);

          // Это значит, что юзер уже удален, можно попросить бек быстрее отвечать на удаление юзера
          // чтобы мы могли закрыть чат до 'userLeft'
          if (data['user'] == null) return;

          final Talker leftTalker = Talker.fromMap(data);
          talkers.removeWhere((element) => element.id == leftTalker.id);

          add(ChatEvent.update(loadedState.copyWith(talkers: talkers)));
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
          return;
        }

        if (socketEvent == 'messageVisibleSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedMessage = Message.fromMap(data['message']);

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
      },
    );
  }

  /// [ChatEvent.finishLoading]
  void finishLoading(ChatEvent event) => add(event);
  void _finishLoading(_FinishLoading event, Emitter<ChatState> emit) {
    emit(ChatState.loaded(
      pinnedMessage: event.pinnedMessage,
      messages: event.messages,
      talkers: event.talkers,
      emojis: {},
      allEmotions: _getAllEmotionsUseCase.call(),
      externalRoomId: event.externalRoomId,
      talker: event.talker,
      initiatorIds: event.initiatorIds,
      targetIds: event.targetIds,
    ));
  }

  /// [ChatEvent.loadMoreMessages]
  void loadMoreMessages(ChatEvent event) => add(event);
  Future<void> _loadMoreMessages(_LoadMoreMessages event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    if (loadedState.isLoadedAllMessages) return;

    emit(loadedState.copyWith(isLoadingMoreMessages: true));

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
          .scrollToIndex(loadedState.messages.length - mentionIndex - 1,
              duration: const Duration(microseconds: 100),
              preferPosition: AutoScrollPosition.middle)
          .whenComplete(() => scrollController.highlight(
              loadedState.messages.length - mentionIndex - 1,
              highlightDuration: const Duration(seconds: 3)));
    } else {
      add(
        ChatEvent.loadMoreMessages(
            scrollToMessage: event.message,
            limit: loadedState.messages.first.id - event.message.id + 10),
      );
    }
  }

  Future<void> _showEmotion(_ShowEmotion event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    final emojis = Map<String, Widget>.from(loadedState.emojis);

    final animationId = const Uuid().v4();

    emojis.addAll({
      animationId: Align(
        key: ValueKey(animationId),
        alignment: Alignment.bottomRight,
        child: EmojiAnimation(
          animationId: animationId,
          onCompleted: (animationId) {
            emojis.removeWhere((id, _) => id == animationId);
          },
          mirror: !loadedState.mirrorEmotion,
          child: EmojiWidget(event.emotion.path),
        ),
      )
    });

    if (event.isMyEmotion) {
      _sendEmotionUseCase.call(
        emotion: event.emotion,
        externalRoomId: loadedState.externalRoomId,
      );
    }

    emit(loadedState.copyWith(
      emojis: emojis,
      mirrorEmotion: !loadedState.mirrorEmotion,
    ));
  }

  Future<void> _sendMessage(_SendMessage event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loaded = state.as<ChatStateLoaded>();

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

    _showSnackbar(
      context: event.context,
      snackBar: const InfoSnackbar(
        leadingIconPath: Resources.copy,
        titleText: 'Текст сообщения скопирован',
      ).build(),
    );
  }

  void _showSnackbar({
    required BuildContext context,
    required SnackBar snackBar,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
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

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.remove,
              titleText: 'Сообщение удалено',
            ).build(),
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
              context: event.context,
              builder: (context) => ConfirmDialog(
                titleText: 'Сообщить о неприемлемом контенте от ${event.message.user.name}',
                confirmButtonText: 'Отправить',
                onConfirm: () async {
                  _reportMessageUseCase.call(
                    reportMessageRequest: ReportMessageRequest(
                      messageId: event.message.id,
                      reason: reportType.name,
                    ),
                  );
                  Navigator.pop(context);

                  _showSnackbar(
                    context: event.context,
                    snackBar: const InfoSnackbar(
                      leadingIconPath: Resources.report_badge_simple,
                      titleText: 'Мы получили вашу жалобу',
                    ).build(),
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
        titleText: 'Заблокировать ${event.message.user.name}?',
        confirmButtonText: 'Заблокировать',
        subtitleText: 'Пользователь не сможет с вами общаться',
        onConfirm: () async {
          await _addBlockUseCase.call(targetId: event.message.creatorId);
          Navigator.pop(context);

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.block,
              titleText: 'Пользователь заблокирован',
            ).build(),
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
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Скрыть сообщение от ${event.message.user.name}?',
        confirmButtonText: 'Скрыть',
        subtitleText: 'Другие пользователи больше не смогут видеть сообщение от этого пользователя',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.hide_message,
              titleText: 'Сообщение скрыто',
            ).build(),
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
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Скрыть сообщения от ${event.talker.user.name}?',
        confirmButtonText: 'Скрыть',
        subtitleText: 'Другие пользователи больше не смогут видеть сообщения от этого пользователя',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.hide_message,
              titleText: 'Сообщения скрыты',
            ).build(),
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
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Заблокировать ${event.talker.user.name}?',
        confirmButtonText: 'Заблокировать',
        subtitleText: 'Пользователь не сможет участвовать в этой комнате',
        onConfirm: () async {
          Navigator.pop(context);

          await action();

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.block,
              titleText: 'Пользователь заблокирован',
            ).build(),
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
    return super.close();
  }
}
