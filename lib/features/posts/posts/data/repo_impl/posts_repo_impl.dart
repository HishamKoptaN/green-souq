import 'package:error_handler/error_handler.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/enums/post_type.dart';
import '../../domain/repo/posts_repo.dart';
import '../datasources/posts_api.dart';
import '../models/create_post_req_body.dart';
import '../../data/models/posts_res_model.dart';
import '../models/share_post_req_body.dart';
import '../models/toggle_like_req_body.dart';

@Injectable(as: PostsRepo)
class PostsRepoImpl implements PostsRepo {
  final PostsApi postsApi;
  PostsRepoImpl({required this.postsApi});
  @override
  Future<ExecuteGuard<PostsResModel?>> getPosts({
    required int? page,
    required List<PostType>? postTypes,
    required int? userId,
    required bool? myData,
    required bool? scheduled,
  }) async {
    try {
      final res = await postsApi.getPosts(
        page: page,
        postTypes: postTypes?.map((e) => e.name).toList(),
        userId: userId,
        myData: myData,
        scheduled: scheduled,
      );
      return ExecuteGuard.success(data: res);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<Post?>> createPost({
    required CreatePostReqBody createPostReqBody,
  }) async {
    try {
      final formData = await createPostReqBody.toFormData();
      final res = await postsApi.createPost(formData: formData);
      return ExecuteGuard.success(data: res);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<Postable?>> createDraftPost({
    required CreatePostReqBody createPostReqBody,
  }) async {
    try {
      final formData = await createPostReqBody.toFormData();
      final res = await postsApi.createDraftPost(formData: formData);
      return ExecuteGuard.success(data: res);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<Post?>> sharePost({
    required SharePostReqBody sharePostReqBody,
  }) async {
    try {
      final res = await postsApi.sharePost(sharePostReqBody: sharePostReqBody);
      return ExecuteGuard.success(data: res);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> toggleLike({
    required ToggleLikeReqBody toggleLikeReqBody,
  }) async {
    try {
      await postsApi.toggleLike(toggleLikeReqBody: toggleLikeReqBody);
      return const ExecuteGuard.success(data: null);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> deletePost({required int id}) async {
    try {
      await postsApi.deletePost(id: id);
      return const ExecuteGuard.success(data: null);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }

  @override
  Future<ExecuteGuard<void>> vote({required int id}) async {
    try {
      await postsApi.vote(id: id);
      return const ExecuteGuard.success(data: null);
    } catch (error) {
      return ExecuteGuard.failure(errorInfo: ErrorHandler.handle(error: error));
    }
  }
}
