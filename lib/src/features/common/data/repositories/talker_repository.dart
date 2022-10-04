import 'package:watchers_widget/src/core/extensions/future_dio_response_x.dart';
import 'package:watchers_widget/src/features/common/data/apis/talker/talker_api.dart';
import 'package:watchers_widget/src/features/common/models/talker.dart';

abstract class ITalkerRepository {
  Future<List<Talker>> getTalkers(String externalRoomId);
}

class TalkerRepository implements ITalkerRepository {
  final TalkerApi _talkerApi;

  const TalkerRepository(this._talkerApi);

  @override
  Future<List<Talker>> getTalkers(String externalRoomId) =>
      _talkerApi.getTalkers(externalRoomId).computeResponseList(Talker.fromMap);
}
