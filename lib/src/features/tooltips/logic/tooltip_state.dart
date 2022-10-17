part of 'tooltip_cubit.dart';

@freezed
class SensoTooltipState with _$SensoTooltipState {
  const factory SensoTooltipState.loaded({
    required bool enabled,
    required TooltipTrigger tooltipTrigger,
  }) = _Loaded;

  const factory SensoTooltipState.loading() = _Loading;
}
