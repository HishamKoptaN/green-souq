import 'package:freezed_annotation/freezed_annotation.dart';
part 'follower_model.freezed.dart';
part 'follower_model.g.dart';

@freezed
abstract class FollowerModel with _$FollowerModel {
  const factory FollowerModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "image") String? image,
  }) = _FollowerModel;

  factory FollowerModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerModelFromJson(json);
}
