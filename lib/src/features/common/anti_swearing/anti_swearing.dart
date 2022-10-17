import 'package:watchers_widget/src/features/common/anti_swearing/swearing_patterns.dart';
import 'package:watchers_widget/src/features/common/data/repositories/responses/wordlist_response.dart';

class AntiSwearing {
  final List<String> _badWords;
  final List<String> _goodWords;
  final List<String> _badSites;
  final List<String> _phrases;
  final List<Autocorrect> _autocorrect;

  AntiSwearing({
    required WordlistResponse wordlistResponse,
  })  : _badWords = wordlistResponse.black,
        _goodWords = wordlistResponse.white,
        _badSites = wordlistResponse.site,
        _phrases = wordlistResponse.phrase,
        _autocorrect = wordlistResponse.autocorrect;

  bool containsSwearing(String incomingText) {
    final text = incomingText.toLowerCase();
    final words = text.split(' ');

    for (int i = 0; i < words.length; i++) {
      final convertWord = _convertEngToRus(words[i]);
      final replaceWord = _replaceLetters(convertWord);
      final cleanWord = _cleanBadSymbols(replaceWord);
      final cleanNativeWord = _cleanBadSymbols(words[i]);

      if (_isInGoodWords(cleanNativeWord) || _isInGoodPatterns(cleanNativeWord)) {
        return false;
      }

      if (_isInBadWords(cleanWord) || _isInBadPatterns(cleanWord)) {
        return true;
      }
    }

    if (_containsMatInSpaceWords(words)) {
      return true;
    }

    if (_containsBadPhrases(text)) {
      return true;
    }

    if (_containsBadSites(text)) {
      return true;
    }

    return false;
  }

  String _convertEngToRus(String word) {
    final rus = SweatingPatterns.letters['rus']!;
    final eng = SweatingPatterns.letters['eng']!;
    final rusArr = rus.split(RegExp(' +'));
    final engArr = eng.split(RegExp(' +'));

    for (int i = 0; i < rusArr.length; i++) {
      word = word.toLowerCase().split(engArr[i]).join(rusArr[i]);
    }
    return word;
  }

  String _replaceLetters(String word) {
    for (int i = 0; i < _autocorrect.length; i++) {
      word = word.toLowerCase().split(_autocorrect[i].from).join(_autocorrect[i].to);
    }
    return word;
  }

  String _cleanBadSymbols(String text) {
    return text.replaceAll(RegExp("[^a-zA-Zа-яА-Яё0-9'`s]"), '').replaceAll(RegExp('\n'), '');
  }

  bool _isInGoodWords(String word) {
    for (int i = 0; i < _goodWords.length; i++) {
      if (word.contains(_goodWords[i])) return true;
    }

    return false;
  }

  bool _isInGoodPatterns(String word) {
    for (int i = 0; i < SweatingPatterns.goodPatterns.length; i++) {
      final pattern = RegExp(SweatingPatterns.goodPatterns[i]);
      if (pattern.hasMatch(word)) return true;
    }

    return false;
  }

  bool _isInBadWords(String word) {
    for (int i = 0; i < _badWords.length; i++) {
      if (word == _badWords[i]) return true;
    }

    return false;
  }

  bool _isInBadPatterns(String word) {
    for (int i = 0; i < SweatingPatterns.badPatterns.length; i++) {
      final pattern = RegExp(SweatingPatterns.badPatterns[i]);
      if (pattern.hasMatch(word)) return true;
    }
    return false;
  }

  bool _containsBadPhrases(String text) {
    for (int i = 0; i < _phrases.length; i++) {
      if (text.toLowerCase().contains(_phrases[i].toLowerCase())) {
        return true;
      }
    }

    return false;
  }

  bool _containsBadSites(String text) {
    for (int i = 0; i < _badSites.length; i++) {
      if (text.toLowerCase().contains(_badSites[i].toLowerCase())) {
        return true;
      }
    }

    return false;
  }

  bool _containsMatInSpaceWords(List<String> words) {
    final spaceWords = _findSpaceWords(words);
    for (int i = 0; i < spaceWords.length; i++) {
      final word = _convertEngToRus(spaceWords[i]);
      if (_isInBadPatterns(word)) return true;
    }
    return false;
  }

  List<String> _findSpaceWords(List<String> words) {
    final out = <String>[];
    String spaceWord = '';
    for (int i = 0; i < words.length; i++) {
      final replaceWord = _replaceLetters(words[i]);
      final word = _cleanBadSymbols(replaceWord);
      if (word.length <= 3) {
        spaceWord += word;
      }
      if (spaceWord.length >= 3) {
        out.add(spaceWord);
        spaceWord = '';
      }
    }
    return out;
  }
}
