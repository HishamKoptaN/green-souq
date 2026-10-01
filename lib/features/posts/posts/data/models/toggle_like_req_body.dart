import 'package:freezed_annotation/freezed_annotation.dart';
part 'toggle_like_req_body.freezed.dart';
part 'toggle_like_req_body.g.dart';

@freezed
abstract class ToggleLikeReqBody with _$ToggleLikeReqBody {
  const factory ToggleLikeReqBody({
    @JsonKey(name: "likeable_id") int? likeableId,
    @JsonKey(name: "likeable_type") String? likeableType,
  }) = _PostLikeReqBody;

  factory ToggleLikeReqBody.fromJson(Map<String, dynamic> json) =>
      _$ToggleLikeReqBodyFromJson(json);
}
