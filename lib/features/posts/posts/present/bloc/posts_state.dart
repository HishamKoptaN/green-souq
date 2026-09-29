part of 'posts_bloc.dart';

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
    @Default(PostsResEntity()) PostsResEntity posts,
    @Default(CreatePostReqBody()) CreatePostReqBody createPostReqBody,
    String? videoPath,
    @Default(false) bool isCreatePostLoading,
    @Default(false) bool hasDraft,
    Postable? draftPost,
  }) = _Loaded;
  const factory PostsState.createPostFailure({required ErrorInfo errorInfo}) =
      _CreatePostFailure;
  const factory PostsState.failure({required ErrorInfo errorInfo}) = _Failure;
}
