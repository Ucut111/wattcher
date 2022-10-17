import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

class LargeMessageToast extends StatefulWidget {
  final TextEditingController inputController;

  final void Function()? onClose;

  const LargeMessageToast({required this.inputController,this.onClose});

  @override
  _LargeMessageWidgetState createState() => _LargeMessageWidgetState();
}
class _LargeMessageWidgetState extends State<LargeMessageToast>{

  late int textLength;
  @override
  void initState(){
    textLength = widget.inputController.text.length;
    widget.inputController.addListener(() {
      setState(() {
        textLength = widget.inputController.text.length;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.fh),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.snackBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SvgIcon(
                      Resources.disabled,
                      color: CustomColors.textMain,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: Text(
                      "Вы можете отправлять сообщения до 500 знаков. $textLength/500",
                        style: TextStyles.onPrimary(),
                      ),
                    ),
                    const SizedBox(width: 16),
                    if (widget.onClose!=null)
                      GestureDetector(
                        onTap: widget.onClose,
                        child: const Icon(
                          Icons.close,
                          color: CustomColors.textMain,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
