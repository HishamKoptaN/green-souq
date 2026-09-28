import 'package:injectable/injectable.dart';

import '../entities/hide_req.dart';
import '../repositories/hide_repo.dart';

@injectable
class HideUseCases {
  final HideRepo  hideRepo;

  HideUseCases({required this.hideRepo});
  Future<void> hide({required HideReq hideReq}) {
    return hideRepo.hide(hideReq: hideReq);
  }
}
