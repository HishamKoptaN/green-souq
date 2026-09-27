import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/ratings_repo.dart';
import '../datasources/ratings_api.dart';
import '../models/rating_req_model.dart';

@Singleton(as: RatingsRepo)
class RatingsRepoImpl implements RatingsRepo {
  final RatingsApi _ratingsApi;
  RatingsRepoImpl(this._ratingsApi);
  @override
  Future<ExecuteGuard<void>> rate({
    required String id,
    required int rating,
  }) async {
    try {
      await _ratingsApi.rate(
        id: id,
        ratingReq: RatingReqModel(rating: rating),
      );
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
