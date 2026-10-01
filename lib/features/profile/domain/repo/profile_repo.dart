import 'dart:io';

import 'package:error_handler/error_handler.dart';

import '../../../storage/domain/entities/upload_req_entity.dart';
import '../entities/editable_profile_entity.dart';

abstract class ProfileRepo {
  Future<ExecuteGuard<EditableProfileEntity>> getProfile();
  Future<ExecuteGuard<UploadReqEntity>> presignedAvatarUrl({
    required File file,
  });
  Future<ExecuteGuard<EditableProfileEntity>> updateProfile({
    required EditableProfileEntity updateProfileReqEntity,
  });
}
