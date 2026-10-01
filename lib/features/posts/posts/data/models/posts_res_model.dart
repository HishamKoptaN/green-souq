import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta.dart';
import '../../../../../core/models/meta_model.dart';
import 'author.dart';
part 'posts_res_model.freezed.dart';
part 'posts_res_model.g.dart';

@freezed
abstract class PostsResModel with _$PostsResModel {
  const factory PostsResModel({
    @JsonKey(name: "data") List<PostModel>? posts,
    Meta? meta,
  }) = _PostsResModel;

  factory PostsResModel.fromJson(Map<String, dynamic> json) =>
      _$PostsResModelFromJson(json);
}

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required int id,
    String? type,
    @JsonKey(name: "author") AuthorModel? author,
    PostableModel? postable,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

@freezed
abstract class PostableModel with _$PostableModel {
  const factory PostableModel({
    required int id,
    String? content,
    @JsonKey(name: "shared_post") PostModel? sharedPost,
    @JsonKey(name: "likes_count") int? likesCount,
    @Default(false) @JsonKey(name: "is_like") bool isLike,
    @JsonKey(name: "cmnts_count") int? cmntsCount,
    @JsonKey(name: "cmnters_images") List<String>? cmntersImages,
    @JsonKey(name: "shares_count") int? sharesCount,
  }) = _PostableModel;
  factory PostableModel.fromJson(Map<String, dynamic> json) =>
      _$PostableModelFromJson(json);
}

@freezed
abstract class OptionModel with _$OptionModel {
  const factory OptionModel({
    required int id,
    String? option,
    @JsonKey(name: "votes_count") int? votesCount,
  }) = _OptionModel;

  factory OptionModel.fromJson(Map<String, dynamic> json) =>
      _$OptionModelFromJson(json);
}

extension OptionModelX on OptionModel {
  double calculatePercentage(int totalVotes) {
    if (totalVotes == 0) return 0;
    return ((votesCount ?? 0) / totalVotes) * 100;
  }
}
