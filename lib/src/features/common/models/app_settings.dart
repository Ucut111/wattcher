import '../data/shared_preferences_storage/shared_preferences_storage.dart';

enum AppSettings<T> implements SharedPreferencesEntity<T> {
  accessToken(''),
  user('');

  final T _defaultStoredValue;

  const AppSettings(this._defaultStoredValue);

  @override
  T get defaultValue => _defaultStoredValue;

  @override
  String get key => toString();
}
