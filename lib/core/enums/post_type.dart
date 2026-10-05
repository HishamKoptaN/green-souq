enum PostType { social }

PostType? getPostType({required String? type}) {
  if (type == null) return null;
  try {
    return PostType.values.firstWhere((e) => e.name == type);
  } catch (_) {
    return null;
  }
}
