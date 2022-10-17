import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:watchers_widget/src/features/tooltips/domain/models/tooltip_trigger.dart';
import 'package:watchers_widget/src/features/tooltips/domain/use_cases/complete_tooltip_use_case.dart';
import 'package:watchers_widget/src/features/tooltips/domain/use_cases/is_show_tooltip_use_case.dart';

part 'tooltip_state.dart';
part 'tooltip_cubit.freezed.dart';

class TooltipCubit extends Cubit<SensoTooltipState> {
  static const int showDurationInSeconds = 100;
  static const int delayBeforeShowInSeconds = 3;

  final IsShowTooltipUseCase _isShowTooltipUseCase;
  final CompleteTooltipUseCase _completeTooltipUseCase;

  TooltipCubit(
    this._completeTooltipUseCase,
    this._isShowTooltipUseCase,
  ) : super(const SensoTooltipState.loading());

  final _tooltipController = JustTheController();
  JustTheController get tooltipController => _tooltipController;

  Future<void> checkTrigger({
    required TooltipTrigger tooltipTrigger,
    required bool enableTooltip,
  }) async {
    final enabled = enableTooltip && await _isShowTooltipUseCase(tooltipTrigger);

    emit(SensoTooltipState.loaded(
      enabled: enabled,
      tooltipTrigger: tooltipTrigger,
    ));
  }

  void completeTooltip() {
    state.mapOrNull(loaded: (state) {
      _completeTooltipUseCase(state.tooltipTrigger);
    });
  }
}
