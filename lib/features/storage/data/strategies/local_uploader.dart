import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../datasources/storage_api.dart';
import 'upload_strategy.dart';
import '../../domain/entities/upload_req_entity.dart';

@Named('local')
@Injectable(as: UploadStrategy)
class LocalUploader implements UploadStrategy {
  final StorageApi _storageApi;

  LocalUploader(this._storageApi);

  @override
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
    void Function(int count, int total)? onProgress,
  }) async {
    try {
      await _storageApi.upload(
        file: uploadReq.file,
        filePath: uploadReq.filePath ?? '',
      );
      return const .success(data: null);
    } catch (e) {
      return const .failure(errorInfo: ErrorInfo());
    }
  }
}
