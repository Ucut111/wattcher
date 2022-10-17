import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/tooltips/domain/models/tooltip_trigger.dart';

class IsShowTooltipUseCase {
  final SharedPreferencesEntityStorage _sharedPreferencesEntityStorage;

  const IsShowTooltipUseCase(this._sharedPreferencesEntityStorage);

  Future<bool> call(TooltipTrigger tooltipTrigger) =>
      _sharedPreferencesEntityStorage.get(tooltipTrigger);
}
