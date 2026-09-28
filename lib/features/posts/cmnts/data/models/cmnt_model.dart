import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../posts/data/models/posts_res_model.dart';
part 'cmnt_model.freezed.dart';
part 'cmnt_model.g.dart';

@freezed
abstract class Cmnt with _$Cmnt {
  const factory Cmnt({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "comment") String? comment,
    @JsonKey(name: "image_url") dynamic imageUrl,
    @JsonKey(name: "video_url") dynamic videoUrl,
    @JsonKey(name: "comment_owner") PostOwner? commentOwner,
    @JsonKey(name: "isOwner") bool? isOwner,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _Cmnt;

  factory Cmnt.fromJson(Map<String, dynamic> json) => _$CmntFromJson(json);
}
