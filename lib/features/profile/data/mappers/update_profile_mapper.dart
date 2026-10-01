import '../../domain/entities/editable_profile_entity.dart';
import '../models/update_profile_req_model.dart';

extension UpdateProfileReqX on EditableProfileEntity {
  UpdateProfileReqModel toModel() {
    return UpdateProfileReqModel(
      avatar: avatarPath,
      name: name?.value,
      address: address,
      bio: bio,
      phone: phone,
    );
  }
}
