import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:watchers_widget/src/core/constants/constants.dart';
import 'package:watchers_widget/src/core/custom_bloc_observer.dart';
import 'package:watchers_widget/src/features/chat/data/chat_api.dart';
import 'package:watchers_widget/src/features/chat/data/chat_repository.dart';
import 'package:watchers_widget/src/features/chat/domain/i_chat_repository.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/close_socket_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/delete_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/edit_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_all_emotions_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/emotion/get_emotion_by_name_scenario.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_message_array_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_pinned_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/get_socket_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/join_room_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/report_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_emotion_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_ban_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_message_visible_use_case.dart';
import 'package:watchers_widget/src/features/chat/domain/use_cases/set_messages_visible_request.dart';
import 'package:watchers_widget/src/features/chat/presentation/logic/chat_bloc.dart';
import 'package:watchers_widget/src/features/common/data/apis/room/room_api.dart';
import 'package:watchers_widget/src/features/common/data/apis/talker/talker_api.dart';
import 'package:watchers_widget/src/features/common/data/interceptors/add_token_interceptor.dart';
import 'package:watchers_widget/src/features/common/data/repositories/room_repository.dart';
import 'package:watchers_widget/src/features/common/data/repositories/talker_repository.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/room/get_room_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/talker/get_talkers_use_case.dart';
import 'package:watchers_widget/src/features/common/domain/use_cases/user/restore_user_use_case.dart';
import 'package:watchers_widget/src/features/deleted_profile/logic/deleted_profile_bloc.dart';
import 'package:watchers_widget/src/features/deleted_profile/logic/deleted_profile_bloc_params.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc.dart';
import 'package:watchers_widget/src/features/onboarding/presentation/logic/onboarding_bloc_params.dart';

import '../../features/chat/domain/use_cases/check_message_use_case.dart';
import '../../features/common/data/apis/auth/auth_api.dart';
import '../../features/common/data/apis/block/block_api.dart';
import '../../features/common/data/apis/user/user_api.dart';
import '../../features/common/data/repositories/auth_repository.dart';
import '../../features/common/data/repositories/block_repository.dart';
import '../../features/common/data/repositories/user_repository.dart';
import '../../features/common/data/shared_preferences_storage/shared_preferences_storage.dart';
import '../../features/common/domain/use_cases/auth/register_user_use_case.dart';
import '../../features/common/domain/use_cases/avatar/get_all_avatars_use_case.dart';
import '../../features/common/domain/use_cases/block/add_block_use_case.dart';
import '../../features/common/domain/use_cases/block/get_blocks_use_case.dart';
import '../../features/common/domain/use_cases/block/remove_block_use_case.dart';
import '../../features/common/domain/use_cases/user/delete_user_user_case.dart';
import '../../features/common/domain/use_cases/user/get_user_by_id_use_case.dart';
import '../../features/common/domain/use_cases/user/get_user_use_case.dart';
import '../../features/common/domain/use_cases/user/update_user_use_case.dart';
import '../../features/settings/presentation/logic/settings_bloc.dart';

part 'register_apies.dart';
part 'register_blocs.dart';
part 'register_intercepters.dart';
part 'register_repositories.dart';
part 'register_storages.dart';
part 'register_use_cases.dart';
part 'register_utils.dart';

GetIt locator = GetIt.asNewInstance();

Future<void> init() async {
  Bloc.observer = CustomBlocObserver();

  _registerUtils();

  _registerStorages();

  _registerIntercepters();

  _registerApies();

  _registerRepositories();

  _registerUseCases();

  _registerBlocs();

  return locator.allReady();
}
