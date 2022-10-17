import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/utils/transitions.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_title_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/talker_action_menu.dart';

import '../../common/models/talker.dart';

class TalkersScreen extends StatefulWidget {
  final void Function(Talker talker, bool isBanned) onToggleUserBan;
  final void Function(Talker talker, bool isVisible) onToggleMessagesVisibility;

  //  Удалить кастыль после добавления локальных координаторов (навигаторов)
  final ChatBloc bloc;

  const TalkersScreen({
    required this.onToggleUserBan,
    required this.onToggleMessagesVisibility,
    required this.bloc,
  });

  static Route route({
    required ChatBloc bloc,
    required void Function(Talker talker, bool isBanned) onToggleUserBan,
    required void Function(Talker talker, bool isVisible) onToggleMessagesVisibility,
  }) =>
      Transitions.buildFadeTranstion(TalkersScreen(
        bloc: bloc,
        onToggleUserBan: onToggleUserBan,
        onToggleMessagesVisibility: onToggleMessagesVisibility,
      ));

  @override
  State<TalkersScreen> createState() => _TalkersScreenState();
}

class _TalkersScreenState
    extends BlocInjectableState<TalkersScreen, ChatBloc, ChatEvent, ChatState> {
  _TalkersScreenState() : super.empty();

  @override
  void initState() {
    cubit = widget.bloc;
    super.initState();
  }

  @override
  Widget builder(BuildContext context, ChatState state) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: state.map(
            loading: (value) {
              return ModalWidget(
                title: ModalTitleWidget(
                  titleText: 'Профиль',
                  onBackTap: () {},
                ),
                isEmpty: true,
                emptyWidget: const LoadingWidget(),
              );
            },
            loaded: (state) {
              return ModalWidget(
                title: ModalTitleWidget(
                  titleText: 'Участники',
                  onBackTap: () {
                    Navigator.maybePop(context);
                  },
                ),
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.talkers.length,
                      itemBuilder: (BuildContext context, int index) {
                        final myTalker = state.talker;
                        final iAmAdminOrModer = myTalker.isModer || myTalker.role == 'ADMIN';
                        final isMe = state.talker == state.talkers[index];
                        final talker = state.talkers[index];

                        return TalkerActionMenu(
                          iAmAdminOrModer: iAmAdminOrModer,
                          onToggleMessagesVisibility: widget.onToggleMessagesVisibility,
                          onToggleUserBan: widget.onToggleUserBan,
                          talker: talker,
                          isMe: state.talker == talker,
                          isShowActions: (talker.role != 'ADMIN') &&
                              !isMe &&
                              !talker.isModer &&
                              iAmAdminOrModer,
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
