import 'package:flutter/material.dart';
import 'package:watchers_widget/src/core/constants/custom_colors.dart';
import 'package:watchers_widget/src/core/constants/resources.dart';
import 'package:watchers_widget/src/core/constants/text_styles.dart';
import 'package:watchers_widget/src/core/style/figma_sizer.dart';
import 'package:watchers_widget/src/core/svg_icon.dart';
import 'package:watchers_widget/src/features/chat/domain/models/emotion.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/emoji_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_view_widget.dart/message_input_overhang_widget.dart';
import 'package:watchers_widget/src/features/chat/presentation/widgets/message_view_widget.dart/message_input_state.dart';
import 'package:watchers_widget/src/features/tooltips/domain/models/tooltip_trigger.dart';
import 'package:watchers_widget/src/features/tooltips/tooltip_widget.dart';

class MessageInputWidget extends StatefulWidget {
  final void Function() onSettingsTap;
  final void Function() onSendTap;
  final List<Emotion> emotions;
  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final OutlineInputBorder? outlineInputBorder;
  final InputDecoration? inputDecoration;
  final bool enabled;
  final Emotion selectedEmotion;
  final void Function() onSendEmotion;
  final void Function() onLongPressEmotion;
  final bool largeMessage;

  const MessageInputWidget({
    required this.largeMessage,
    required this.onSettingsTap,
    required this.controller,
    required this.onSendTap,
    required this.focusNode,
    required this.emotions,
    required this.enabled,
    required this.selectedEmotion,
    required this.onSendEmotion,
    required this.onLongPressEmotion,
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: TextField(
                    minLines: 1,
                    maxLines: 1,
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
              const SizedBox(width: 8),
              MessageButtonWidget(
                largeMessage: widget.largeMessage,
                hasFocus: _state.isHasFocus,
                onLongPressEmotion: widget.onLongPressEmotion,
                onSendEmotion: widget.onSendEmotion,
                onSendTap: widget.onSendTap,
                selectedEmotion: widget.selectedEmotion,
                showSend: _state.map(unfocused: (_) => false, hasFocus: (s) => s.showSend),
              ),
            ],
          ),
          SizedBox(height: 6.fh)
        ],
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

class MessageButtonWidget extends StatefulWidget {
  final bool hasFocus;
  final bool showSend;
  final VoidCallback onSendTap;
  final VoidCallback onSendEmotion;
  final VoidCallback onLongPressEmotion;
  final Emotion selectedEmotion;
  final bool largeMessage;

  const MessageButtonWidget({
    required this.hasFocus,
    required this.showSend,
    required this.onSendTap,
    required this.onSendEmotion,
    required this.onLongPressEmotion,
    required this.selectedEmotion,
    required this.largeMessage
  });

  @override
  State<MessageButtonWidget> createState() => _MessageButtonWidgetState();
}

class _MessageButtonWidgetState extends State<MessageButtonWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.hasFocus) {
      return Padding(
        padding: const EdgeInsets.only(right: 16),
        child: widget.showSend
            ? InkWell(
                splashColor: Colors.transparent,
                onTap: widget.onSendTap,
                child:  CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: SvgIcon(
                    Resources.send,
                    size: 36,
                    color: widget.largeMessage
                        ?CustomColors.textSecondary:CustomColors.primary,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      );
    }

    return TooltipWidget(
      tooltipTrigger: TooltipTrigger.longTapEmoji,
      preferredDirection: AxisDirection.up,
      offset: 10,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: InkWell(
          splashColor: Colors.transparent,
          onTap: widget.onSendEmotion,
          onLongPress: widget.onLongPressEmotion,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: CustomColors.secondary,
            child: EmojiWidget(
              emotionPath: widget.selectedEmotion.path,
              isShort: true,
            ),
          ),
        ),
      ),
    );
  }
}
