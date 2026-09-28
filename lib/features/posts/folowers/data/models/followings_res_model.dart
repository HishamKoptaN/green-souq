import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/meta.dart';
import '../../../../../core/models/meta_model.dart';
import 'follower_model.dart';
part 'followings_res_model.freezed.dart';
part 'followings_res_model.g.dart';

@freezed
abstract class FollowingsResModel with _$FollowingsResModel {
  const factory FollowingsResModel({
    @JsonKey(name: "followers") List<FollowerModel>? followers,
    @JsonKey(name: "meta") Meta? meta,
  }) = _FollowingsResModel;

  factory FollowingsResModel.fromJson(Map<String, dynamic> json) =>
      _$FollowingsResModelFromJson(json);
}
