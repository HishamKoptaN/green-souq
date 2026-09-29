import 'package:error_handler/error_handler.dart';

import '../../domain/entities/upload_req_entity.dart';

abstract class UploadStrategy {
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
    Function(int sent, int total)? onProgress,
  });
}
