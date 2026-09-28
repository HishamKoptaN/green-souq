import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/followers_repo.dart';
import '../datasources/followers_api.dart';
import '../models/follower_model.dart';
import '../models/followers_res_model.dart';

@LazySingleton(as: FollowersRepo)
class FollowersRepoImpl implements FollowersRepo {
  final FollowersApi followersApi;
  FollowersRepoImpl(this.followersApi);
  @override
  Future<ExecuteGuard<FollowersResModel?>> getFollowers({
    required int? page,
    required int? userId,
    required bool? myData,
  }) async {
    try {
      final res = await followersApi.getFollowers(
        page: page,
        userId: userId,
        myData: myData,
      );
      return .success(data: res);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<List<FollowerModel>?>> getSuggestedFollowers() async {
    try {
      final res = await followersApi.getSuggestedFollowers();
      return .success(data: res);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> toggleFollower({required int id}) async {
    try {
      await followersApi.toggleFolower(id: id);
      return const .success(data: null);
    } catch (error) {
      return .failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
