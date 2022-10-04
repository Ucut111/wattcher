import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_title_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/talker_list_tile.dart';
import 'package:watchers_widget/src/features/talkers/presentation/logic/talkers_bloc.dart';

import '../../common/models/talker.dart';

class TalkersScreen extends StatefulWidget {
  final List<Talker> talkers;

  const TalkersScreen(this.talkers);

  static Route route(List<Talker> talkers) =>
      MaterialPageRoute(builder: (_) => TalkersScreen(talkers));

  @override
  State<TalkersScreen> createState() => _TalkersScreenState(talkers);
}

class _TalkersScreenState
    extends BlocInjectableState<TalkersScreen, TalkersBloc, TalkersEvent, TalkersState> {
  _TalkersScreenState(List<Talker> talkers) : super.withParams(param1: talkers);

  @override
  Widget builder(BuildContext context, TalkersState state) {
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
                children: const [
                  LoadingWidget(),
                ],
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
                        late final Talker myTalker;
                        for (int i = 0; i < state.talkers.length; i++) {
                          if (state.talkers[i].isMe == true) {
                            myTalker = state.talkers[i];
                          }
                        }
                        return TalkerListTile(
                            iAmAdminOrModer: myTalker.isModer || myTalker.role == 'ADMIN',
                            onBlockUserTap: () {},
                            onHideMessagesTap: () {},
                            talker: state.talkers[index]);
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
