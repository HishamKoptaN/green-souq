import 'package:injectable/injectable.dart';

import '../entities/hide_req.dart';
import '../repositories/hide_repo.dart';

abstract interface class HideUseCasesContract {
  Future<void> hide({required HideReq hideReq});
}

@injectable
class HideUseCases implements HideUseCasesContract {
  final HideRepo hideRepo;

  HideUseCases({required this.hideRepo});
  @override
  Future<void> hide({required HideReq hideReq}) {
    return hideRepo.hide(hideReq: hideReq);
  }
}
