import 'package:error_handler/error_handler.dart';

import '../entities/hide_req.dart';

abstract class HideRepo {
  Future<ExecuteGuard<void>> hide({required HideReq? hideReq});
}
