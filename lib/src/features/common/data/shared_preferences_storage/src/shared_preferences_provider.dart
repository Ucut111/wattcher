import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';

class SharedPrefencesProvider {
  final Future<SharedPreferences> _futurePrefs;

  SharedPrefencesProvider(Future<SharedPreferences> prefs) : _futurePrefs = prefs;

  final StreamController<String> _keys$ = StreamController.broadcast();

  Future<Set<String>> get keys => _futurePrefs.then((value) => value.getKeys());

  Future<List<String>> getKeysByPrefix(String prefix) =>
      _futurePrefs.then((value) => value.getKeys().where((key) => key.startsWith(prefix)).toList());

  Stream<T> onChange$<T>(String key, T defaultValue) async* {
    final prefs = await _futurePrefs;
    yield* _keys$.stream.where((s) => key == s).map((key) => _getSync(key, defaultValue, prefs));
  }

  Future<bool> remove(String key) => _futurePrefs.then((prefs) {
        return prefs.remove(key);
      });

  Future<T> get<T>(String key, T defaultValue) => _futurePrefs.then((prefs) {
        final value = _getSync(key, defaultValue, prefs);
        log.debug('SharedPrefencesProvider: Get<$T>($key, $value)');
        return value;
      });

  T _getSync<T>(String key, T defaultValue, SharedPreferences prefs) {
    if (defaultValue is String) {
      return (prefs.getString(key) ?? defaultValue) as T;
    } else if (defaultValue is int) {
      return (prefs.getInt(key) ?? defaultValue) as T;
    } else if (defaultValue is bool) {
      return (prefs.getBool(key) ?? defaultValue) as T;
    } else {
      throw "This type: ${defaultValue.runtimeType} isn't supported";
    }
  }

  Future save<T>(String key, T value) => _futurePrefs.then((prefs) {
        log.debug('SharedPrefencesProvider: Save<$T>($key, $value)');
        if (value is int) {
          return prefs.setInt(key, value).then((_) => _keys$.add(key));
        } else if (value is String) {
          return prefs.setString(key, value).then((_) => _keys$.add(key));
        } else if (value is bool) {
          return prefs.setBool(key, value).then((_) => _keys$.add(key));
        } else {
          throw "This type: ${value.runtimeType} isn't supported";
        }
      });
}
