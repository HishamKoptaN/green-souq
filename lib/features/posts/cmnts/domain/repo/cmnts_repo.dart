import 'package:error_handler/error_handler.dart';

import '../../data/models/cmnts_res_model.dart';
import '../entities/create_cmnt_entity.dart';

abstract class CmntsRepo {
  Stream<CmntsResModel> watch();

  Future<ExecuteGuard<void>> getCmnts({
    required int page,
    required int commentableId,
    required String commentableType,
  });

  Future<ExecuteGuard<void>> cmnt({required CreateCmntEntity createCmnt});
}
