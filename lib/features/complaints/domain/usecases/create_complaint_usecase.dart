import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';

import 'package:injectable/injectable.dart';

abstract interface class CreateComplaintUseCaseContract {
  Future<void> call(ComplaintEntity complaint);
}

@injectable
class CreateComplaintUseCase implements CreateComplaintUseCaseContract {
  final ComplaintsRepo _repo;

  CreateComplaintUseCase(this._repo);

  @override
  Future<void> call(ComplaintEntity complaint) async {
    return await _repo.createComplaint(complaint);
  }
}
