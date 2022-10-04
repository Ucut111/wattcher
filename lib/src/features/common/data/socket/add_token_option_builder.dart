import 'dart:convert';

import 'package:socket_io_client/socket_io_client.dart';
import 'package:watchers_widget/src/features/common/models/app_settings.dart';

import '../shared_preferences_storage/shared_preferences_storage.dart';

class AddTokenOptionBuilder {
  final SharedPreferencesEntityStorage _entityStorage;
  final OptionBuilder _optionBuilder = OptionBuilder().setTransports(['websocket']);
  OptionBuilder get optionBuilder => _optionBuilder;
  AddTokenOptionBuilder({
    required SharedPreferencesEntityStorage entityStorage,
  }) : _entityStorage = entityStorage;

  Future<void> setAuth() async {
    final user = await _entityStorage.get(AppSettings.user);
    final token = json.decode(user)['token'];
    if (token.isNotEmpty) {
      _optionBuilder.setAuth({'token': token});
    }
  }
}
