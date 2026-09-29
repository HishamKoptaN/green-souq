import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';
import 'upload_strategy.dart';
import '../../domain/entities/upload_req_entity.dart';

@Named('cloudinary')
@Injectable(as: UploadStrategy)
class CloudinaryUploader implements UploadStrategy {
  final Dio _dio;
  CloudinaryUploader(this._dio);

  @override
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
    void Function(int sent, int total)? onProgress,
  }) async {
    try {
      final filePath = uploadReq.file.path;
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          filePath,
          filename: filePath.split('/').last,
        ),
      });
      await _dio.post(
        uploadReq.uploadUrl!,
        data: formData,
        onSendProgress: (sent, total) {
          if (onProgress != null && total > 0) {
            onProgress(sent, total);
          }
        },
      );
      return const .success(data: null);
    } catch (e) {
      return .failure(errorInfo: ErrorInfo());
    }
  }
}
