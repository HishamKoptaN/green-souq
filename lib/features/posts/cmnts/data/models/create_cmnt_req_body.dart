import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_cmnt_req_body.freezed.dart';
part 'create_cmnt_req_body.g.dart';

@freezed
abstract class CreateCmntReqBody with _$CreateCmntReqBody {
  const factory CreateCmntReqBody({
    @JsonKey(name: "comment") String? comment,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "video_url") String? videoUrl,
    @JsonKey(name: "commentable_id") int? commentableId,
    @JsonKey(name: "commentable_type") String? commentableType,
  }) = _CreateCmntReqBody;
  factory CreateCmntReqBody.fromJson(Map<String, dynamic> json) =>
      _$CreateCmntReqBodyFromJson(json);
}
