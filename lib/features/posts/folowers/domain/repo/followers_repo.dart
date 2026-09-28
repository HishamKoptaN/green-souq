import 'package:error_handler/error_handler.dart';

import '../../data/models/follower_model.dart';
import '../../data/models/followers_res_model.dart';

abstract class FollowersRepo {
  Future<ExecuteGuard<FollowersResModel?>> getFollowers({
    required int? page,
    required int? userId,
    required bool? myData,
  });
  Future<ExecuteGuard<List<FollowerModel>?>> getSuggestedFollowers();
  Future<ExecuteGuard<void>> toggleFollower({required int id});
}
