import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchers_widget/src/core/base/bloc_injectable_state.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/vip_badge.dart';
import 'package:watchers_widget/src/features/common/widgets/avatar_picker_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/contribution_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/loading_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_title_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/modal_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/user_list_tile.dart';
import 'package:watchers_widget/src/features/common/widgets/user_name_input_widget.dart';
import 'package:watchers_widget/src/features/common/widgets/user_name_widget.dart';

import 'logic/settings_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen._();

  static Route route() => MaterialPageRoute(
        builder: (_) => const SettingsScreen._(),
      );

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState
    extends BlocInjectableState<SettingsScreen, SettingsBloc, SettingsEvent, SettingsState> {
  @override
  Widget builder(BuildContext context, SettingsState state) {
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
            settings: (state) {
              return ModalWidget(
                title: ModalTitleWidget(
                  titleText: 'Профиль',
                  onBackTap: () {
                    Navigator.maybePop(context);
                  },
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.fw, 16.fh, 0.fw, 8.fh),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Настройки',
                        style: TextStyles.title(fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: CustomColors.secondary,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => bloc.add(SettingsEvent.toProfile(blocks: state.blocks)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Профиль',
                                  style: TextStyles.setting,
                                ),
                                SvgIcon(
                                  Resources.chevron,
                                  color: CustomColors.textTertiary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            color: CustomColors.divider,
                          ),
                        ),
                        InkWell(
                          onTap: () => bloc.add(SettingsEvent.toBlackList(blocks: state.blocks)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Заблокированные',
                                  style: TextStyles.setting,
                                ),
                                const Spacer(),
                                Text(
                                  state.blocks.length.toString(),
                                  style: TextStyles.contribution,
                                ),
                                const SizedBox(width: 16),
                                // if (widget.)
                                const SvgIcon(
                                  Resources.chevron,
                                  color: CustomColors.textTertiary,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => bloc.deleteUser(SettingsEvent.deleteUser(context: context)),
                    child: const Text(
                      'Удалить профиль',
                      style: TextStyles.secondary,
                    ),
                  ),
                  SizedBox(height: 6.fh),
                  const ContributionWidget(),
                ],
              );
            },
            profile: (state) {
              return ModalWidget(
                title: ModalTitleWidget(
                  titleText: 'Профиль',
                  onBackTap: () => bloc.add(SettingsEvent.backToSettings(blocks: state.blocks)),
                ),
                children: [
                  SizedBox(height: 16.fh),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                          child: CircleAvatar(
                            radius: 33.fw,
                            child: SvgPicture.network(
                              state.user.pic,
                            ),
                          ),
                        ),
                      ),
                      // Todo(dartloli): get status from backend
                      if (state.user.statusName != null)
                        Positioned(
                          bottom: 0,
                          child: VipBadgeWidget(
                            statusName: state.user.statusName!,
                            isSettings: true,
                          ),
                        ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => bloc.add(
                      SettingsEvent.toAvatarPicker(
                        blocks: state.blocks,
                        user: state.user,
                      ),
                    ),
                    child: const Text(
                      'Выбрать другой аватар',
                      style: TextStyles.highlighted,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Имя в чате',
                          style: TextStyles.secondary,
                        ),
                      ],
                    ),
                  ),
                  UserNameWidget(
                    onTap: () => bloc.add(SettingsEvent.showInput(
                      blocks: state.blocks,
                      user: state.user,
                    )),
                    userName: state.user.name,
                  ),
                ],
              );
            },
            avatarPicker: (state) {
              return AvatarPickerWidget(
                avatars: state.avatars,
                onBackTap: () => bloc.add(SettingsEvent.backToProfile(
                  blocks: state.blocks,
                  user: state.user,
                )),
                onSelectAvatar: (avatar) => bloc.add(
                  SettingsEvent.selectAvatar(
                    selectedAvatar: avatar,
                    avatars: state.avatars,
                    user: state.user,
                    blocks: state.blocks,
                  ),
                ),
                onSubmit: () => bloc.add(SettingsEvent.submitAvatar(
                  blocks: state.blocks,
                  user: state.user,
                  selectedAvatar: state.selectedAvatar,
                )),
                selectedAvatar: state.selectedAvatar,
                isSubmitActive: state.isAvatarChanged,
              );
            },
            inputEditor: (state) {
              return UserNameInputWidget(
                userNameFocusNode: bloc.userNameFocusNode,
                userNameTextEditingController: bloc.userNameTextEditingController,
                onSubmitted: () => bloc.add(SettingsEvent.submitInput(
                  blocks: state.blocks,
                  user: state.user,
                )),
              );
            },
            blackList: (state) {
              return ModalWidget(
                title: ModalTitleWidget(
                  onBackTap: () => bloc.add(SettingsEvent.backToSettings(blocks: state.blocks)),
                  titleText: 'Заблокированные',
                ),
                emptyWidget: Text(
                  'У вас нет заблокированных пользователей',
                  style: TextStyles.title(fontSize: 15),
                  textAlign: TextAlign.left,
                ),
                isEmpty: state.blocks.isEmpty,
                children: [
                  SizedBox(height: 16.fh),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.blocks.length,
                    itemBuilder: (context, index) {
                      final block = state.blocks[index];
                      return UserListTile(
                        user: block,
                        onTap: () => bloc.add(SettingsEvent.showUnblockDialog(
                          context: context,
                          user: block,
                          blocks: state.blocks,
                        )),
                      );
                    },
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
