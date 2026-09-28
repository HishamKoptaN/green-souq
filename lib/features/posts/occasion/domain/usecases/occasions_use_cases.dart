import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../repo/occasions_repo.dart';

@LazySingleton()
class OcassionsUseCases {
  final OcassionsRepo ocassionsRepo;
  OcassionsUseCases({required this.ocassionsRepo});

  Future<ExecuteGuard<void>> toggleOcassionInterest({required int? id}) async {
    return await ocassionsRepo.toggleOcassionInterest(id: id);
  }
}
