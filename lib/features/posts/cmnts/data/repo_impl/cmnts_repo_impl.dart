import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/cmnts_repo.dart';
import '../datasources/cmnts_api.dart';
import '../models/cmnt_model.dart';
import '../models/cmnts_res_model.dart';
import '../models/create_cmnt_req_body.dart';

@Injectable(as: CmntsRepo)
class CmntsRepoImpl implements CmntsRepo {
  final CmntsApi cmntsApi;
  CmntsRepoImpl({required this.cmntsApi});
  @override
  Future<ExecuteGuard<CmntsResModel?>> getCmnts({
    required int postId,
    required int page,
  }) async {
    try {
      final res = await cmntsApi.getCmnts(postId: postId, page: page);
      return ExecuteGuard.success(data: res);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<Cmnt?>> cmnt({
    required CreateCmntReqBody createCmntReqBody,
  }) async {
    try {
      final res = await cmntsApi.cmnt(createCmntReqBody: createCmntReqBody);
      return .success(data: res);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
