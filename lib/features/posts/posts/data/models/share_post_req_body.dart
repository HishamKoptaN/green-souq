import 'package:freezed_annotation/freezed_annotation.dart';
part 'share_post_req_body.freezed.dart';
part 'share_post_req_body.g.dart';

@freezed
abstract class SharePostReqBody with _$SharePostReqBody {
  const factory SharePostReqBody({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "content") String? content,
  }) = _SharePostReqBody;
  factory SharePostReqBody.fromJson(Map<String, dynamic> json) =>
      _$SharePostReqBodyFromJson(json);
}
