part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.watch({String? type, int? userId}) = _Watch;
  const factory PostsEvent.fetchNext() = _FetchNext;
  const factory PostsEvent.refresh() = _Refresh;
  const factory PostsEvent.updateData({
    required CreatePostReqBody createPostReqBody,
  }) = _UpdateData;
  const factory PostsEvent.createPost() = _CreatePost;
  const factory PostsEvent.draft() = _Draft;
  const factory PostsEvent.sharePost({
    required SharePostReqBody sharePostReqBody,
  }) = _SharePost;
  const factory PostsEvent.report({required ReportReq reportReq}) = _Report;
  const factory PostsEvent.hide({required HideReq hideReq}) = _Hide;
}
