import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';

class EmojiWidget extends StatelessWidget {
  final bool isTransparentBackground;
  final String emotionPath;
  final bool isShort;

  const EmojiWidget({
    required this.emotionPath,
    this.isTransparentBackground = false,
    this.isShort = false,
  });

  @override
  Widget build(BuildContext context) {
    final image = Image.asset(
      'assets/emoji/$emotionPath${isShort ? '_short' : ''}.gif',
      width: 50,
      package: 'watchers_widget',
    );

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: isTransparentBackground
          ? image
          : CircleAvatar(
              backgroundColor: CustomColors.emojiBackground,
              child: image,
            ),
    );
  }
}
