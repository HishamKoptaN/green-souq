import 'package:green/features/sales_engineers/domain/entities/sales_engineers_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/sales_engineers_repo.dart';

@singleton
class SalesEngineersUseCases {
  final SalesEngineersRepo salesEngineersRepo;
  SalesEngineersUseCases(this.salesEngineersRepo);
  Stream<SalesEngineersResEntity?> watch() {
    return salesEngineersRepo.watch();
  }

  Future<ExecuteGuard<void>> getSalesEngineers({
    int? page,
    String? query,
  }) async {
    return await salesEngineersRepo.getSalesEngineers(page: page, query: query);
  }

  Future<ExecuteGuard<void>> recordVisit({required String id}) async {
    return await salesEngineersRepo.recordVisit(id: id);
  }
}
