import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';

class EmotionPannel extends StatefulWidget {
  final List<Emotion> emotions;
  final void Function(Emotion) onEmotionSelected;

  const EmotionPannel({
    required this.emotions,
    required this.onEmotionSelected,
  });

  @override
  State<EmotionPannel> createState() => _EmotionPannelState();
}

class _EmotionPannelState extends State<EmotionPannel> {
  double panelWidth = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        panelWidth = 400;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final emotions = widget.emotions;

    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Align(
        alignment: Alignment.centerRight,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: panelWidth,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: CustomColors.divider,
              style: BorderStyle.solid,
            ),
            color: CustomColors.modalBackground,
            borderRadius: BorderRadius.circular(100),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: emotions.length,
            itemBuilder: (c, i) {
              return GestureDetector(
                onTap: () => widget.onEmotionSelected(emotions[i]),
                child: EmojiWidget(emotions[i].path),
              );
            },
          ),
        ),
      ),
    );
  }
}
