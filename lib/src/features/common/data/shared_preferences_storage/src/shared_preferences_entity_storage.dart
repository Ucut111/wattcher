import 'shared_prefences_entity.dart';
import 'shared_preferences_provider.dart';

class SharedPreferencesEntityStorage {
  final SharedPrefencesProvider _prefencesProvider;

  SharedPreferencesEntityStorage(this._prefencesProvider);

  Future<void> save<T>(T newValue, SharedPreferencesEntity<T> sharedPreferencesEntity) =>
      _prefencesProvider.save(sharedPreferencesEntity.key, newValue);

  Future<T> get<T>(SharedPreferencesEntity<T> sharedPreferencesEntity) =>
      _prefencesProvider.get(sharedPreferencesEntity.key, sharedPreferencesEntity.defaultValue);

  Future<bool> remove(SharedPreferencesEntity sharedPreferencesEntity) =>
      _prefencesProvider.remove(sharedPreferencesEntity.key);
}
