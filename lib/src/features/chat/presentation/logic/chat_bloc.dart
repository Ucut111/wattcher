import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';
import 'package:watchers_widget/src/features/chat/data/request/delete_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/edit_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/report_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/send_message_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_ban_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_message_visible_request.dart';
import 'package:watchers_widget/src/features/chat/data/request/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/edit_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_all_emotions_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_emotion_by_name_scenario.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/report_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_emotion_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_ban_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_message_visible_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/report_type_widget.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/add_block_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/talker/get_talkers_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/get_user_use_case.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';
import 'package:watchers_widget/src/features/common/widgets/emoji_animation.dart';

import '../../../../core/constants/resources.dart';
import '../../../common/models/message.dart';
import '../../domain/use_cases/check_message_use_case.dart';
import '../../domain/use_cases/get_message_array_use_case.dart';
import '../../domain/use_cases/get_pinned_message_use_case.dart';
import '../../domain/use_cases/join_room_use_case.dart';
import '../../domain/use_cases/send_message_use_case.dart';

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
  final GetUserUseCase _getUserUseCase;
  final AddBlockUseCase _addBlockUseCase;
  final SetMessageVisibleUseCase _setMessageVisibleUseCase;
  final SetMessagesVisibleUseCase _setMessagesVisibleUseCase;
  final SetBanUseCase _setBanUseCase;

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
    required GetUserUseCase getUserUseCase,
    required AddBlockUseCase addBlockUseCase,
    required SetMessageVisibleUseCase setMessageVisibleUseCase,
    required SetMessagesVisibleUseCase setMessagesVisibleUseCase,
    required SetBanUseCase setBanUseCase,
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
        _getUserUseCase = getUserUseCase,
        _addBlockUseCase = addBlockUseCase,
        _setMessageVisibleUseCase = setMessageVisibleUseCase,
        _setMessagesVisibleUseCase = setMessagesVisibleUseCase,
        _setBanUseCase = setBanUseCase,
        super(ChatState.loading()) {
    on<ChatEvent>(
      (event, emit) => event.mapOrNull(
        init: (event) => _init(event, emit),
        sendMessage: (event) => _sendMessage(event, emit),
        loadMoreMessages: (event) => _loadMoreMessages(event, emit),
        showEmotion: (event) => _showEmotion(event, emit),
        mentionMessage: (event) => _mentionMessage(event, emit),
        copyMessage: (event) => _copyMessage(event, emit),
        editMessage: (event) => _onEditMessage(event, emit),
        closeOverhang: (event) => _onCloseOverhang(event, emit),
        deleteMessage: (event) => _onDeleteMessage(event, emit),
        updateMessages: (event) => _onUpdateMessages(event, emit),
        updateTalkers: (event) => _onUpdateTalkers(event, emit),
        reportMessage: (event) => _onReportMessage(event, emit),
        blockUser: (event) => _onBlockUser(event, emit),
      ),
      transformer: bloc_concurrency.concurrent(),
    );
    on<_ChangeMessageVisibility>(_onChangeMessageVisibility);
    on<_ChangeMessagesVisibility>(_onChangeMessagesVisibility);
    on<_FinishLoading>(_onFinishLoading);
    on<_SetBan>(_onSetBan);
    on<_UpdateTalker>(_onUpdateTalker);

    add(ChatEvent.init(externalRoomId: externalRoomId));
  }

  final TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;

  final FocusNode _focusNode = FocusNode();
  FocusNode get focusNode => _focusNode;

  Future<void> _init(_Init event, Emitter<ChatState> emit) async {
    emit(ChatState.loading());

    final talkersResult = await _getTalkersUseCase.call(event.externalRoomId);

    if (talkersResult.isError) return;

    final pinnedMessageResult = await _getPinnedMessageUseCase.call(
        externalRoomId: event.externalRoomId);

    if (pinnedMessageResult.isError) return;

    final messagesResult = await _getMessageArrayUseCase.call(
      externalRoomId: event.externalRoomId,
    );

    if (messagesResult.isError) return;

    final userResult = await _getUserUseCase.call();

    if (userResult.isError) return;

    await _joinRoomUseCase.call(
      externalRoomId: event.externalRoomId,
      eventHandler: (socketEvent, data) async {
        log.debug('Recieved <<< event: $socketEvent, data: $data');

        if (socketEvent == 'successfullyJoined') {
          add(_FinishLoading(
            pinnedMessage: pinnedMessageResult.successValue,
            messages: messagesResult.successValue,
            talkers: talkersResult.successValue,
            talker: Talker.fromMap(data['talker']),
            externalRoomId: event.externalRoomId,
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
          final Message newMessage = (await _checkMessageUseCase(
                  message: Message.fromMap(data['message'])))
              .successValue!;
          final messages = <Message>[...loadedState.messages, newMessage];

          add(ChatEvent.updateMessages(messages));
        }

        if (socketEvent == 'userJoined') {
          final Talker newTalker = Talker.fromMap(data['talker']);
          final talkers = <Talker>[...loadedState.talkers, newTalker];

          add(ChatEvent.updateTalkers(talkers));
        }

        if (socketEvent == 'userLeft') {
          final talkers = <Talker>[];
          talkers.addAll(loadedState.talkers);
          final Talker leftTalker = Talker.fromMap(data);
          talkers.removeWhere((element) => element.id == leftTalker.id);

          add(ChatEvent.updateTalkers(talkers));
        }
        if (socketEvent == 'messageEdited') {
          // Todo(dartloli): make message factory (to unify this logic)
          final Message rawEditedMessage = Message.fromMap(data['message']);
          final Message editedMessage = await _checkMessageUseCase
              .call(message: rawEditedMessage)
              .then((value) => value.successValue!);

          final editedMessageIndex = loadedState.messages
              .indexWhere((message) => message.id == editedMessage.id);

          final messages = List<Message>.from(loadedState.messages);
          messages[editedMessageIndex] = editedMessage;

          add(ChatEvent.updateMessages(messages));
        }

        if (socketEvent == 'messageDeleted') {
          final messages = List<Message>.from(loadedState.messages);
          messages.removeWhere((message) =>
              message.id.toString() == data['messageId'].toString());

          add(ChatEvent.updateMessages(messages));
        }

        if (socketEvent == 'messageVisibleSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedMessage = Message.fromMap(data['message']);

          final updatedIndex =
              messages.indexWhere((message) => message.id == updatedMessage.id);
          if (updatedIndex == -1) return;

          messages[updatedIndex] = updatedMessage;
          add(ChatEvent.updateMessages(messages));
        }

        if (socketEvent == 'messagesVisibleSet') {
          final messages = List<Message>.from(loadedState.messages);

          final String userId = data['userId'];
          final bool isVisible = data['isVisible'];

          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.creatorId.toString() == userId) {
              messages[i] = message.copyWith(
                isVisible: isVisible,
                talker: message.talker.copyWith(isSupressed: !isVisible),
              );
            }
          }

          add(ChatEvent.updateMessages(messages));
        }

        if (socketEvent == 'banSet') {
          final messages = List<Message>.from(loadedState.messages);
          final updatedTalker = Talker.fromMap(data['talker']);

          for (int i = 0; i < messages.length; i++) {
            final message = messages[i];
            if (message.talker.id == updatedTalker.id) {
              messages[i] = message.copyWith(
                talker: updatedTalker,
              );
            }
          }

          add(ChatEvent.updateMessages(messages));

          if (loadedState.talker.id == updatedTalker.id) {
            add(ChatEvent.updateTalker(updatedTalker));
          }
        }
      },
    );
  }

  void _onFinishLoading(_FinishLoading event, Emitter<ChatState> emit) {
    emit(ChatState.loaded(
      pinnedMessage: event.pinnedMessage,
      messages: event.messages,
      talkers: event.talkers,
      emojis: {},
      allEmotions: _getAllEmotionsUseCase.call(),
      externalRoomId: event.externalRoomId,
      talker: event.talker,
    ));
  }

  Future<void> _loadMoreMessages(
      _LoadMoreMessages event, Emitter<ChatState> emit) async {
    if (state.isNotA<ChatStateLoaded>()) return;
    final loadedState = state.as<ChatStateLoaded>();

    if (loadedState.isLoadedAllMessages) return;

    emit(loadedState.copyWith(isLoadingMoreMessages: true));

    final lastMessageId = loadedState.messages.first.id.toString();

    final messagesResult = await _getMessageArrayUseCase.call(
      externalRoomId: loadedState.externalRoomId,
      lastId: lastMessageId,
    );

    if (messagesResult.isError) return;

    final messages = <Message>[
      ...messagesResult.successValue,
      ...loadedState.messages,
    ];

    add(ChatEvent.updateMessages(
      messages,
    ));

    emit(loadedState.copyWith(
      isLoadingMoreMessages: false,
      isLoadedAllMessages: messagesResult.successValue.isEmpty,
    ));
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
            mentionMessageId:
                messageInputType.message.mentionMessage?.id.toString(),
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
    log.debug('Сообщение было скопировано в буфер обмена (toast)');
  }

  void _mentionMessage(_MentionMessage event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    emit(state.as<ChatStateLoaded>().copyWith(
        messageInputType: MessageInputType.reply(message: event.message)));
    _focusNode.requestFocus();
  }

  void _onEditMessage(_EditMessage event, Emitter<ChatState> emit) {
    if (state.isNotA<ChatStateLoaded>()) return;
    emit(state.as<ChatStateLoaded>().copyWith(
        messageInputType: MessageInputType.edit(message: event.message)));
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

  void _onDeleteMessage(_DeleteMessage event, Emitter<ChatState> emit) {
    _deleteMessageUseCase.call(
      deleteMessageRequest: DeleteMessageRequest(
        messageId: event.message.id.toString(),
        externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
      ),
    );
  }

  void _onUpdateMessages(_UpdateMessages event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) => emit(state.copyWith(
        messages: event.messages,
      )),
    );
  }

  void _onUpdateTalkers(_UpdateTalkers event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) => emit(state.copyWith(talkers: event.talkers)),
    );
  }

  Future<void> _onReportMessage(
      _ReportMessage event, Emitter<ChatState> emit) async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: event.context,
      builder: (context) {
        return ReportTypeWidget(
          onSelected: (reportType) {
            // Todo(dartloli): show confirm dialog (Сообщить о неприемлемом контенте от Mery)

            // Send report
            _reportMessageUseCase.call(
              reportMessageRequest: ReportMessageRequest(
                messageId: event.message.id,
                reason: reportType.name,
              ),
            );

            // Todo(dartloli): Show snackbar (Мы получили вашу жалобу)
          },
        );
      },
    );
  }

  Future<void> _onBlockUser(_BlockUser event, Emitter<ChatState> emit) async {
    // Todo(dartloli): show confirm dialog (Заблокировать Mery?)
    // Пользователь не сможет с вами общаться

    await _addBlockUseCase.call(targetId: event.message.creatorId);
  }

  Future<void> _onChangeMessageVisibility(
    _ChangeMessageVisibility event,
    Emitter<ChatState> emit,
  ) async {
    await _setMessageVisibleUseCase.call(
      setMessageVisibleRequest: SetMessageVisibleRequest(
        messageId: event.message.id,
        externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
        isVisible: event.isVisible,
      ),
    );
  }

  Future<void> _onChangeMessagesVisibility(
    _ChangeMessagesVisibility event,
    Emitter<ChatState> emit,
  ) async {
    await _setMessagesVisibleUseCase.call(
      setMessagesVisibleRequest: SetMessagesVisibleRequest(
        userId: event.message.creatorId.toString(),
        externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
        isVisible: event.isVisible,
      ),
    );
  }

  void _onSetBan(_SetBan event, Emitter<ChatState> emit) {
    _setBanUseCase.call(
      setBanRequest: SetBanRequest(
        userId: event.message.creatorId,
        externalRoomId: state.as<ChatStateLoaded>().externalRoomId,
        isBanned: event.isBanned,
      ),
    );
  }

  void _onUpdateTalker(_UpdateTalker event, Emitter<ChatState> emit) {
    state.mapOrNull(
      loaded: (state) => emit(state.copyWith(talker: event.talker)),
    );
  }
}
