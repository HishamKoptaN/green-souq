import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/core/entities/meta_entity.dart';

import 'user_entity.dart';
part 'users_res_entity.freezed.dart';

@freezed
abstract class UsersResEntity with _$UsersResEntity {
  const factory UsersResEntity({
    @Default([]) List<UserEntity> users,
    @Default(MetaEntity()) MetaEntity meta,
  }) = _UsersResEntity;
}
