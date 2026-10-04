import '../../domain/entities/edited_profile_entity.dart';
import '../models/update_profile_req_model.dart';

extension UpdateProfileReqX on EditedProfileEntity {
  UpdateProfileReqModel toModel() {
    return UpdateProfileReqModel(
      avatar: avatar,
      name: name?.value,
      bio: bio,
      address: address,
      latitude: latitude,
      longitude: longitude,
      phone: phone,
    );
  }
}
