import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/cmnts_res_model.dart';
import '../entities/create_cmnt_entity.dart';
import '../repo/cmnts_repo.dart';

@lazySingleton
class CmntsUseCases {
  final CmntsRepo cmntsRepo;
  CmntsUseCases({required this.cmntsRepo});
  Stream<CmntsResModel> watch() {
    return cmntsRepo.watch();
  }

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

  Future<ExecuteGuard<void>> cmnt({
    required CreateCmntEntity createCmnt,
  }) async {
    return await cmntsRepo.cmnt(createCmnt: createCmnt);
  }
}
