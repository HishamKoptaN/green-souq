import 'package:error_handler/error_handler.dart';

import '../entities/sales_engineers_res_entity.dart';

abstract class SalesEngineersRepo {
  Stream<SalesEngineersResEntity?> watch();
  Future<ExecuteGuard<void>> getSalesEngineers({int? page, String? query});
}
