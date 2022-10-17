import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/on_connectivity_changed_use_case.dart';
import 'package:watchers_widget/src/features/common/anti_swearing/anti_swearing.dart';
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
  final Future<AntiSwearing> _antiSwearingFuture;
  final GetConnectivityChangeStreamUseCase _connectivityChangeStreamUseCase;

  SettingsBloc({
    required GetBlocksUseCase getBlocksUseCase,
    required GetUserUseCase getUserUseCase,
    required UpdateUserUseCase updateUserUseCase,
    required GetAllAvatarsUseCase getAllAvatarsUseCase,
    required RemoveBlockUseCase removeBlockUseCase,
    required DeleteUserUseCase deleteUserUseCase,
    required Future<AntiSwearing> antiSwearingFuture,
    required GetConnectivityChangeStreamUseCase getConnectivityChangeStreamUseCase,
  })  : _getBlocksUseCase = getBlocksUseCase,
        _getUserUseCase = getUserUseCase,
        _updateUserUseCase = updateUserUseCase,
        _getAllAvatarsUseCase = getAllAvatarsUseCase,
        _removeBlockUseCase = removeBlockUseCase,
        _deleteUserUseCase = deleteUserUseCase,
        _antiSwearingFuture = antiSwearingFuture,
        _connectivityChangeStreamUseCase = getConnectivityChangeStreamUseCase,
        super(const SettingsState.settings()) {
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
    on<_OnConnectivityChanged>(_onOnConnectivityChanged);

    add(const SettingsEvent.init());
  }

  final TextEditingController _userNameTextEditingController = TextEditingController();
  TextEditingController get userNameTextEditingController => _userNameTextEditingController;

  final FocusNode _userNameFocusNode = FocusNode();
  FocusNode get userNameFocusNode => _userNameFocusNode;

  /// Stored data
  List<User>? _blocks;
  User? _user;
  ConnectivityResult? _connectivityResult;

  Future<void> _init(_Init event, Emitter<SettingsState> emit) async {
    _connectivityResult = await Connectivity().checkConnectivity();
    _connectivityChangeStreamUseCase.call().listen((connectivityResult) {
      add(SettingsEvent.onConnectivityChanged(connectivityResult));
    });

    if (_connectivityResult != ConnectionState.none) {
      await Future.wait([
        _loadBlocks(emit),
        _loadProfile(emit),
      ]);
    }
  }

  Future<void> _loadBlocks(Emitter<SettingsState> emit) async {
    final result = await _getBlocksUseCase();
    if (result.isSuccess) {
      _blocks = result.successValue.initiator;

      if (state is _Settings) {
        return emit(SettingsState.settings(blocks: _blocks));
      }

      if (state is _BlockUsers) {
        return emit(SettingsState.blackList(blocks: _blocks));
      }
    }
  }

  Future<void> _loadProfile(Emitter<SettingsState> emit) async {
    final result = await _getUserUseCase.call();

    if (result.isSuccess) {
      _user = result.successValue.user;

      if (state is _Profile) {
        return emit(SettingsState.profile(user: _user));
      }
    }
  }

  Future<void> _toBlackList(_ToBlackList event, Emitter<SettingsState> emit) async {
    emit(SettingsState.blackList(blocks: _blocks));
  }

  Future<void> _toProfile(_ToProfile event, Emitter<SettingsState> emit) async {
    return emit(SettingsState.profile(user: _user));
  }

  Future<void> _backToSettings(_BackToSettings event, Emitter<SettingsState> emit) async {
    emit(SettingsState.settings(blocks: _blocks));
  }

  Future<void> _toAvatarPicker(_ToAvatarPicker event, Emitter<SettingsState> emit) async {
    if (_connectivityResult == ConnectivityResult.none || _connectivityResult == null) return;

    final avatarsResult = await _getAllAvatarsUseCase.call();

    if (avatarsResult.isError) {
      return;
    }

    if (_user == null) return;

    emit(SettingsState.avatarPicker(
      avatars: avatarsResult.successValue,
      selectedAvatar: _user!.avatar,
      isAvatarChanged: false,
    ));
  }

  Future<void> _selectAvatar(_SelectAvatar event, Emitter<SettingsState> emit) async {
    if (_user == null) return;

    emit(SettingsState.avatarPicker(
      avatars: event.avatars,
      selectedAvatar: event.selectedAvatar,
      isAvatarChanged: event.selectedAvatar != _user!.avatar,
    ));
  }

  Future<void> _submitAvatar(_SubmitAvatar event, Emitter<SettingsState> emit) async {
    final newPic = event.selectedAvatar.pic;

    await _updateUserUseCase.call(pic: newPic);

    if (_user == null) return;

    _user = _user!.copyWith(pic: newPic);

    emit(SettingsState.profile(
      user: _user,
    ));
  }

  Future<void> _backToProfile(_BackToProfile event, Emitter<SettingsState> emit) async {
    emit(SettingsState.profile(user: _user));
  }

  Future<void> _showInput(_ShowInput event, Emitter<SettingsState> emit) async {
    if (_connectivityResult == ConnectivityResult.none || _connectivityResult == null) return;

    if (_user == null) return;

    userNameFocusNode.requestFocus();
    userNameTextEditingController.text = _user!.name;
    emit(const SettingsState.inputEditor());
  }

  Future<void> _submitInput(_SubmitInput event, Emitter<SettingsState> emit) async {
    final userName = UserName.dirty(_userNameTextEditingController.text);

    final isSwearing = (await _antiSwearingFuture).containsSwearing(userName.value);

    if (userName.invalid || isSwearing) {
      return;
    }

    if (_user == null) return;

    if (_user!.name != userName.value) {
      final result = await _updateUserUseCase(name: userName.value);

      if (result.isError) {
        return;
      }
    }

    _user = _user!.copyWith(name: userName.value);

    emit(SettingsState.profile(user: _user));
  }

  Future<void> _showUnblockDialog(_ShowUnblockDialog event, Emitter<SettingsState> emit) async {
    await showDialog(
      useRootNavigator: false,
      context: event.context,
      builder: (context) => ConfirmDialog(
        confirmButtonText: 'Разблокировать',
        titleText: 'Разблокировать ${event.block.name}?',
        onConfirm: () async {
          final result = await _removeBlockUseCase(targetId: event.block.id);

          if (result.isError) {
            return;
          }

          _blocks!..remove(event.block);
          emit(SettingsState.blackList(blocks: _blocks));

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
      useRootNavigator: false,
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

          Navigator.of(context)..pop();
          Navigator.of(event.context)..popUntil((route) => route.isFirst);

          event.context.read<OnboardingBloc>().add(const OnboardingEvent.showDeleted());
        },
        onCancel: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Future<void> _onOnConnectivityChanged(
      _OnConnectivityChanged event, Emitter<SettingsState> emit) async {
    _connectivityResult = event.connectivityResult;
    if (event.connectivityResult != ConnectionState.none) {
      await Future.wait([
        if (_blocks == null) _loadBlocks(emit),
        if (_user == null) _loadProfile(emit),
      ]);
    }
  }
}
