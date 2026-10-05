import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';
import 'package:green/core/models/media_model.dart';
part 'posts_res_entity.freezed.dart';

@freezed
abstract class PostsResEntity with _$PostsResEntity {
  const factory PostsResEntity({
    @Default([]) List<PostEntity> posts,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _PostsResEntity;
}

@freezed
abstract class PostEntity with _$PostEntity {
  const factory PostEntity({
    required int id,
    String? type,
    AuthorEntity? author,
    @Default(false) bool isFollowing,
    PostableEntity? postable,
    @Default([]) List<MediaModel> media,
    String? createdAt,
  }) = _PostEntity;
}

@freezed
abstract class PostableEntity with _$PostableEntity {
  const factory PostableEntity({
    int? id,
    String? content,
    PostEntity? sharedPost,
    @Default(false) bool isLike,
    @Default(false) bool isFav,
    int? cmntsCount,
    int? likesCount,
    List<String>? cmntersImages,
    int? sharesCount,
  }) = _PostableEntity;
}

@freezed
abstract class AuthorEntity with _$AuthorEntity {
  const factory AuthorEntity({
    required int id,
    String? avatar,
    String? name,
    String? bio,
    String? type,
    @Default(false) bool isFollowing,
  }) = _AuthorEntity;
}
