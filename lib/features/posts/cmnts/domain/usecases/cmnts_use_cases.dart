import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/cmnts_res_model.dart';
import '../entities/create_cmnt_entity.dart';
import '../repo/cmnts_repo.dart';

abstract interface class CmntsUseCasesContract {
  Stream<CmntsResModel> watch();
  Future<ExecuteGuard<void>> getCmnts({
    required int page,
    required int commentableId,
    required String commentableType,
  });
  Future<ExecuteGuard<void>> cmnt({required CreateCmntEntity createCmnt});
}

@lazySingleton
class CmntsUseCases implements CmntsUseCasesContract {
  final CmntsRepo cmntsRepo;
  CmntsUseCases({required this.cmntsRepo});
  @override
  Stream<CmntsResModel> watch() {
    return cmntsRepo.watch();
  }

  @override
  Future<ExecuteGuard<void>> getCmnts({
    required int page,
    required int commentableId,
    required String commentableType,
  }) async {
    return await cmntsRepo.getCmnts(
      page: page,
      commentableId: commentableId,
      commentableType: commentableType,
    );
  }

  @override
  Future<ExecuteGuard<void>> cmnt({
    required CreateCmntEntity createCmnt,
  }) async {
    return await cmntsRepo.cmnt(createCmnt: createCmnt);
  }
}
