import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class UnblockDialog extends StatelessWidget {
  final String targetName;
  final void Function() onConfirm;
  final void Function() onCancel;

  const UnblockDialog({
    required this.targetName,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: CustomColors.modalBackground,
          padding: EdgeInsets.fromLTRB(16.fh, 19.fw, 16.fw, 12.fh),
          height: 167.fh,
          width: 300.fw,
          child: Column(
            children: <Widget>[
              Text(
                'Разблокировать $targetName?',
                style: TextStyles.title(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              TextButton(
                onPressed: onConfirm,
                style: TextButton.styleFrom(
                  backgroundColor: CustomColors.danger,
                ),
                child: Text(
                  'Разблокировать',
                  style: TextStyles.errorTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: onCancel,
                style: TextButton.styleFrom(
                  backgroundColor: CustomColors.primaryColor,
                ),
                child: const Text(
                  'Отмена',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
