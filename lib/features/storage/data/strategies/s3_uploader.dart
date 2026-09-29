import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import 'upload_strategy.dart';
import '../../domain/entities/upload_req_entity.dart';

@Named('s3')
@Injectable(as: UploadStrategy)
class S3Uploader implements UploadStrategy {
  final Dio _dio;
  S3Uploader(@Named('s3Dio') this._dio);

  @override
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
    void Function(int count, int total)? onProgress,
  }) async {
    try {
      final int fileLength = await uploadReq.file.length();
      await _dio.put(
        uploadReq.uploadUrl!,
        data: uploadReq.file.openRead(),
        options: Options(
          headers: {
            'Content-Type': uploadReq.contentType,
            'Content-Length': fileLength,
            'Accept': '*/*',
          },
        ),
        onSendProgress: (sent, total) {
          if (onProgress != null && total > 0) {
            onProgress(sent, total);
          }
        },
      );

      return const .success(data: null);
    } catch (e) {
      return const .failure(errorInfo: ErrorInfo());
    }
  }
}
