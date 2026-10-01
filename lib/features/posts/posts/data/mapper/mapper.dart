import 'package:green/core/mapper/meta_mapper.dart';

import '../../../../../core/entities/meta_entity.dart';
import '../../domain/entities/posts_res_entity.dart';
import '../models/posts_res_model.dart';

extension PostsResMapper on PostsResModel {
  PostsResEntity toEntity() {
    return PostsResEntity(
      posts:
          posts?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
      meta: meta?.toEntity() ?? const MetaEntity(),
    );
  }
}

extension PostMapper on PostModel {
  PostEntity toEntity() {
    return PostEntity(
      id: id,
      postable: postable?.toEntity(),
      type: type,
      author: AuthorEntity(
        id: author?.id ?? 0,
        type: author?.type,
        name: author?.name,
        avatar: author?.avatar,
        bio: author?.bio,
        isFollowing: author?.isFollowing ?? false,
      ),
      createdAt: createdAt,
    );
  }
}

extension PostableMapper on PostableModel {
  PostableEntity toEntity() {
    return PostableEntity(
      id: id,
      content: content,
      isLike: isLike,
      likesCount: likesCount,
      cmntsCount: cmntsCount,
      sharesCount: sharesCount,
    );
  }
}
