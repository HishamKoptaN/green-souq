import 'package:error_handler/error_handler.dart';

import '../entities/shops_res_entity.dart';

abstract class ShopsRepo {
  Stream<ShopsResEntity?> watch();
  Future<ExecuteGuard<void>> getShops({int? page, String? query});
}
