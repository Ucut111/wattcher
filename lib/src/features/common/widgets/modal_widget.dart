import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

class ModalWidget extends StatelessWidget {
  final Widget title;
  final Widget? submitButton;
  final List<Widget> children;
  final Widget? emptyWidget;
  final bool isEmpty;
  final double? height;
  final CrossAxisAlignment crossAxisAlignment;

  const ModalWidget({
    required this.title,
    this.children = const [],
    this.emptyWidget,
    this.isEmpty = false,
    this.height,
    this.submitButton,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColors.modalBackground,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: crossAxisAlignment,
                      textDirection: TextDirection.ltr,
                      children: [
                        title,
                        const SizedBox(height: 16),
                        if (isEmpty && emptyWidget != null)
                          Expanded(
                            child: Center(
                              child: emptyWidget,
                            ),
                          )
                        else
                          ...children,
                      ],
                    ),
                    if (submitButton != null)
                      Positioned(
                        bottom: 21,
                        child: submitButton!,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
