import 'dart:io';

import 'package:error_handler/error_handler.dart';

import '../../../storage/domain/entities/upload_req_entity.dart';
import '../entities/profile_res_entity.dart';
import '../entities/update_profile_req_entity.dart';

abstract class ProfileRepo {
  Future<ExecuteGuard<ProfileResEntity>> getProfile();
  Future<ExecuteGuard<UploadReqEntity>> presignedAvatarUrl({
    required File file,
  });
  Future<ExecuteGuard<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  });
}
