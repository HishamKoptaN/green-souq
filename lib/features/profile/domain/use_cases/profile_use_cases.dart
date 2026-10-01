import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../../storage/data/repo/storage_repo.dart';
import '../entities/editable_profile_entity.dart';
import '../repo/profile_repo.dart';

@lazySingleton
class ProfileUseCases {
  final ProfileRepo _profileRepo;
  final StorageRepo storageRepo;
  const ProfileUseCases(this._profileRepo, this.storageRepo);

  Future<ExecuteGuard<EditableProfileEntity>> getProfile() async {
    return await _profileRepo.getProfile();
  }

  Future<ExecuteGuard<EditableProfileEntity>> updateProfile({
    required EditableProfileEntity editableProfile,
  }) async {
    if (editableProfile.avatar != null && editableProfile.avatar != null) {
      return await _profileRepo
          .presignedAvatarUrl(file: File(editableProfile.avatar!.path))
          .then((result) async {
            return result.when(
              success: (uploadReq) async {
                try {
                  await storageRepo.upload(uploadReq: uploadReq!);
                  return await _profileRepo.updateProfile(
                    updateProfileReqEntity: editableProfile.copyWith(
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
        updateProfileReqEntity: editableProfile.copyWith(
          avatarPath: editableProfile.avatarPath,
        ),
      );
    }
  }
}
