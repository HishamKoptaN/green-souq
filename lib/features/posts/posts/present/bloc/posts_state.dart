import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/posts_res_model.dart';
import '../../data/models/create_post_req_body.dart';
import '../../data/models/scheduled_date_time.dart';
part 'posts_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;
  const factory PostsState.postsLoading() = _PostsLoading;
  const factory PostsState.createPostLoading() = _CreatePostLoading;
  const factory PostsState.contentUpdated({
    required CreatePostReqBody createPostReqBody,
  }) = _ContentUpdated;
  const factory PostsState.success({
    required bool? create,
    required bool? share,
    required bool? scheduled,
    required bool? draft,
  }) = _Success;
  const factory PostsState.getPostsFailure({required ErrorInfo errorInfo}) =
      _GetPostsFailure;
  const factory PostsState.existedDraft() = _ExistedDraft;
  const factory PostsState.loaded({
    required List<Post>? posts,
    required List<Post>? scheduledPosts,
    required bool? hasNextPage,
    required CreatePostReqBody? createPostReqBody,
    required String? videoPath,
    required ScheduledDateTime? scheduledDateTime,
    required bool? isCreatePostLoading,
    required bool? hasDraft,
  }) = _Loaded;
  const factory PostsState.createPostFailure({required ErrorInfo errorInfo}) =
      _CreatePostFailure;
  const factory PostsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
