import 'package:injectable/injectable.dart';

import '../entities/report_req.dart';
import '../repositories/reports_repo.dart';

@injectable
class ReportUseCases {
  final ReportRepo  reportRepo;

  ReportUseCases({required this.reportRepo});
  Future<void> report({required ReportReq reportReq}) {
    return reportRepo.report(reportReq: reportReq);
  }
}
