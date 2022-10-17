import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watchers_widget/src/app/di/locator.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/restore_user_use_case.dart';
import 'package:watchers_widget/src/features/common/widgets/dialogs/info_dialog.dart';
import 'package:watchers_widget/src/features/deleted_profile/logic/deleted_profile_bloc_params.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc.dart';

part 'deleted_profile_bloc.freezed.dart';
part 'deleted_profile_event.dart';
part 'deleted_profile_state.dart';

class DeletedProfileBloc extends Bloc<DeletedProfileEvent, DeletedProfileState> {
  final RestoreUserUseCase _restoreUserUseCase;
  final DeletedProfileBlocParams _params;

  DeletedProfileBloc(
    this._params,
    this._restoreUserUseCase,
  ) : super(const DeletedProfileState.loading()) {
    on<RestoreProfileEvent>(_onRestoreProfile);
    on<_Init>(_onInit);

    add(const _Init());
  }

  Future<void> _onInit(_Init event, Emitter<DeletedProfileState> emit) async {
    final dateFormat = buildDateFormat('hh:mm d MMMM y');
    final formatedDate = dateFormat.format(_params.deletedAt.add(const Duration(days: 30)));

    emit(DeletedProfileState.loaded(formatedDate: formatedDate));
  }

  void restoreProfile(RestoreProfileEvent event) => add(event);
  Future<void> _onRestoreProfile(
    RestoreProfileEvent event,
    Emitter<DeletedProfileState> emit,
  ) async {
    final context = event.context;
    final result = await _restoreUserUseCase.call();

    if (result.isError) return;

    context.read<OnboardingBloc>().add(const OnboardingEvent.showChat());

    showDialog(
      useRootNavigator: false,
      context: context,
      builder: (_) => const InfoDialog(
        titleText: 'Профиль востановлен',
      ),
    );
  }
}
