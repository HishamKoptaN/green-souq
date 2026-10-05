import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../data/factories/storage_strategy_factory.dart';
import '../../data/repo/storage_repo.dart';
import '../entities/upload_req_entity.dart';

@LazySingleton(as: StorageRepo)
class StorageRepoImpl implements StorageRepo {
  final StorageStrategyFactory strategyFactory;
  StorageRepoImpl(this.strategyFactory);
  @override
  Future<ExecuteGuard<void>> upload({
    required UploadReqEntity uploadReq,
  }) async {
    final strategy = strategyFactory.getStrategy(
      type: StorageType.values.firstWhere(
        (e) {
          return e.name == uploadReq.disk;
        },
        orElse: () {
          return StorageType.public;
        },
      ),
    );
    return await strategy.upload(uploadReq: uploadReq);
  }
}
