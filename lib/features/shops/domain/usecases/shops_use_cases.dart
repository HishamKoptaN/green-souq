import 'package:green/features/shops/domain/entities/shops_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/shops_repo.dart';

@singleton
class ShopsUseCases {
  final ShopsRepo shopsRepo;
  ShopsUseCases(this.shopsRepo);
  Stream<ShopsResEntity?> watch() {
    return shopsRepo.watch();
  }

  Future<ExecuteGuard<void>> get({int? page, String? query}) async {
    return await shopsRepo.getShops(page: page, query: query);
  }

  Future<ExecuteGuard<void>> show({required int id}) async {
    return await shopsRepo.show(id: id);
  }
}
