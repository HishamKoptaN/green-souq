import 'package:green/features/shops/domain/entities/shops_res_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../repo/shops_repo.dart';

abstract interface class ShopsUseCasesContract {
  Stream<ShopsResEntity?> watch();
  Future<ExecuteGuard<void>> get({int? page, String? query});
  Future<ExecuteGuard<void>> show({required int id});
}

@singleton
class ShopsUseCases implements ShopsUseCasesContract {
  final ShopsRepo shopsRepo;
  ShopsUseCases(this.shopsRepo);
  @override
  Stream<ShopsResEntity?> watch() {
    return shopsRepo.watch();
  }

  @override
  Future<ExecuteGuard<void>> get({int? page, String? query}) async {
    return await shopsRepo.getShops(page: page, query: query);
  }

  @override
  Future<ExecuteGuard<void>> show({required int id}) async {
    return await shopsRepo.show(id: id);
  }
}
