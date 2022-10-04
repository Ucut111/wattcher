import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';

class InfoDialog extends StatelessWidget {
  final String titleText;

  const InfoDialog({
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => Navigator.of(context).maybePop(),
                child: const Text(
                  'ОК',
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
