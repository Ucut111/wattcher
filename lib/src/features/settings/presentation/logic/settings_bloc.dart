import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/avatar/get_all_avatars_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/get_blocks_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/block/remove_block_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/delete_user_user_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/get_user_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/update_user_use_case.dart';
import 'package:watchers_widget/src/features/common/models/user.dart';
import 'package:watchers_widget/src/features/common/widgets/dialogs/confirm_dialog.dart';
import 'package:watchers_widget/src/features/common/widgets/snacks/info_snackbar.dart';
import 'package:watchers_widget/src/features/onboarding/domain/user_name.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetBlocksUseCase _getBlocksUseCase;
  final GetUserUseCase _getUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final GetAllAvatarsUseCase _getAllAvatarsUseCase;
  final RemoveBlockUseCase _removeBlockUseCase;
  final DeleteUserUseCase _deleteUserUseCase;

  SettingsBloc({
    required GetBlocksUseCase getBlocksUseCase,
    required GetUserUseCase getUserUseCase,
    required UpdateUserUseCase updateUserUseCase,
    required GetAllAvatarsUseCase getAllAvatarsUseCase,
    required RemoveBlockUseCase removeBlockUseCase,
    required DeleteUserUseCase deleteUserUseCase,
  })  : _getBlocksUseCase = getBlocksUseCase,
        _getUserUseCase = getUserUseCase,
        _updateUserUseCase = updateUserUseCase,
        _getAllAvatarsUseCase = getAllAvatarsUseCase,
        _removeBlockUseCase = removeBlockUseCase,
        _deleteUserUseCase = deleteUserUseCase,
        super(const SettingsState.loading()) {
    on<SettingsEvent>(
      (event, emit) => event.maybeMap<Future<void>>(
        orElse: () async {},
        init: (event) => _init(event, emit),
        toBlackList: (event) => _toBlackList(event, emit),
        toProfile: (event) => _toProfile(event, emit),
        backToSettings: (event) => _backToSettings(event, emit),
        toAvatarPicker: (event) => _toAvatarPicker(event, emit),
        selectAvatar: (event) => _selectAvatar(event, emit),
        submitAvatar: (event) => _submitAvatar(event, emit),
        backToProfile: (event) => _backToProfile(event, emit),
        showInput: (event) => _showInput(event, emit),
        submitInput: (event) => _submitInput(event, emit),
        showUnblockDialog: (event) => _showUnblockDialog(event, emit),
      ),
    );

    on<_DeleteUser>(_onDeleteUser);

    add(const SettingsEvent.init());
  }

  final TextEditingController _userNameTextEditingController = TextEditingController();
  TextEditingController get userNameTextEditingController => _userNameTextEditingController;

  final FocusNode _userNameFocusNode = FocusNode();
  FocusNode get userNameFocusNode => _userNameFocusNode;

  Future<void> _init(_Init event, Emitter<SettingsState> emit) async {
    final result = await _getBlocksUseCase();
    if (result.isSuccess) {
      return emit(SettingsState.settings(blocks: result.successValue.initiator));
    }
  }

  Future<void> _toBlackList(_ToBlackList event, Emitter<SettingsState> emit) async {
    emit(SettingsState.blackList(blocks: event.blocks));
  }

  Future<void> _toProfile(_ToProfile event, Emitter<SettingsState> emit) async {
    emit(const SettingsState.loading());

    final result = await _getUserUseCase.call();

    if (result.isSuccess) {
      return emit(SettingsState.profile(
        blocks: event.blocks,
        user: result.successValue.user,
      ));
    }
  }

  Future<void> _backToSettings(_BackToSettings event, Emitter<SettingsState> emit) async {
    emit(SettingsState.settings(blocks: event.blocks));
  }

  Future<void> _toAvatarPicker(_ToAvatarPicker event, Emitter<SettingsState> emit) async {
    final avatarsResult = await _getAllAvatarsUseCase.call();

    if (avatarsResult.isError) {
      return;
    }

    emit(SettingsState.avatarPicker(
      blocks: event.blocks,
      user: event.user,
      avatars: avatarsResult.successValue,
      selectedAvatar: event.user.avatar,
      isAvatarChanged: false,
    ));
  }

  Future<void> _selectAvatar(_SelectAvatar event, Emitter<SettingsState> emit) async {
    emit(SettingsState.avatarPicker(
      blocks: event.blocks,
      avatars: event.avatars,
      user: event.user,
      selectedAvatar: event.selectedAvatar,
      isAvatarChanged: event.selectedAvatar != event.user.avatar,
    ));
  }

  Future<void> _submitAvatar(_SubmitAvatar event, Emitter<SettingsState> emit) async {
    final newPic = event.selectedAvatar.pic;

    await _updateUserUseCase.call(pic: newPic);

    emit(SettingsState.profile(
      blocks: event.blocks,
      user: event.user.copyWith(pic: newPic),
    ));
  }

  Future<void> _backToProfile(_BackToProfile event, Emitter<SettingsState> emit) async {
    emit(SettingsState.profile(blocks: event.blocks, user: event.user));
  }

  Future<void> _showInput(_ShowInput event, Emitter<SettingsState> emit) async {
    userNameFocusNode.requestFocus();
    userNameTextEditingController.text = event.user.name;
    emit(SettingsState.inputEditor(blocks: event.blocks, user: event.user));
  }

  Future<void> _submitInput(_SubmitInput event, Emitter<SettingsState> emit) async {
    final userName = UserName.dirty(_userNameTextEditingController.text);

    if (userName.invalid) {
      return;
    }

    if (event.user.name != userName.value) {
      final result = await _updateUserUseCase(name: userName.value);

      if (result.isError) {
        return;
      }
    }

    emit(SettingsState.profile(
      blocks: event.blocks,
      user: event.user.copyWith(name: userName.value),
    ));
  }

  Future<void> _showUnblockDialog(_ShowUnblockDialog event, Emitter<SettingsState> emit) async {
    await showDialog(
      context: event.context,
      builder: (context) => ConfirmDialog(
        confirmButtonText: 'Разблокировать',
        titleText: 'Разблокировать ${event.user.name}?',
        onConfirm: () async {
          final result = await _removeBlockUseCase(targetId: event.user.id);

          if (result.isError) {
            return;
          }

          emit(SettingsState.blackList(blocks: event.blocks.toList()..remove(event.user)));

          Navigator.pop(context);

          _showSnackbar(
            context: event.context,
            snackBar: const InfoSnackbar(
              leadingIconPath: Resources.block,
              titleText: 'Пользователь разблокирован',
            ).build(),
          );
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
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

  /// [SettingsEvent.deleteUser]
  void deleteUser(SettingsEvent event) => add(event);
  Future<void> _onDeleteUser(
    _DeleteUser event,
    Emitter<SettingsState> emit,
  ) async {
    await showDialog(
      context: event.context,
      builder: (context) => ConfirmDialog(
        titleText: 'Удаление профиля',
        subtitleText: 'Все данные будут удалены. Вы сможете восстановить профиль в течение 30 дней',
        confirmButtonText: 'Удалить профиль',
        cancelButtonText: 'Отмена',
        onConfirm: () async {
          final result = await _deleteUserUseCase.call();

          if (result.isError) {
            return;
          }

          Navigator.of(context).maybePop();
          Navigator.of(event.context).maybePop();
          event.context.read<OnboardingBloc>().add(const OnboardingEvent.showDeleted());
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
