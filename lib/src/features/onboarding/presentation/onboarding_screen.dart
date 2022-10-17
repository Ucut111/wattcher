import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/core/utils/transitions.dart';
import 'package:watchers_widget/src/features/chat/presentation/chat_screen.dart';
import 'package:watchers_widget/src/features/common/widgets/avatar_picker_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/contribution_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_title_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/submit_button.dart';
import 'package:watchers_widget/src/features/common/widgets/user_name_input_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/user_name_widget.dart';
import 'package:watchers_widget/src/features/deleted_profile/deleted_profile_screen.dart';
import 'package:watchers_widget/src/features/deleted_profile/logic/deleted_profile_bloc_params.dart';
import 'package:watchers_widget/src/features/error/error_screen.dart';
import 'package:watchers_widget/src/features/onboarding/domain/licence.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc_params.dart';

import 'logic/onboarding_bloc.dart';

class OnboardingScreen extends StatefulWidget {
  final String externalRoomId;
  final OnboardingBlocParams onboardingBlocParams;

  const OnboardingScreen({
    required this.externalRoomId,
    required this.onboardingBlocParams,
  });

  static Route route({
    required String externalRoomId,
    required OnboardingBlocParams onboardingBlocParams,
  }) =>
      Transitions.buildFadeTranstion(OnboardingScreen(
        onboardingBlocParams: onboardingBlocParams,
        externalRoomId: externalRoomId,
      ));

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState(onboardingBlocParams);
}

class _OnboardingScreenState extends BlocInjectableState<OnboardingScreen, OnboardingBloc,
    OnboardingEvent, OnboardingState> {
  _OnboardingScreenState(OnboardingBlocParams params) : super.withParamsNavigator(param1: params);

  @override
  Widget builder(BuildContext context, OnboardingState state) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.chatBackground,
      body: SafeArea(
        top: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: state.map(
              loading: (_) => const LoadingWidget(),
              main: (_) {
                return ModalWidget(
                  title: _buildLicenceTitle(),
                  submitButton: Column(
                    children: [
                      const ContributionWidget(),
                      const SizedBox(height: 16),
                      SubmitButton.textual(
                        text: 'Принять и продолжить',
                        onTap: () => bloc.add(const OnboardingEvent.acceptLicences()),
                      ),
                    ],
                  ),
                  children: [
                    _buildMainParapraph(),
                  ],
                );
              },
              licenceDetails: (state) {
                return ModalWidget(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: _buildLicenceTitle(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: InkWell(
                          onTap: () => bloc.add(const OnboardingEvent.backToMain()),
                          child: const SvgIcon(Resources.close, color: CustomColors.danger),
                        ),
                      ),
                    ],
                  ),
                  submitButton: SubmitButton.textual(
                    text: 'Принять и продолжить',
                    onTap: () => bloc.add(const OnboardingEvent.acceptLicences()),
                  ),
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          state.licenceText + state.licenceText,
                          style: TextStyles.secondary(),
                        ),
                      ),
                    ),
                  ],
                );
              },
              form: (state) {
                return ModalWidget(
                  title: Text(
                    'Имя в чате',
                    style: TextStyles.title(),
                  ),
                  submitButton: SubmitButton.textual(
                    text: 'Сохранить и продолжить',
                    isActive: state.isSubmitActive,
                    onTap: () => bloc.add(OnboardingEvent.submitForm(userName: state.userName)),
                  ),
                  children: [
                    UserNameWidget(
                      onTap: () => bloc.add(const OnboardingEvent.showInput()),
                      userName: state.userName,
                      showChangeTrailing: false,
                    ),
                    if (state.errorDescription != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                        child: Text(
                          state.errorDescription!,
                          style: TextStyles.errorTextStyle(),
                        ),
                      ),
                  ],
                );
              },
              input: (state) {
                return UserNameInputWidget(
                  onSubmitted: () => bloc.add(const OnboardingEvent.submitInput()),
                  userNameFocusNode: bloc.userNameFocusNode,
                  userNameTextEditingController: bloc.userNameTextEditingController,
                );
              },
              avatarPicker: (state) {
                return AvatarPickerWidget(
                  onBackTap: () => bloc.add(
                    OnboardingEvent.backToForm(userName: state.userName),
                  ),
                  onSubmit: () => bloc.add(
                    OnboardingEvent.submitAvatar(
                      userName: state.userName,
                      selectedAvatar: state.selectedAvatar,
                      avatars: state.avatars,
                    ),
                  ),
                  onSelectAvatar: (avatar) => bloc.add(
                    OnboardingEvent.selectAvatar(
                      selectedAvatar: avatar,
                      avatars: state.avatars,
                      userName: state.userName,
                    ),
                  ),
                  selectedAvatar: state.selectedAvatar,
                  avatars: state.avatars,
                );
              },
              showChat: (_) {
                return ChatScreen(
                  externalRoomId: widget.externalRoomId,
                );
              },
              showError: (state) {
                return const ErrorScreen();
              },
              showDeleted: (state) {
                return DeletedProfileScreen(DeletedProfileBlocParams(
                  deletedAt: state.deletedAt,
                ));
              }),
        ),
      ),
    );
  }

  Widget _buildMainParapraph() {
    return Text.rich(
      TextSpan(
        text: 'Я принимаю условия ',
        style: TextStyles.secondary(),
        children: [
          TextSpan(
            text: 'Лицензионного соглашения',
            recognizer: TapGestureRecognizer()
              ..onTap = () => bloc.add(const OnboardingEvent.showLicence(
                    Licence.termsAndConditions,
                  )),
            style: TextStyles.highlighted,
          ),
          const TextSpan(
            text:
                ' и даю своё согласие на обработку персональных данных на условиях, определенных ',
          ),
          TextSpan(
            text: 'Политикой конфиденциальности',
            recognizer: TapGestureRecognizer()
              ..onTap = () => bloc.add(const OnboardingEvent.showLicence(
                    Licence.privacyPolicy,
                  )),
            style: TextStyles.highlighted,
          ),
          const TextSpan(
            text: '.',
          ),
        ],
      ),
    );
  }

  Widget _buildLicenceTitle() {
    return Text(
      'Лицензионное соглашение и политика конфиденциальности',
      style: TextStyles.title(),
    );
  }
}
