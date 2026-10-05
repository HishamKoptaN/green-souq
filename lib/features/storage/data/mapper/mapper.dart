import 'dart:io';

import '../../domain/entities/upload_req_entity.dart';
import '../model/presigned_url_res_model.dart';

extension PresignedUrlResModelX on PresignedUrlResModel {
  UploadReqEntity toUploadReqEntity({required File file}) {
    return UploadReqEntity(
      disk: disk,
      uploadUrl: uploadUrl ?? '',
      file: file,
      contentType: contentType ?? '',
      filePath: filePath ?? '',
      overwrite: overwrite,
      publicId: publicId ?? '',
      timestamp: timestamp,
      apiKey: apiKey ?? '',
      signature: signature,
    );
  }
}
