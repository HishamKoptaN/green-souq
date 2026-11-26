import '../../domain/entities/complaint_entity.dart';
import '../../domain/repo/complaints_repo.dart';

import 'package:injectable/injectable.dart';

abstract interface class GetComplaintsUseCaseContract {
  Future<List<ComplaintEntity>> call();
}

@injectable
class GetComplaintsUseCase implements GetComplaintsUseCaseContract {
  final ComplaintsRepo _repo;

  GetComplaintsUseCase(this._repo);

  @override
  Future<List<ComplaintEntity>> call() async {
    return await _repo.getComplaints();
  }
}
