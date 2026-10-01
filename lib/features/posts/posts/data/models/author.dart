import 'package:freezed_annotation/freezed_annotation.dart';
part 'author.freezed.dart';
part 'author.g.dart';

@freezed
abstract class AuthorModel with _$AuthorModel {
  const factory AuthorModel({
    required int id,
    String? type,
    String? name,
    String? bio,
    String? avatar,
    @JsonKey(name: "is_following") bool? isFollowing,
  }) = _AuthorModel;

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
