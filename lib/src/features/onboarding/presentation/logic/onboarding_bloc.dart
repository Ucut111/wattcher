import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/auth/register_user_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/avatar/get_all_avatars_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/update_user_use_case.dart';
import 'package:watchers_widget/src/features/onboarding/domain/licence.dart';
import 'package:watchers_widget/src/features/onboarding/domain/user_name.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final RegisterUserUseCase _registerUserUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final GetAllAvatarsUseCase _getAllAvatarsUseCase;

  OnboardingBloc({
    required RegisterUserUseCase registerUserUseCase,
    required UpdateUserUseCase updateUserUseCase,
    required GetAllAvatarsUseCase getAllAvatarsUseCase,
    required String externalId,
  })  : _registerUserUseCase = registerUserUseCase,
        _updateUserUseCase = updateUserUseCase,
        _getAllAvatarsUseCase = getAllAvatarsUseCase,
        super(OnboardingState.loading()) {
    on<OnboardingEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        showLicence: (event) => _showLicence(event, emit),
        backToMain: (event) => _backToMain(event, emit),
        backToForm: (event) => _backToForm(event, emit),
        acceptLicences: (event) => _acceptLicences(event, emit),
        showInput: (event) => _showInput(event, emit),
        submitInput: (event) => _submitInput(event, emit),
        submitForm: (event) => _submitForm(event, emit),
        selectAvatar: (event) => _selectAvatar(event, emit),
        submitAvatar: (event) => _submitAvatar(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );

    add(OnboardingEvent.init(externalId: externalId));
  }

  final TextEditingController _userNameTextEditingController = TextEditingController();
  TextEditingController get userNameTextEditingController => _userNameTextEditingController;

  final FocusNode _userNameFocusNode = FocusNode();
  FocusNode get userNameFocusNode => _userNameFocusNode;

  Future<void> _init(_Init event, Emitter<OnboardingState> emit) async {
    final result = await _registerUserUseCase.call(externalId: event.externalId);

    if (result.isSuccess) {
      if (result.successValue.isNew) {
        emit(OnboardingState.main());
        return;
      }

      emit(OnboardingState.showChat());
    }
  }

  Future<void> _showLicence(_ShowLicence event, Emitter<OnboardingState> emit) async {
    emit(OnboardingState.licenceDetails(licenceText: event.licence.text));
  }

  Future<void> _backToMain(_BackToMain event, Emitter<OnboardingState> emit) async {
    emit(OnboardingState.main());
  }

  Future<void> _backToForm(_BackToForm event, Emitter<OnboardingState> emit) async {
    emit(OnboardingState.form(userName: event.userName));
  }

  Future<void> _acceptLicences(_AcceptLicences event, Emitter<OnboardingState> emit) async {
    emit(OnboardingState.form(userName: ''));
  }

  Future<void> _showInput(_ShowInput event, Emitter<OnboardingState> emit) async {
    userNameFocusNode.requestFocus();
    emit(OnboardingState.input());
  }

  Future<void> _submitInput(_SubmitInput event, Emitter<OnboardingState> emit) async {
    final userName = UserName.dirty(_userNameTextEditingController.text);

    emit(OnboardingState.form(
      userName: userName.value,
      errorDescription: userName.error.description,
    ));
  }

  Future<void> _submitForm(_SubmitForm event, Emitter<OnboardingState> emit) async {
    final result = await _getAllAvatarsUseCase.call();

    if (result.isSuccess) {
      final avatars = result.successValue;

      emit(OnboardingState.avatarPicker(
        userName: event.userName,
        avatars: avatars,
        selectedAvatar: avatars[0],
      ));
    }
  }

  Future<void> _selectAvatar(_SelectAvatar event, Emitter<OnboardingState> emit) async {
    emit(OnboardingState.avatarPicker(
      selectedAvatar: event.selectedAvatar,
      avatars: event.avatars,
      userName: event.userName,
    ));
  }

  Future<void> _submitAvatar(_SubmitAvatar event, Emitter<OnboardingState> emit) async {
    final result = await _updateUserUseCase.call(
      pic: event.selectedAvatar.pic,
      name: event.userName,
    );

    if (result.isSuccess) {
      emit(OnboardingState.showChat());
    }
  }
}
