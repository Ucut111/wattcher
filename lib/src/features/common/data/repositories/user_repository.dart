import 'package:flutter/foundation.dart';
import 'package:watchers_widget/src/features/common/data/apis/user/dtos/update_user_dto.dart';
import 'package:watchers_widget/src/features/common/data/apis/user/dtos/user_get_by_id_dto.dart';
import 'package:watchers_widget/src/features/common/data/apis/user/user_api.dart';
import 'package:watchers_widget/src/features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import 'package:watchers_widget/src/features/common/domain/models/app_settings.dart';
import 'package:watchers_widget/src/features/common/domain/models/avatar.dart';
import 'package:watchers_widget/src/features/common/domain/models/user.dart';

abstract class IUserRepository {
  Future<void> update({
    String? name,
    String? pic,
  });

  Future<AuthUser> get();

  Future<AuthUser> getById({
    required String id,
  });

  Future<void> delete();

  Future<List<Avatar>> getAvas();
}

class UserRepository implements IUserRepository {
  final UserApi _userApi;
  final SharedPreferencesEntityStorage _entityStorage;

  const UserRepository(
    this._userApi,
    this._entityStorage,
  );

  @override
  Future<void> update({
    String? name,
    String? pic,
  }) async {
    await _userApi.update(UserUpdateDto(name: name, pic: pic)).then((response) => response.data);

    // Actualize user in local storage, cuz back sends only {true}
    final user = AuthUser.fromJson(await _entityStorage.get(AppSettings.user));
    _saveUser(user.copyWith(baseUser: user.baseUser.copyWith(name: name, pic: pic)));
  }

  @override
  Future<AuthUser> get() async {
    final user = await _userApi
        .get()
        .then((response) => compute(AuthUser.fromMap, response.data as Map<String, dynamic>));

    await _saveUser(user);

    return user;
  }

  Future<void> _saveUser(AuthUser authUser) => _entityStorage.save(
        authUser.toJson(),
        AppSettings.user,
      );

  @override
  Future<AuthUser> getById({
    required String id,
  }) =>
      _userApi
          .getById(UserGetByIdDto(id: id))
          .then((response) => compute(AuthUser.fromMap, response.data as Map<String, dynamic>));

  @override
  Future<void> delete() => _userApi.delete();

  @override
  Future<List<Avatar>> getAvas() =>
      _userApi.getAvas().then((response) => (response.data as Map<String, dynamic>)
          .entries
          .map((avatarEntry) => Avatar(id: avatarEntry.key, pic: avatarEntry.value))
          .toList());
}
