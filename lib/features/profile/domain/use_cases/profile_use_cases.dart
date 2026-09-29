import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../../storage/data/repo/storage_repo.dart';
import '../entities/profile_res_entity.dart';
import '../entities/update_profile_req_entity.dart';
import '../repo/profile_repo.dart';

@singleton
class ProfileUseCases {
  final ProfileRepo _profileRepo;
  final StorageRepo storageRepo;
  const ProfileUseCases(this._profileRepo, this.storageRepo);

  Future<ExecuteGuard<ProfileResEntity>> getProfile() async {
    return await _profileRepo.getProfile();
  }

  Future<ExecuteGuard<ProfileResEntity>> updateProfile({
    required UpdateProfileReqEntity updateProfileReqEntity,
  }) async {
    if (updateProfileReqEntity.avatar != null) {
      return await _profileRepo
          .presignedAvatarUrl(
            file: File.fromRawPath(
              await updateProfileReqEntity.avatar!.value!.readAsBytes(),
            ),
          )
          .then((result) async {
            return result.when(
              success: (uploadReq) async {
                try {
                  await storageRepo.uploadFile(uploadReq: uploadReq!);
                  return await _profileRepo.updateProfile(
                    updateProfileReqEntity: updateProfileReqEntity.copyWith(
                      avatarPath: uploadReq.filePath,
                    ),
                  );
                } catch (e) {
                  return const .failure(
                    errorInfo: ErrorInfo(message: 'Failed to upload avatar'),
                  );
                }
              },
              failure: (failure) {
                return .failure(errorInfo: failure);
              },
            );
          });
    } else {
      return await _profileRepo.updateProfile(
        updateProfileReqEntity: updateProfileReqEntity,
      );
    }
  }
}
