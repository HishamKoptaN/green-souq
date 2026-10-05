import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/post_type.dart';
import 'post_media_model.dart';
part 'create_post_body.freezed.dart';
part 'create_post_body.g.dart';

@freezed
abstract class CreatePostModel with _$CreatePostModel {
  const factory CreatePostModel({
    @JsonKey(name: "type", includeIfNull: false) PostType? type,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "post_id") int? postId,
    @JsonKey(name: "media") List<PostMediaModel>? media,
  }) = _CreatePostModel;
  factory CreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePostModelFromJson(json);
}
