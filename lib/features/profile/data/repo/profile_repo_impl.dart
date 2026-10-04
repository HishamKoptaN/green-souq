import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../../storage/data/mapper/mapper.dart';
import '../../../storage/domain/entities/upload_req_entity.dart';
import '../../domain/entities/edited_profile_entity.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repo/profile_repo.dart';
import '../datasources/profile_api.dart';
import '../mappers/update_profile_mapper.dart';
import '../models/presigned/presigned_url_req_model.dart';
import '../mappers/profile_model_mapper.dart';

@LazySingleton(as: ProfileRepo)
class ProfileRepoImpl implements ProfileRepo {
  final ProfileApi _profileApi;
  final FirebaseAuth _firebaseAuth;

  const ProfileRepoImpl(this._profileApi, this._firebaseAuth);

  @override
  Future<ExecuteGuard<ProfileEntity>> getProfile() async {
    try {
      final res = await _profileApi.getProfile();
      return .success(
        data: res.toEntity(email: _firebaseAuth.currentUser?.email ?? ''),
      );
    } catch (e, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(stackTrace: st, error: e),
      );
    }
  }

  @override
  Future<ExecuteGuard<UploadReqEntity>> presignedAvatarUrl({
    required File file,
  }) async {
    try {
      return await _profileApi
          .presignedAvatarUrl(
            presignedUrlReqModel: PresignedUrlReqModel(
              extensionProperty: file.path.split('.').last,
            ),
          )
          .then((res) async {
            return .success(data: res.toUploadReqEntity(file: file));
          });
    } catch (e, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(stackTrace: st, error: e),
      );
    }
  }

  @override
  Future<ExecuteGuard<ProfileEntity>> updateProfile({
    required EditedProfileEntity updateProfileReqEntity,
  }) async {
    try {
      return await _profileApi
          .updateProfile(
            updateProfileReqModel: updateProfileReqEntity.toModel(),
          )
          .then((res) async {
            return .success(
              data: res.toEntity(email: _firebaseAuth.currentUser?.email ?? ''),
            );
          });
    } catch (e, st) {
      return .failure(
        errorInfo: ErrorHandler.handle(stackTrace: st, error: e),
      );
    }
  }
}
