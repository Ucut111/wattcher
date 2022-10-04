import 'dart:convert';

import 'package:watchers_widget/src/core/extensions/future_dio_response_x.dart';
import 'package:watchers_widget/src/features/common/data/apis/talker/talker_api.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

import '../../domain/models/app_settings.dart';
import '../shared_preferences_storage/src/shared_preferences_entity_storage.dart';

abstract class ITalkerRepository {
  Future<List<Talker>> getTalkers(String externalRoomId);
  Future<Talker> checkTalker(Talker talker);
}

class TalkerRepository implements ITalkerRepository {
  final TalkerApi _talkerApi;
  final SharedPreferencesEntityStorage _entityStorage;

  const TalkerRepository(this._talkerApi, this._entityStorage);

  @override
  Future<List<Talker>> getTalkers(String externalRoomId) =>
      _talkerApi.getTalkers(externalRoomId).computeResponseList(Talker.fromMap);

  @override
  Future<Talker> checkTalker(Talker talker) async {
    final userMap = jsonDecode(await _entityStorage.get(AppSettings.user));
    talker.isMe = talker.user.id == userMap['id'];
    return talker;
  }
}
