import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/profile_entity.dart';
import '../models/profile_res_model.dart';

extension ProfileModelX on ProfileModel {
  ProfileEntity toEntity({required String email, String? googleName}) {
    final effectiveName =
        (name == null || name!.trim().isEmpty) &&
            googleName != null &&
            googleName.trim().isNotEmpty
        ? googleName
        : (name ?? '');
    return ProfileEntity(
      id: id,
      email: email,
      userType: UserType.values.firstWhere(
        (e) {
          return e.name == userType;
        },
        orElse: () {
          return .farmer;
        },
      ),
      avatar: avatar,
      name: effectiveName,
      bio: bio,
      phone: phone ?? '',
      address: address,
      latitude: latitude,
      longitude: longitude,
      createdAt: createdAt,
    );
  }
}
