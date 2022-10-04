import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';

class AvatarStorage {
  final SharedPrefencesProvider _sharedPrefencesProvider;

  AvatarStorage(
    this._sharedPrefencesProvider,
  );

  static const _avatarKeyPrefix = 'AvatarStorage_';

  Future<void> saveAvatars(List<Avatar> avatars) async {
    for (final avatar in avatars) {
      await _sharedPrefencesProvider.save(
        _getAvatarKey(avatar.id),
        avatar.pic,
      );
    }
  }

  Future<Avatar?> getAvatarById(String id) async {
    final url = await _sharedPrefencesProvider.get(_getAvatarKey(id), '');

    if (url.isEmpty) return null;

    return Avatar(id: id, pic: url);
  }

  Stream<Avatar> getAllAvatars() async* {
    final keys = await _sharedPrefencesProvider.getKeysByPrefix(_avatarKeyPrefix);

    for (final key in keys) {
      final url = await _sharedPrefencesProvider.get(key, '');
      if (url.isEmpty) continue;
      yield Avatar(id: _clearKey(key), pic: url);
    }
  }

  String _getAvatarKey(String id) => '$_avatarKeyPrefix$id';

  String _clearKey(String key) => key.replaceAll(_avatarKeyPrefix, '');
}
