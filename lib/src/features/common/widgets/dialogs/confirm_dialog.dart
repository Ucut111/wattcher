import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class ConfirmDialog extends StatelessWidget {
  final String titleText;
  final String? subtitleText;
  final String confirmButtonText;
  final String? cancelButtonText;
  final void Function() onConfirm;
  final void Function() onCancel;

  const ConfirmDialog({
    required this.titleText,
    required this.confirmButtonText,
    required this.onConfirm,
    required this.onCancel,
    this.subtitleText,
    this.cancelButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 38),
      alignment: Alignment.topCenter,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: CustomColors.modalBackground,
          padding: EdgeInsets.fromLTRB(11.fh, 19.fw, 11.fw, 0),
          width: 300.fw,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                titleText,
                style: TextStyles.title(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              if (subtitleText != null) ...[
                const SizedBox(height: 7),
                Text(
                  subtitleText!,
                  style: TextStyles.secondary(),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 20),
              TextButton(
                onPressed: onConfirm,
                child: Text(
                  confirmButtonText,
                  style: TextStyles.errorTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Divider(color: CustomColors.divider, height: 1, thickness: 1),
              TextButton(
                onPressed: onCancel,
                child: Text(
                  cancelButtonText ?? 'Отмена',
                  style: TextStyles.highlighted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
