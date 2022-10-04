import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emotion_panel.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_view_widget.dart/message_input_overhang_widget.dart';

class MessageInputWidget extends StatefulWidget {
  final void Function() onSettingsTap;
  final void Function(Emotion) onEmotionSelected;
  final void Function() onSendTap;
  final List<Emotion> emotions;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final OutlineInputBorder? outlineInputBorder;
  final InputDecoration? inputDecoration;
  final bool enabled;

  const MessageInputWidget({
    required this.onSettingsTap,
    required this.onEmotionSelected,
    required this.controller,
    required this.onSendTap,
    required this.focusNode,
    required this.emotions,
    required this.enabled,
    this.outlineInputBorder,
    this.inputDecoration,
    this.onSubmitted,
    this.hintText,
  });

  @override
  _MessageInputWidgetState createState() => _MessageInputWidgetState();
}

class _MessageInputWidgetState extends State<MessageInputWidget> {
  _MessageInputState _state = _MessageInputState.unfocused;

  @override
  Widget build(BuildContext context) {
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus) {
        _state = _MessageInputState.hasFocus;
      } else {
        _state = _MessageInputState.unfocused;
      }
      setState(() {});
    });

    final inputBorder = widget.outlineInputBorder ??
        OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColors.borderColor,
          ),
          borderRadius: BorderRadius.circular(100),
        );

    return AnimatedPadding(
        padding: MediaQuery.of(context).viewInsets,
        duration: const Duration(milliseconds: 100),
        curve: Curves.decelerate,
        child: Column(
          children: [
            const MessageInputOverhangWidget(),
            const Divider(height: 1, thickness: 1, color: CustomColors.borderColor),
            SizedBox(height: 8.fh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _state.maybeMap(
                  hasFocus: const SizedBox.shrink(),
                  orElse: InkWell(
                    splashColor: Colors.transparent,
                    onTap: widget.onSettingsTap,
                    child: CircleAvatar(
                      backgroundColor: CustomColors.modalBackground,
                      child: SvgIcon(
                        Resources.settings,
                        width: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _state.maybeMap(
                    emoji: EmotionPannel(
                      emotions: widget.emotions,
                      onEmotionSelected: widget.onEmotionSelected,
                    ),
                    orElse: Padding(
                      padding: EdgeInsets.only(
                        left: 21.fw,
                        right: 24.fw,
                      ),
                      child: TextField(
                        enabled: widget.enabled,
                        onSubmitted: widget.onSubmitted,
                        focusNode: widget.focusNode,
                        controller: widget.controller,
                        decoration: widget.inputDecoration ??
                            InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10.fh,
                                horizontal: 20.fw,
                              ),
                              hintText: widget.hintText ?? 'Сообщение...',
                              border: inputBorder,
                              disabledBorder: inputBorder,
                              enabledBorder: inputBorder,
                              focusedBorder: inputBorder,
                              hintStyle: TextStyles.hint,
                            ),
                        style: TextStyles.input,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.fw),
                _state.maybeMap(
                  hasFocus: InkWell(
                    splashColor: Colors.transparent,
                    onTap: widget.onSendTap,
                    child: CircleAvatar(
                      backgroundColor: CustomColors.primaryColor,
                      child: SvgIcon(
                        Resources.check,
                        width: 15.fw,
                      ),
                    ),
                  ),
                  emoji: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        _state = _MessageInputState.unfocused;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: CustomColors.danger.withOpacity(0.2),
                      child: SvgIcon(Resources.close),
                    ),
                  ),
                  orElse: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        _state = _MessageInputState.emoji;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: CustomColors.modalBackground,
                      child: SvgIcon(
                        Resources.heart,
                        width: 22.fw,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.fh)
          ],
        ));
  }
}

// Todo(dartloli): maybe we need cubit
enum _MessageInputState { unfocused, hasFocus, emoji }

extension _MessageInputStateX on _MessageInputState {
  T mapValue<T>({
    required T emoji,
    required T unfocused,
    required T hasFocus,
  }) {
    switch (this) {
      case _MessageInputState.emoji:
        return emoji;
      case _MessageInputState.unfocused:
        return unfocused;
      case _MessageInputState.hasFocus:
        return hasFocus;
    }
  }

  T maybeMap<T>({
    T? emoji,
    T? unfocused,
    T? hasFocus,
    required T orElse,
  }) =>
      mapValue(
        emoji: emoji ?? orElse,
        unfocused: unfocused ?? orElse,
        hasFocus: hasFocus ?? orElse,
      );
}
