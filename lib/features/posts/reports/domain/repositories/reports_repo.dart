import 'package:error_handler/error_handler.dart';

import '../entities/report_req.dart';

abstract class ReportRepo {
  Future<ExecuteGuard<void>> report({required ReportReq? reportReq});
}
