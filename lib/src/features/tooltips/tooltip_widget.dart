import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/base/injectable_state.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/features/common/widgets/tooltips/tooltips.dart';

import 'domain/models/tooltip_trigger.dart';
import 'logic/tooltip_cubit.dart';

class TooltipWidget extends StatefulWidget {
  final TooltipTrigger tooltipTrigger;
  final AxisDirection preferredDirection;
  final bool enableTooltip;
  final Widget child;
  final double offset;

  const TooltipWidget({
    required this.tooltipTrigger,
    required this.preferredDirection,
    required this.child,
    this.enableTooltip = true,
    this.offset = 0.0,
  });

  const TooltipWidget.shrink({
    required this.tooltipTrigger,
    required this.preferredDirection,
    required this.enableTooltip,
    this.offset = 0.0,
  }) : child = const SizedBox.shrink();

  @override
  State<TooltipWidget> createState() => _TooltipWidgetState();
}

class _TooltipWidgetState extends InjectableState<TooltipWidget, TooltipCubit, SensoTooltipState> {
  _TooltipWidgetState() : super();

  final TooltipTailBuilderFactory _tooltipTailBuilderFactory =
      const TooltipTailBuilderFactory(width: 24, height: 24);

  @override
  void initState() {
    _showTooltipTimer ??= Timer(
      const Duration(seconds: TooltipCubit.delayBeforeShowInSeconds),
      () {
        cubit.checkTrigger(
          tooltipTrigger: widget.tooltipTrigger,
          enableTooltip: widget.enableTooltip,
        );
      },
    );

    super.initState();
  }

  Path Function(Offset, Offset, Offset) get tailBuilder => widget.preferredDirection.map(
        up: _tooltipTailBuilderFactory.getBuilder(TooltipTailDirection.bottomRight),
        down: _tooltipTailBuilderFactory.getBuilder(TooltipTailDirection.topRight),
        left: _tooltipTailBuilderFactory.getBuilder(TooltipTailDirection.left),
        right: _tooltipTailBuilderFactory.getBuilder(TooltipTailDirection.right),
      );

  Timer? _showTooltipTimer;

  @override
  void listener(BuildContext context, SensoTooltipState state) {
    state.mapOrNull(loaded: (state) {
      if (!state.enabled) return;

      if (mounted) {
        cubit.tooltipController.showTooltip(
          immediately: true,
          autoClose: true,
        );
      }
    });
  }

  @override
  void dispose() {
    _showTooltipTimer?.cancel();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, SensoTooltipState state) {
    return JustTheTooltip(
      elevation: 0,
      triggerMode: TooltipTriggerMode.manual,
      offset: widget.offset,
      showDuration: const Duration(seconds: TooltipCubit.showDurationInSeconds),
      onDismiss: () => cubit.completeTooltip(),
      backgroundColor: CustomColors.tooltipBackground,
      controller: cubit.tooltipController,
      tailBaseWidth: 20.0,
      preferredDirection: widget.preferredDirection,
      borderRadius: BorderRadius.circular(16.0),
      tailBuilder: tailBuilder,
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100.0,
            maxWidth: 80.w,
          ),
          child: Text(
            widget.tooltipTrigger.text,
            textAlign: TextAlign.left,
            textWidthBasis: TextWidthBasis.longestLine,
            style: TextStyles.onPrimary(),
          ),
        ),
      ),
      child: widget.child,
    );
  }
}
