class Emotion {
  final String name;
  final String path;

  const Emotion({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
