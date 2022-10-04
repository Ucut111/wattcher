import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  final String emotionPath;

  const EmojiWidget(this.emotionPath);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/emoji/$emotionPath.png',
      width: 50,
      package: 'watchers_widget',
    );
  }
}
