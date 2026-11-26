import 'package:injectable/injectable.dart';

import '../entities/report_req.dart';
import '../repositories/reports_repo.dart';

abstract interface class ReportUseCasesContract {
  Future<void> report({required ReportReq reportReq});
}

@injectable
class ReportUseCases implements ReportUseCasesContract {
  final ReportRepo reportRepo;

  ReportUseCases({required this.reportRepo});
  @override
  Future<void> report({required ReportReq reportReq}) {
    return reportRepo.report(reportReq: reportReq);
  }
}
