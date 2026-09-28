enum PostType {
  social_post,
  occasion,
  poll,
  company_post,
  news,
  servReq,
  shared_post,
  scheduled,
  draft,
}

PostType? getPostType({required String? type}) {
  if (type == null) return null;
  try {
    return PostType.values.firstWhere((e) => e.name == type);
  } catch (_) {
    return null;
  }
}
