import 'package:error_handler/error_handler.dart';

import '../../data/models/cmnt_model.dart';
import '../../data/models/cmnts_res_model.dart';
import '../../data/models/create_cmnt_req_body.dart';

abstract class CmntsRepo {
  Future<ExecuteGuard<CmntsResModel?>> getCmnts({
    required int postId,
    required int page,
  });

  Future<ExecuteGuard<Cmnt?>> cmnt({
    required CreateCmntReqBody createCmntReqBody,
  });
}
