import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emotion_panel.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_view_widget.dart/message_input_overhang_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_view_widget.dart/message_input_state.dart';

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
  MessageInputState _state = MessageInputState.unfocused();

  @override
  void initState() {
    widget.focusNode.addListener(_updateFocusStatus);

    widget.controller.addListener(_updateShowSendStatus);

    super.initState();
  }

  void _updateShowSendStatus() {
    if (widget.controller.text.trim().isEmpty) {
      setState(() {
        _state = MessageInputState.hasFocus(showSend: false);
      });
    } else {
      setState(() {
        _state = MessageInputState.hasFocus(showSend: true);
      });
    }
  }

  void _updateFocusStatus() {
    setState(() {
      if (widget.focusNode.hasFocus) {
        _updateShowSendStatus();
      } else {
        _state = MessageInputState.unfocused();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = widget.outlineInputBorder ??
        OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColors.divider,
          ),
          borderRadius: BorderRadius.circular(4),
        );

    return Container(
      color: CustomColors.onPrimary,
      child: AnimatedPadding(
        padding: MediaQuery.of(context).viewInsets,
        duration: const Duration(milliseconds: 100),
        curve: Curves.decelerate,
        child: Column(
          children: [
            const MessageInputOverhangWidget(),
            const Divider(height: 1, thickness: 1, color: CustomColors.divider),
            SizedBox(height: 8.fh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _state.maybeMap(
                  hasFocus: (_) => const SizedBox.shrink(),
                  orElse: () => Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: widget.onSettingsTap,
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundColor: CustomColors.secondary,
                        child: SvgIcon(
                          Resources.settings,
                          size: 20,
                          color: CustomColors.gray400,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _state.maybeMap(
                    emoji: (_) => EmotionPannel(
                      emotions: widget.emotions,
                      onEmotionSelected: widget.onEmotionSelected,
                    ),
                    orElse: () => Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: TextField(
                        enabled: widget.enabled,
                        onSubmitted: widget.onSubmitted,
                        focusNode: widget.focusNode,
                        controller: widget.controller,
                        decoration: widget.inputDecoration ??
                            InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 20.0,
                              ),
                              hintText: widget.hintText ?? 'Сообщение...',
                              border: inputBorder,
                              disabledBorder: inputBorder,
                              enabledBorder: inputBorder,
                              focusedBorder: inputBorder,
                              hintStyle: TextStyles.hint,
                              filled: true,
                              fillColor: CustomColors.inputFilling,
                            ),
                        style: TextStyles.input,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                _state.maybeMap(
                  hasFocus: (state) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: state.showSend
                        ? InkWell(
                            splashColor: Colors.transparent,
                            onTap: widget.onSendTap,
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: SvgIcon(
                                Resources.send,
                                size: 36,
                                color: CustomColors.primary,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                  emoji: (_) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          _state = MessageInputState.unfocused();
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: CustomColors.danger.withOpacity(0.2),
                        child: const SvgIcon(Resources.close),
                      ),
                    ),
                  ),
                  orElse: () => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          _state = MessageInputState.emoji();
                        });
                      },
                      child: const CircleAvatar(
                        radius: 18,
                        backgroundColor: CustomColors.secondary,
                        child: EmojiWidget('thumbs_up'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.fh)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_updateFocusStatus);
    widget.controller.removeListener(_updateShowSendStatus);
    super.dispose();
  }
}
