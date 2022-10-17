import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/utils/transitions.dart';
import 'package:watchers_widget/src/features/common/widgets/contribution_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/submit_button.dart';
import 'package:watchers_widget/src/features/deleted_profile/logic/deleted_profile_bloc_params.dart';
import './logic/deleted_profile_bloc.dart';

class DeletedProfileScreen extends StatefulWidget {
  const DeletedProfileScreen(this.params);

  final DeletedProfileBlocParams params;

  static Route route(DeletedProfileBlocParams params) =>
      Transitions.buildFadeTranstion(DeletedProfileScreen(params));

  @override
  State<DeletedProfileScreen> createState() => _DeletedProfileScreenState(params);
}

class _DeletedProfileScreenState extends BlocInjectableState<DeletedProfileScreen,
    DeletedProfileBloc, DeletedProfileEvent, DeletedProfileState> {
  _DeletedProfileScreenState(DeletedProfileBlocParams params) : super.withParams(param1: params);

  @override
  Widget builder(BuildContext context, DeletedProfileState state) {
    return Scaffold(
      body: state.map(
        loading: (_) => const LoadingScreen(),
        loaded: (state) => ModalWidget(
          title: Center(
            child: Text(
              'Профиль удален',
              style: TextStyles.title(fontWeight: FontWeight.w600),
            ),
          ),
          submitButton: Column(
            children: [
              const ContributionWidget(),
              const SizedBox(height: 16),
              SubmitButton.textual(
                text: 'Восстановить профиль',
                onTap: () => bloc.restoreProfile(RestoreProfileEvent(context: context)),
              ),
            ],
          ),
          children: [
            Text(
              'Вы можете восстановить свой профиль до ${state.formatedDate}',
              style: TextStyles.primary,
            ),
          ],
        ),
      ),
    );
  }
}
