import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../strategies/upload_strategy.dart';

enum StorageType { local, cloudinary, s3 }

@injectable
class StorageStrategyFactory {
  StorageStrategyFactory();
  UploadStrategy getStrategy({required StorageType type}) {
    final sl = GetIt.I;
    switch (type) {
      case .local:
        return sl<UploadStrategy>(instanceName: 'local');
      case .cloudinary:
        return sl<UploadStrategy>(instanceName: 'cloudinary');
      case .s3:
        return sl<UploadStrategy>(instanceName: 's3');
    }
  }
}
