import 'package:watchers_widget/src/core/extensions/future_dio_response_x.dart';
import 'package:watchers_widget/src/features/common/data/apis/wordlist/wordlist_api.dart';
import 'package:watchers_widget/src/features/common/data/repositories/responses/wordlist_response.dart';

abstract class IWordlistRepository {
  Future<WordlistResponse> getWordlist();
}

class WordlistRepository implements IWordlistRepository {
  final WordlistApi _roomApi;

  const WordlistRepository(
    this._roomApi,
  );

  @override
  Future<WordlistResponse> getWordlist() =>
      _roomApi.getWordlist().computeResponse(WordlistResponse.fromMap);
}
