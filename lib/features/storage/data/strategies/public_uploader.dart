import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';

import 'upload_strategy.dart';
import '../../domain/entities/upload_req_entity.dart';

@Named('public')
@Injectable(as: UploadStrategy)
class PublicUploader implements UploadStrategy {
  final Dio _dio;

  PublicUploader(this._dio);

  @override
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
    void Function(int count, int total)? onProgress,
  }) async {
    try {
      final filePath = uploadReq.file.path;
      final extension = filePath.split('.').last.toLowerCase();
      String? mimeType;
      if (extension == 'mp4') {
        mimeType = 'video/mp4';
      } else if (extension == 'mov') {
        mimeType = 'video/quicktime';
      } else if (extension == 'jpg' || extension == 'jpeg') {
        mimeType = 'image/jpeg';
      } else if (extension == 'png') {
        mimeType = 'image/png';
      }

      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          filePath,
          filename: filePath.split('/').last,
          contentType: mimeType != null ? MediaType.parse(mimeType) : null,
        ),
        'file_path': uploadReq.filePath ?? '',
      });

      await _dio.post(
        '/upload',
        data: formData,
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
