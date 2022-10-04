class Avatar {
  final String id;
  final String avatarUrl;

  const Avatar({
    required this.id,
    required this.avatarUrl,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Avatar && other.id == id && other.avatarUrl == avatarUrl;
  }

  @override
  int get hashCode => id.hashCode ^ avatarUrl.hashCode;
}
