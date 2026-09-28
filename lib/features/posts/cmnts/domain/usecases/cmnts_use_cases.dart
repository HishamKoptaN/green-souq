import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/cmnt_model.dart';
import '../../data/models/cmnts_res_model.dart';
import '../../data/models/create_cmnt_req_body.dart';
import '../repo/cmnts_repo.dart';

@LazySingleton()
class CmntsUseCases {
  final CmntsRepo cmntsRepo;
  CmntsUseCases({required this.cmntsRepo});
  Future<ExecuteGuard<CmntsResModel?>> getCmnts({
    required int postId,
    required int page,
  }) async {
    return await cmntsRepo.getCmnts(postId: postId, page: page);
  }

  Future<ExecuteGuard<Cmnt?>> cmnt({
    required CreateCmntReqBody createCmntReqBody,
  }) async {
    return await cmntsRepo.cmnt(createCmntReqBody: createCmntReqBody);
  }
}
