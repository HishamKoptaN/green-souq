import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
part 'profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required int id,
    UserType? userType,
    String? avatar,
    String? name,
    String? bio,
    String? address,
    String? latitude,
    String? longitude,
    String? phone,
    String? email,
    String? rating,
    String? ratingCount,
    String? createdAt,
    int? postsCount,
    int? followersCount,
  }) = _ProfileEntity;
}
