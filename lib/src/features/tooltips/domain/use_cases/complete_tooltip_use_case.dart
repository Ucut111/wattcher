import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/tooltips/domain/models/tooltip_trigger.dart';

class CompleteTooltipUseCase {
  final SharedPreferencesEntityStorage _sharedPreferencesEntityStorage;

  const CompleteTooltipUseCase(this._sharedPreferencesEntityStorage);

  Future<void> call(TooltipTrigger tooltipTrigger) =>
      _sharedPreferencesEntityStorage.save(false, tooltipTrigger);
}
