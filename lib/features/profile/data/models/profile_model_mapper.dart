import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/editable_profile_entity.dart';
import 'profile_res_model.dart';

extension ProfileModelX on ProfileModel {
  EditableProfileEntity toEntity({required String email}) {
    return EditableProfileEntity(
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
      avatarPath: avatar,
      name: .dirty(value: name ?? ''),
      bio: bio,
      address: address,
      phone: phone ?? '',
      createdAt: createdAt ?? '',
    );
  }
}
