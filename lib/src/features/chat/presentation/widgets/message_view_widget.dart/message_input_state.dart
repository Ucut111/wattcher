import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_input_state.freezed.dart';

@freezed
class MessageInputState with _$MessageInputState {
  MessageInputState._();

  factory MessageInputState.unfocused() = _Unfocused;
  factory MessageInputState.hasFocus({
    @Default(false) showSend,
  }) = _HasFocus;

  bool get isHasFocus => this is _HasFocus;
}
