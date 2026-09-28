import 'dart:developer';

import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/enums/post_type.dart';
import '../../../../../core/models/meta.dart';
import '../../../../../core/utils/global_variable.dart';
import '../../../../../main.dart';
import '../../../hide/present/bloc/hide_bloc.dart';
import '../../../hide/present/bloc/hide_event.dart';
import '../../../reports/present/bloc/reports_bloc.dart';
import '../../../reports/present/bloc/reports_event.dart';
import '../../data/models/posts_res_model.dart';
import '../../data/models/create_post_req_body.dart';
import '../../data/models/scheduled_date_time.dart';
import '../../domain/usecases/posts_use_cases.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'posts_event.dart';
import 'posts_state.dart';

@lazySingleton
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final ReportBloc reportBloc;
  final HideBloc hideBloc;
  PostsUseCases postsUseCases;
  Meta? meta;
  List<Post>? allPosts = [];
  List<Post>? scheduledPosts = [];
  CreatePostReqBody createPostReqBody = const CreatePostReqBody();
  ScheduledDateTime scheduledDateTime = const ScheduledDateTime();
  String? videoPath;
  Postable? draftPost;
  bool? isCreatePostLoading;
  PostsBloc({
    required this.postsUseCases,
    required this.reportBloc,
    required this.hideBloc,
  }) : super(const .initial()) {
    on<PostsEvent>(transformer: droppable(), (event, emit) async {
      await event.when(
        //! get Posts
        getPosts: (postTypes, userId, myData) async {
          resetData();
          emit(const .postsLoading());
          try {
            final res = await postsUseCases.getPosts(
              page: 1,
              postTypes: postTypes!,
              userId: userId,
              myData: myData,
              scheduled: null,
            );
            await res.when(
              success: (res) async {
                meta = res?.posts?.meta ?? const Meta();
                allPosts = res?.posts?.posts ?? [];
                draftPost = res?.draftPost;
                emit(
                  PostsState.loaded(
                    posts: allPosts ?? [],
                    hasNextPage: meta?.hasNextPage ?? false,
                    scheduledPosts: [],
                    createPostReqBody: createPostReqBody,
                    videoPath: null,
                    scheduledDateTime: scheduledDateTime,
                    isCreatePostLoading: false,
                    hasDraft: draftPost != null,
                  ),
                );
              },
              failure: (ErrorInfo) async {
                emit(PostsState.getPostsFailure(errorInfo: ErrorInfo));
              },
            );
          } catch (e) {
            emit(
              PostsState.getPostsFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        //! get getScheduledPosts
        getScheduledPosts: () async {
          try {
            final res = await postsUseCases.getPosts(
              page: 1,
              postTypes: [],
              userId: null,
              myData: null,
              scheduled: true,
            );
            await res.when(
              success: (res) async {
                scheduledPosts = res?.posts?.posts ?? [];
                isCreatePostLoading = false;
                emitCustomLoaded(emit: emit);
              },
              failure: (errorInfo) async {
                emit(
                  .getPostsFailure(
                    errorInfo: ErrorHandler.handle(error: errorInfo.message),
                  ),
                );
                emit(
                  PostsState.loaded(
                    posts: allPosts,
                    scheduledPosts: scheduledPosts,
                    hasNextPage: meta?.hasNextPage ?? false,
                    createPostReqBody: createPostReqBody,
                    videoPath: videoPath,
                    scheduledDateTime: scheduledDateTime,
                    isCreatePostLoading: false,
                    hasDraft: draftPost != null,
                  ),
                );
              },
            );
          } catch (e) {
            emit(
              PostsState.getPostsFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        //! getMore Posts
        getMore: (postTypes, userId, myData) async {
          try {
            final res = await postsUseCases.getPosts(
              page: (meta?.currentPage ?? 0) + 1,
              postTypes: postTypes!,
              userId: userId,
              myData: myData,
              scheduled: null,
            );
            await res.when(
              success: (res) async {
                meta = res?.posts?.meta ?? const Meta();
                allPosts = [...allPosts ?? [], ...res?.posts?.posts ?? []];
                emitCustomLoaded(emit: emit);
              },
              failure: (errorInfo) async {
                emit(PostsState.getPostsFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(
              PostsState.getPostsFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        //! createPost
        createPost: (postType, createPost, scheduled, draft) async {
          try {
            isCreatePostLoading = true;
            emitCustomLoaded(emit: emit);
            final res = await postsUseCases.createPost(
              createPostReqBody: createPostReqBody.copyWith(
                type: postType,
                publishAt: scheduled == true
                    ? scheduledDateTime.formattedDateTimeForDatabase
                    : null,
              ),
            );
            await res.when(
              success: (newPost) async {
                switch (postType ?? "") {
                  case PostType.social_post:
                  case PostType.occasion:
                  case PostType.poll:
                  case PostType.company_post:
                  case PostType.news:
                  case PostType.servReq:
                    if (newPost != null &&
                        (scheduled == null || scheduled == false)) {
                      allPosts = [newPost, ...allPosts ?? []];
                    }
                    break;
                  case PostType.shared_post:
                  case PostType.scheduled:
                    break;
                  default:
                    break;
                }
                if (postType == PostType.shared_post) {
                  final postToUpdate = allPosts?.firstWhere(
                    (post) => post.id == createPostReqBody.postId,
                    orElse: () => const Post(),
                  );
                  if (postToUpdate != null) {
                    final updatedPost = postToUpdate.copyWith(
                      sharesCount: postToUpdate.sharesCount! + 1,
                    );
                    final index = allPosts!.indexOf(postToUpdate);
                    if (index != -1) {
                      allPosts![index] = updatedPost;
                    }
                  }
                }
                resetData();
                isCreatePostLoading = false;
                emit(
                  PostsState.success(
                    create: newPost?.publishAt == null ? true : false,
                    share: newPost?.type == PostType.shared_post.name
                        ? true
                        : false,
                    scheduled: scheduled,
                    draft: draft,
                  ),
                );
                emitCustomLoaded(emit: emit);
              },
              failure: (errorInfo) async {
                isCreatePostLoading = false;
                emit(PostsState.createPostFailure(errorInfo: errorInfo));
                emitCustomLoaded(emit: emit);
              },
            );
          } catch (e) {
            isCreatePostLoading = false;
            emit(
              PostsState.createPostFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
            emitCustomLoaded(emit: emit);
          }
        },
        //! toggleLike
        toggleLike: (toggleLikeReqBody) async {
          Post? postToUpdate = allPosts?.firstWhere(
            (post) => post.id == toggleLikeReqBody.likeableId,
            orElse: () => const Post(),
          );
          final updatedPost = postToUpdate?.copyWith(
            isLike: postToUpdate.isLike,
            likesCount: postToUpdate.isLike!
                ? postToUpdate.likesCount! - 1
                : postToUpdate.likesCount! + 1,
          );
          allPosts?[allPosts!.indexOf(postToUpdate!)] = updatedPost!;
          emitCustomLoaded(emit: emit);
          await postsUseCases.toggleLike(toggleLikeReqBody: toggleLikeReqBody);
        },
        //! updateData
        updateData: (createPostReqBody, scheduledDateTime, videoPath) {
          if (createPostReqBody != null) {
            this.createPostReqBody = createPostReqBody;
          } else if (scheduledDateTime != null) {
            this.scheduledDateTime = scheduledDateTime;
          } else if (videoPath != null) {
            this.videoPath = videoPath;
          }
          emitCustomLoaded(emit: emit);
        },
        //! sharePost
        sharePost: (sharePost) async {
          try {
            final res = await postsUseCases.createPost(
              createPostReqBody: createPostReqBody.copyWith(
                type: PostType.shared_post,
              ),
            );
            await res.when(
              success: (res) async {
                allPosts = [res ?? const Post(), ...allPosts ?? []];
                emit(
                  const PostsState.success(
                    create: false,
                    share: true,
                    scheduled: false,
                    draft: false,
                  ),
                );
                emitCustomLoaded(emit: emit);
              },
              failure: (errorInfo) async {
                emit(PostsState.createPostFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(
              PostsState.createPostFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        //! draft
        draft: () async {
          try {
            final isEmptyContent =
                (createPostReqBody.content == null ||
                    createPostReqBody.content!.trim().isEmpty) &&
                createPostReqBody.image == null &&
                createPostReqBody.video == null &&
                createPostReqBody.pdf == null;
            //! الحالة 1: لا يوجد مسودة
            if (draftPost == null && isEmptyContent) {
              log("الحالة 1: لا يوجد مسود");
              await showDialog<bool>(
                context: GlobalVariable.navState.currentContext!,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('لا يوجد'),
                    content: const Text('لا توجد مسودة محفوظة.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('حسناً'),
                      ),
                    ],
                  );
                },
              );
            }
            //! الحالة 2: توجد مسودة والحقول فارغة → تحميل المسودة
            else if (isEmptyContent) {
              log("الحالة 2: توجد مسودة والحقول فارغة → تحميل المسودة");
              createPostReqBody = createPostReqBody.copyWith(
                content: draftPost?.content ?? '',
                image: null,
                imageUrl: draftPost?.image,
                video: null,
                videoUrl: draftPost?.video,
                pdf: null,
                pdfUrl: draftPost?.pdf,
              );
              emitCustomLoaded(emit: emit);
            } else if (draftPost == null && !isEmptyContent) {
              isCreatePostLoading = true;
              emitCustomLoaded(emit: emit);
              final res = await postsUseCases.createDraftPost(
                createPostReqBody: createPostReqBody.copyWith(
                  type: PostType.draft,
                ),
              );
              await res.when(
                success: (newDraftPost) async {
                  draftPost = newDraftPost;
                  resetData();
                  emit(
                    const PostsState.success(
                      create: false,
                      share: false,
                      scheduled: false,
                      draft: true,
                    ),
                  );
                  isCreatePostLoading = false;
                  emitCustomLoaded(emit: emit);
                },
                failure: (ErrorInfo) {
                  isCreatePostLoading = false;
                  emitCustomLoaded(emit: emit);
                },
              );
            }
            //! الحالة 3: توجد مسودة والحقول غير فارغة → تأكيد استبدال
            else {
              log("الحالة 3: توجد مسودة والحقول غير فارغة → تأكيد استبدال");
              final shouldReplace = await showDialog<bool>(
                context: GlobalVariable.currentContext!,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('استبدال المسودة'),
                    content: const Text(
                      'هناك مسودة محفوظة بالفعل، هل ترغب في استبدالها؟',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('لا'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('نعم'),
                      ),
                    ],
                  );
                },
              );
              if (shouldReplace == true) {
                isCreatePostLoading = true;
                emitCustomLoaded(emit: emit);
                final res = await postsUseCases.createDraftPost(
                  createPostReqBody: createPostReqBody.copyWith(type: .draft),
                );
                await res.when(
                  success: (newDraftPost) async {
                    draftPost = newDraftPost;
                    resetData();
                    emit(
                      const .success(
                        create: false,
                        share: false,
                        scheduled: false,
                        draft: true,
                      ),
                    );
                    isCreatePostLoading = false;
                    emitCustomLoaded(emit: emit);
                  },
                  failure: (errorInfo) {
                    isCreatePostLoading = false;
                    emitCustomLoaded(emit: emit);
                  },
                );
              }
            }
          } catch (e) {
            emit(.createPostFailure(errorInfo: ErrorHandler.handle(error: e)));
            isCreatePostLoading = false;
            emitCustomLoaded(emit: emit);
          }
        },
        cancelSchedule: () async {
          scheduledDateTime = ScheduledDateTime.empty();
          emitCustomLoaded(emit: emit);
        },
        deletePost: (id) async {
          try {
            final updatedAllPosts = List<Post>.from(allPosts ?? []);
            final updatedScheduledPosts = List<Post>.from(scheduledPosts ?? []);
            updatedAllPosts.removeWhere((post) => post.id == id);
            updatedScheduledPosts.removeWhere((post) => post.id == id);
            allPosts = updatedAllPosts;
            scheduledPosts = updatedScheduledPosts;
            emitCustomLoaded(emit: emit);
            postsUseCases.deletePost(id: id);
          } catch (e) {
            emit(.createPostFailure(errorInfo: ErrorHandler.handle(error: e)));
          }
        },
        increasePostCmntsCount: (id) {
          Post? postToUpdate = allPosts?.firstWhere(
            (post) => post.id == id,
            orElse: () => const Post(),
          );
          final updatedPost = postToUpdate?.copyWith(
            isLike: postToUpdate.isLike,
            cmntsCount: postToUpdate.cmntsCount ?? 0 + 1,
          );
          allPosts?[allPosts!.indexOf(postToUpdate!)] = updatedPost!;
          emitCustomLoaded(emit: emit);
        },
        vote: (optionId, postId) async {
          allPosts = allPosts!.map((post) {
            if (post.id == postId) {
              final previousSelectedId = post.postable!.selectedOption;
              final updatedOptions = post.postable?.options?.map((option) {
                if (option.id == optionId) {
                  return option.copyWith(
                    votesCount: (option.votesCount ?? 0) + 1,
                  );
                } else if (option.id == previousSelectedId) {
                  return option.copyWith(
                    votesCount: (option.votesCount ?? 1) - 1,
                  );
                }
                return option;
              }).toList();
              return post.copyWith(
                postable: post.postable?.copyWith(
                  options: updatedOptions,
                  selectedOption: optionId,
                ),
              );
            }
            return post;
          }).toList();
          emitCustomLoaded(emit: emit);
          await postsUseCases.vote(id: optionId);
        },
        report: (reportReq) async {
          final updatedAllPosts = List<Post>.from(allPosts ?? []);
          updatedAllPosts.removeWhere((post) => post.id == reportReq.id);
          allPosts = updatedAllPosts;
          emitCustomLoaded(emit: emit);
          reportBloc.add(.report(reportReq: reportReq));
        },
        hide: (hideReq) async {
          final updatedAllPosts = List<Post>.from(allPosts ?? []);
          updatedAllPosts.removeWhere((post) {
            return post.id == hideReq.id;
          });
          allPosts = updatedAllPosts;
          emitCustomLoaded(emit: emit);
          hideBloc.add(.hide(hideReq: hideReq));
        },
      );
    });
  }
  void resetData() {
    createPostReqBody = .empty();
    scheduledDateTime = .empty();
  }

  void emitCustomLoaded({required Emitter<PostsState> emit}) {
    return emit(
      PostsState.loaded(
        posts: allPosts ?? [],
        hasNextPage: meta?.hasNextPage ?? false,
        scheduledPosts: scheduledPosts,
        createPostReqBody: createPostReqBody,
        videoPath: videoPath,
        scheduledDateTime: scheduledDateTime,
        isCreatePostLoading: isCreatePostLoading ?? false,
        hasDraft: draftPost != null,
      ),
    );
  }

  void emitFaliure({
    required Emitter<PostsState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(.failure(errorInfo: errorInfo));
  }
}
