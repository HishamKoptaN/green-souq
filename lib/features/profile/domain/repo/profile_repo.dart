import 'dart:io';

import 'package:error_handler/error_handler.dart';

import '../../../storage/domain/entities/upload_req_entity.dart';
import '../entities/edited_profile_entity.dart';
import '../entities/profile_entity.dart';

abstract class ProfileRepo {
  Future<ExecuteGuard<ProfileEntity>> getProfile();
  Future<ExecuteGuard<UploadReqEntity>> presignedAvatarUrl({
    required File file,
  });
  Future<ExecuteGuard<ProfileEntity>> updateProfile({
    required EditedProfileEntity updateProfileReqEntity,
  });
}
