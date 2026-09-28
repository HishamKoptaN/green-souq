import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/follower_model.dart';
import '../../data/models/followers_res_model.dart';
import '../repo/followers_repo.dart';

@LazySingleton()
class FollowersUseCases {
  final FollowersRepo followersRepo;
  FollowersUseCases({required this.followersRepo});
  Future<ExecuteGuard<FollowersResModel?>> getFollowers({
    required int? page,
    required int? userId,
    required bool? myData,
  }) async {
    return await followersRepo.getFollowers(
      page: page,
      userId: userId,
      myData: myData,
    );
  }

  Future<ExecuteGuard<List<FollowerModel>?>> getSuggestedFollowers() async {
    return await followersRepo.getSuggestedFollowers();
  }

  Future<ExecuteGuard<void>> toggleFollower({required int id}) async {
    return await followersRepo.toggleFollower(id: id);
  }
}
