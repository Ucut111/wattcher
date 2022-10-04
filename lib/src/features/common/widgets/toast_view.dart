import 'package:flutter/cupertino.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';

import '../../../core/constants/text_styles.dart';

class ToastView extends StatefulWidget {
  final Widget? leadingIcon;
  final String text;
  final Color? textColor;
  final void Function() onCloseTap;

  const ToastView({required this.text, this.leadingIcon, this.textColor,required this.onCloseTap});

  @override
  _ToastViewState createState() => _ToastViewState();
}

class _ToastViewState extends State<ToastView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(32, 38, 49, 0.72),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child:Row(
            children: [
              if (widget.leadingIcon != null)
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: widget.leadingIcon!),
              Flexible(
                  child: Text(
                    widget.text,
                    style: TextStyles.subtitle1(color: widget.textColor),
                  )
              )
            ],
          )),
          GestureDetector(
            onTap: widget.onCloseTap,
            child: const SvgIcon(
              Resources.close,
              color: CustomColors.danger,
              width: 14,
            ),
          )
        ],
      ),
    );
  }
}
