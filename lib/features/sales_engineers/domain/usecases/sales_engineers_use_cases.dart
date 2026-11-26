import 'package:green/features/sales_engineers/domain/entities/sales_engineers_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/sales_engineers_repo.dart';

abstract interface class SalesEngineersUseCasesContract {
  Stream<SalesEngineersResEntity?> watch();
  Future<ExecuteGuard<void>> get({int? page, String? query});
}

@singleton
class SalesEngineersUseCases implements SalesEngineersUseCasesContract {
  final SalesEngineersRepo salesEngineersRepo;
  SalesEngineersUseCases(this.salesEngineersRepo);
  @override
  Stream<SalesEngineersResEntity?> watch() {
    return salesEngineersRepo.watch();
  }

  @override
  Future<ExecuteGuard<void>> get({int? page, String? query}) async {
    return await salesEngineersRepo.getSalesEngineers(page: page, query: query);
  }
}
