import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta.dart';
import '../../../../../core/models/meta_model.dart';
part 'posts_res_model.freezed.dart';
part 'posts_res_model.g.dart';

@freezed
abstract class PostsResModel with _$PostsResModel {
  const factory PostsResModel({
    @JsonKey(name: "posts") Posts? posts,
    @JsonKey(name: "draft_post") Postable? draftPost,
  }) = _PostsResModel;

  factory PostsResModel.fromJson(Map<String, dynamic> json) =>
      _$PostsResModelFromJson(json);
}

@freezed
abstract class Posts with _$Posts {
  const factory Posts({
    @JsonKey(name: "posts") List<Post>? posts,
    @JsonKey(name: "meta") Meta? meta,
  }) = _Posts;
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}

@freezed
abstract class Post with _$Post {
  const factory Post({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "post_owner") PostOwner? postOwner,
    @JsonKey(name: "likes_count") int? likesCount,
    @JsonKey(name: "is_like") bool? isLike,
    @JsonKey(name: "cmnts_count") int? cmntsCount,
    @JsonKey(name: "cmnters_images") List<String>? cmntersImages,
    @JsonKey(name: "shares_count") int? sharesCount,
    @JsonKey(name: "postable") Postable? postable,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "publish_at") String? publishAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
abstract class PostOwner with _$PostOwner {
  const factory PostOwner({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "is_following") bool? isFollowing,
  }) = _PostOwner;

  factory PostOwner.fromJson(Map<String, dynamic> json) =>
      _$PostOwnerFromJson(json);
}

@freezed
abstract class Postable with _$Postable {
  const factory Postable({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "details") String? details,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "video") String? video,
    @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
    @JsonKey(name: "pdf") String? pdf,
    @JsonKey(name: "pdf_name") String? pdfName,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "question") String? question,
    @JsonKey(name: "options") List<Option>? options,
    @JsonKey(name: "selected_option") int? selectedOption,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "shared_post") Post? sharedPost,
    @JsonKey(name: "interested_count") int? interestedCount,
    @JsonKey(name: "is_interested") bool? isInterested,
    @JsonKey(name: "start_at") String? startAt,
    @JsonKey(name: "end_at") String? endAt,
    @JsonKey(name: "is_ended") bool? isEnded,
  }) = _Postable;

  factory Postable.fromJson(Map<String, dynamic> json) =>
      _$PostableFromJson(json);
}

extension PostableX on Postable {
  int get totalVotes {
    return options?.fold(0, (sum, item) => sum! + (item.votesCount ?? 0)) ?? 0;
  }
}

@freezed
abstract class Option with _$Option {
  const factory Option({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "option") String? option,
    @JsonKey(name: "votes_count") int? votesCount,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

extension OptionX on Option {
  double calculatePercentage(int totalVotes) {
    if (totalVotes == 0) return 0;
    return ((votesCount ?? 0) / totalVotes) * 100;
  }
}
