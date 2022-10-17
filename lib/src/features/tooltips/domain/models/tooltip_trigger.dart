import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';

enum TooltipTrigger implements SharedPreferencesEntity<bool> {
  longTapEmoji(defaultValue: true);

  const TooltipTrigger({required this.defaultValue});

  @override
  final bool defaultValue;

  @override
  String get key => toString();

  T map<T>({
    required T Function() longTapEmoji,
  }) {
    switch (this) {
      case TooltipTrigger.longTapEmoji:
        return longTapEmoji();
    }
  }

  String get text => map(longTapEmoji: () => 'Удерживайте, чтобы сменить');
}
