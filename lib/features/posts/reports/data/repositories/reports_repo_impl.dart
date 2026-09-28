import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/report_req.dart';
import '../../domain/repositories/reports_repo.dart';
import '../datasources/reports_api.dart';
import '../models/report_req_model.dart';

@LazySingleton(as: ReportRepo)
class ReportRepoImpl implements ReportRepo {
  final ReportApi reportApi;
  ReportRepoImpl({required this.reportApi});

  @override
  Future<ExecuteGuard<void>> report({required ReportReq? reportReq}) async {
    try {
      final model = ReportReqModel.fromEntity(reportReq!);
      await reportApi.report(reportReqModel: model);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
