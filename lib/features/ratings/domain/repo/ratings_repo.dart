import 'package:error_handler/error_handler.dart';
import '../entities/rating_entity.dart';

abstract class RatingsRepo {
  Future<ExecuteGuard<void>> rate({
    required RatingEntity rating,
  });
}
