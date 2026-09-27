import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../repo/ratings_repo.dart';

@singleton
class RatingsUseCases {
  final RatingsRepo ratingsRepo;

  RatingsUseCases(this.ratingsRepo);

  Future<ExecuteGuard<void>> rate({
    required String id,
    required int rating,
  }) async {
    return await ratingsRepo.rate(id: id, rating: rating);
  }
}
