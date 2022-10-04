import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_input_state.freezed.dart';

@freezed
class MessageInputState with _$MessageInputState {
  factory MessageInputState.unfocused() = _Unfocused;
  factory MessageInputState.hasFocus({
    @Default(false) showSend,
  }) = _HasFocus;
  factory MessageInputState.emoji() = _Emoji;
}
