enum PostType { post, occasion, poll, sharedPost, scheduled, draft }

PostType? getPostType({required String? type}) {
  if (type == null) return null;
  try {
    return PostType.values.firstWhere((e) => e.name == type);
  } catch (_) {
    return null;
  }
}
