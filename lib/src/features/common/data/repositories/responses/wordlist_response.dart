import 'dart:convert';

class WordlistResponse {
  final List<String> white;
  final List<String> black;
  final List<String> phrase;
  final List<String> site;
  final List<Autocorrect> autocorrect;

  WordlistResponse({
    required this.white,
    required this.black,
    required this.phrase,
    required this.site,
    required this.autocorrect,
  });

  factory WordlistResponse.fromMap(Map<String, dynamic> map) {
    return WordlistResponse(
      white: List<String>.from((map['white'] ?? '').toString().split(' ,')),
      black: List<String>.from((map['black'] ?? '').toString().split(', ')),
      phrase: List<String>.from((map['phrase'] ?? '').toString().split(', ')),
      site: List<String>.from((map['site'] ?? '').toString().split(', ')),
      autocorrect: List<Autocorrect>.from(map['autocorrect']?.map((x) => Autocorrect.fromMap(x))),
    );
  }

  factory WordlistResponse.fromJson(String source) => WordlistResponse.fromMap(json.decode(source));
}

class Autocorrect {
  final String from;
  final String to;

  Autocorrect({
    required this.from,
    required this.to,
  });

  factory Autocorrect.fromMap(Map<String, dynamic> map) {
    return Autocorrect(
      from: map['from'] ?? '',
      to: map['to'] ?? '',
    );
  }

  factory Autocorrect.fromJson(String source) => Autocorrect.fromMap(json.decode(source));
}
