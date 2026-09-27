import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/models/meta_model.dart';

import 'user_model.dart';

part 'users_res_model.freezed.dart';
part 'users_res_model.g.dart';

@freezed
abstract class UsersResModel with _$UsersResModel {
  const factory UsersResModel({
    @JsonKey(name: 'data') List<UserModel>? users,
    MetaModel? meta,
  }) = _UsersResModel;

  factory UsersResModel.fromJson(Map<String, Object?> json) =>
      _$UsersResModelFromJson(json);
}
