import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

class ModalWidget extends StatelessWidget {
  final Widget title;
  final Widget? submitButton;
  final List<Widget> children;
  final double? height;

  const ModalWidget({
    required this.title,
    required this.children,
    this.height,
    this.submitButton,
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: CustomColors.modalBackground,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        title,
                        const SizedBox(height: 16),
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
