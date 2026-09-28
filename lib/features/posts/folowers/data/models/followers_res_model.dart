import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta.dart';
import '../../../../../core/models/meta_model.dart';
import 'follower_model.dart';
part 'followers_res_model.freezed.dart';
part 'followers_res_model.g.dart';

@freezed
abstract class FollowersResModel with _$FollowersResModel {
  const factory FollowersResModel({
    @JsonKey(name: "followers") List<FollowerModel>? followers,
    @JsonKey(name: "meta") Meta? meta,
  }) = _FollowersResModel;

  factory FollowersResModel.fromJson(Map<String, dynamic> json) =>
      _$FollowersResModelFromJson(json);
}
