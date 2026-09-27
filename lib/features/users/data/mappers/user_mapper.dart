import '../../../../core/entities/meta_entity.dart';
import '../../../../core/mapper/meta_mapper.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/entities/users_res_entity.dart';
import '../models/user_model.dart';
import '../models/users_res_model.dart';

extension UsersResModelMapper on UsersResModel {
  UsersResEntity toEntity() {
    return UsersResEntity(
      users:
          users?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
      meta: meta?.toEntity() ?? MetaEntity(),
    );
  }
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id?.toString() ?? '',
      name: name ?? '',
      userType: userType ?? '',
      phone: phone ?? '',
      email: email ?? '',
      rating: rating ?? 0.0,
      ratingAverage: ratingAverage,
      ratingsCount: ratingsCount,
      address: address ?? '',
      latitude: latitude,
      longitude: longitude,
    );
  }
}
