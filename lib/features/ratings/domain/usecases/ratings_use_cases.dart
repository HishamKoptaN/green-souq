import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../repo/ratings_repo.dart';

@singleton
class RatingsUseCases {
  final RatingsRepo ratingsRepo;

  RatingsUseCases(this.ratingsRepo);

  Future<ExecuteGuard<void>> rate({
    required int id,
    required String type,
    required int rating,
  }) async {
    return await ratingsRepo.rate(id: id, type: type, rating: rating);
  }
}
