import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_owner.freezed.dart';
part 'comment_owner.g.dart';

@freezed
abstract class CommentOwner with _$CommentOwner {
  const factory CommentOwner({
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
  }) = _CommentOwner;

  factory CommentOwner.fromJson(Map<String, dynamic> json) =>
      _$CommentOwnerFromJson(json);
}
