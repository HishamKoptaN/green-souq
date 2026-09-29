import '../../domain/entities/update_profile_req_entity.dart';
import '../../../storage/data/model/presigned_url_res_model.dart';
import '../models/update_profile_req_model.dart';

extension UpdateProfileReqX on UpdateProfileReqEntity {
  UpdateProfileReqModel toModel() {
    return UpdateProfileReqModel(
      avatar: avatarPath,
      name: name?.value,
      phone: phone?.value,
    );
  }
}
