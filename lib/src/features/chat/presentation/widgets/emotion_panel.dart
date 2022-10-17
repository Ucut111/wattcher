import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';

class EmotionPannel extends StatefulWidget {
  final List<Emotion> emotions;
  final void Function(Emotion) onEmotionSelected;
  final bool isVisible;

  const EmotionPannel({
    required this.emotions,
    required this.onEmotionSelected,
    required this.isVisible,
  });

  @override
  State<EmotionPannel> createState() => _EmotionPannelState();
}

class _EmotionPannelState extends State<EmotionPannel> {
  @override
  Widget build(BuildContext context) {
    final emotions = widget.emotions;

    return Visibility(
      visible: widget.isVisible,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 48,
          constraints: BoxConstraints(
            maxWidth: 85.w,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.divider,
              style: BorderStyle.solid,
            ),
            color: CustomColors.modalBackground,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: emotions
                  .map((emotion) => GestureDetector(
                        onTap: () => widget.onEmotionSelected(emotion),
                        child: EmojiWidget(emotionPath: emotion.path),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
