import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/profile_entity.dart';
import '../models/profile_res_model.dart';

extension ProfileModelX on ProfileModel {
  ProfileEntity toEntity({required String email}) {
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
      name: name ?? '',
      bio: bio,
      phone: phone ?? '',
      address: address,
      latitude: latitude,
      longitude: longitude,
      createdAt: createdAt,
    );
  }
}
