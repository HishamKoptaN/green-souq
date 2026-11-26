import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../repo/ratings_repo.dart';

abstract interface class RatingsUseCasesContract {
  Future<ExecuteGuard<void>> rate({
    required int id,
    required String type,
    required int rating,
  });
}

@singleton
class RatingsUseCases implements RatingsUseCasesContract {
  final RatingsRepo ratingsRepo;

  RatingsUseCases(this.ratingsRepo);

  @override
  Future<ExecuteGuard<void>> rate({
    required int id,
    required String type,
    required int rating,
  }) async {
    return await ratingsRepo.rate(id: id, type: type, rating: rating);
  }
}
