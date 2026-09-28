import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/hide_req.dart';
import '../../domain/repositories/hide_repo.dart';
import '../datasources/hide_api.dart';
import '../models/hide_req_model.dart';

@LazySingleton(as: HideRepo)
class HideRepoImpl implements HideRepo {
  final HideApi hideApi;

  HideRepoImpl({required this.hideApi});

  @override
  Future<ExecuteGuard<void>> hide({required HideReq? hideReq}) async {
    try {
      final hideReqModel = HideReqModel.fromEntity(hideReq!);
      await hideApi.hide(hideReqModel: hideReqModel);
      return const ExecuteGuard.success(data: null);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
