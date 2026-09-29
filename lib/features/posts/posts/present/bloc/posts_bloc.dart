import 'dart:developer';

import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/post_type.dart';
import '../../../hide/domain/entities/hide_req.dart';
import '../../../reports/domain/entities/report_req.dart';
import '../../data/models/create_post_req_body.dart';
import '../../data/models/share_post_req_body.dart';
import '../../data/models/toggle_like_req_body.dart';
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
import '../../domain/entities/posts_res_entity.dart';
import '../../domain/usecases/posts_use_cases.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';
part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@lazySingleton
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final ReportBloc reportBloc;
  final HideBloc hideBloc;
  PostsUseCases postsUseCases;

  PostsBloc({
    required this.postsUseCases,
    required this.reportBloc,
    required this.hideBloc,
  }) : super(.loaded()) {
    on<PostsEvent>(transformer: droppable(), (event, emit) async {
      await event.map(
        getPosts: (ev) async {
          emit(const .postsLoading());
          try {
            final res = await postsUseCases.getPosts(page: 1, scheduled: null);
            await res.when(
              success: (res) async {
                emit(
                  .loaded(
                    // posts: res?.posts ?? PostsResEntity(),
                    // createPostReqBody: createPostReqBody,
                    videoPath: null,
                    isCreatePostLoading: false,
                    // hasDraft: draftPost != null,
                  ),
                );
              },
              failure: (errorInfo) async {
                emit(.getPostsFailure(errorInfo: errorInfo));
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
        createPost: (ev) async {
          //try {
          //  emitCustomLoaded(emit: emit);
          //  final res = await postsUseCases.createPost(
          //    createPostReqBody: createPostReqBody.copyWith(),
          //  );
          //  await res.when(
          //    success: (newPost) async {
          //      switch (createPostReqBody.type) {
          //        case .post:
          //        case .occasion:
          //        case .poll:
          //        case .sharedPost:
          //          break;
          //        default:
          //          break;
          //      }
          // if (ev.postType == .shared_post) {
          //   final postToUpdate = allPosts?.firstWhere(
          //     (post) => post.id == createPostReqBody.postId,
          //     orElse: () => const Post(),
          //   );
          //   if (postToUpdate != null) {
          //     final updatedPost = postToUpdate.copyWith(
          //       sharesCount: postToUpdate.sharesCount! + 1,
          //     );
          //     final index = allPosts!.indexOf(postToUpdate);
          //     if (index != -1) {
          //       allPosts![index] = updatedPost;
          //     }
          //   }
          // }
          //emit(
          //  .success(
          //    create: newPost?.publishAt == null ? true : false,
          //    share: newPost?.type == PostType.shared_post.name
          //        ? true
          //        : false,
          //    scheduled: scheduled,
          //    draft: draft,
          //  ),
          //);
          //      emitCustomLoaded(emit: emit);
          //      },
          //      failure: (errorInfo) async {
          //        emit(.createPostFailure(errorInfo: errorInfo));
          //        emitCustomLoaded(emit: emit);
          //      },
          //    );
          //  } catch (e) {
          //    emit(
          //      .createPostFailure(
          //        errorInfo: ErrorHandler.handle(error: e.toString()),
          //      ),
          //    );
          //    emitCustomLoaded(emit: emit);
          //  }
        },
        //! toggleLike
        toggleLike: (toggleLikeReqBody) async {
          // Post? postToUpdate = allPosts?.firstWhere(
          //   (post) => post.id == toggleLikeReqBody.likeableId,
          //   orElse: () => const Post(),
          // );
          // final updatedPost = postToUpdate?.copyWith(
          //   isLike: postToUpdate.isLike,
          //   likesCount: postToUpdate.isLike!
          //       ? postToUpdate.likesCount! - 1
          //       : postToUpdate.likesCount! + 1,
          // );
          // allPosts?[allPosts!.indexOf(postToUpdate!)] = updatedPost!;
          // emitCustomLoaded(emit: emit);
          // await postsUseCases.toggleLike(toggleLikeReqBody: toggleLikeReqBody);
        },
        //! updateData
        updateData: (ev) {
          emitCustomLoaded(emit: emit);
        },
        //! sharePost
        sharePost: (sharePost) async {
          try {
            //final res = await postsUseCases.createPost(
            //  createPostReqBody: createPostReqBody.copyWith(type: .sharedPost),
            //);
            //await res.when(
            //  success: (res) async {
            //    emit(
            //      const .success(
            //        create: false,
            //        share: true,
            //        scheduled: false,
            //        draft: false,
            //      ),
            //    );
            //    emitCustomLoaded(emit: emit);
            //  },
            //  failure: (errorInfo) async {
            //    emit(.createPostFailure(errorInfo: errorInfo));
            //  },
            //);
          } catch (e) {
            emit(
              .createPostFailure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        draft: (ev) async {
          //try {
          //  final isEmptyContent =
          //      (createPostReqBody.content == null ||
          //          createPostReqBody.content!.trim().isEmpty) &&
          //      createPostReqBody.image == null &&
          //      createPostReqBody.video == null &&
          //      createPostReqBody.pdf == null;
          //  //! الحالة 1: لا يوجد مسودة
          //  if (draftPost == null && isEmptyContent) {
          //    log("الحالة 1: لا يوجد مسود");
          //    await showDialog<bool>(
          //      context: GlobalVariable.navState.currentContext!,
          //      builder: (context) {
          //        return AlertDialog(
          //          title: const Text('لا يوجد'),
          //          content: const Text('لا توجد مسودة محفوظة.'),
          //          actions: [
          //            TextButton(
          //              onPressed: () => Navigator.of(context).pop(),
          //              child: const Text('حسناً'),
          //            ),
          //          ],
          //        );
          //      },
          //    );
          //  }
          //  //! الحالة 2: توجد مسودة والحقول فارغة → تحميل المسودة
          //  else if (isEmptyContent) {
          //    log("الحالة 2: توجد مسودة والحقول فارغة → تحميل المسودة");
          //    createPostReqBody = createPostReqBody.copyWith(
          //      content: draftPost?.content ?? '',
          //      image: null,
          //      imageUrl: draftPost?.image,
          //      video: null,
          //      videoUrl: draftPost?.video,
          //      pdf: null,
          //      pdfUrl: draftPost?.pdf,
          //    );
          //    emitCustomLoaded(emit: emit);
          //  } else if (draftPost == null && !isEmptyContent) {
          //    isCreatePostLoading = true;
          //    emitCustomLoaded(emit: emit);
          //    final res = await postsUseCases.createDraftPost(
          //      createPostReqBody: createPostReqBody.copyWith(
          //        type: PostType.draft,
          //      ),
          //    );
          //    await res.when(
          //      success: (newDraftPost) async {
          //        draftPost = newDraftPost;
          //        resetData();
          //        emit(
          //          const PostsState.success(
          //            create: false,
          //            share: false,
          //            scheduled: false,
          //            draft: true,
          //          ),
          //        );
          //        isCreatePostLoading = false;
          //        emitCustomLoaded(emit: emit);
          //      },
          //      failure: (ErrorInfo) {
          //        isCreatePostLoading = false;
          //        emitCustomLoaded(emit: emit);
          //      },
          //    );
          //  }
          //  //! الحالة 3: توجد مسودة والحقول غير فارغة → تأكيد استبدال
          //  else {
          //    log("الحالة 3: توجد مسودة والحقول غير فارغة → تأكيد استبدال");
          //    final shouldReplace = await showDialog<bool>(
          //      context: GlobalVariable.currentContext!,
          //      builder: (context) {
          //        return AlertDialog(
          //          title: const Text('استبدال المسودة'),
          //          content: const Text(
          //            'هناك مسودة محفوظة بالفعل، هل ترغب في استبدالها؟',
          //          ),
          //          actions: [
          //            TextButton(
          //              onPressed: () => Navigator.of(context).pop(false),
          //              child: const Text('لا'),
          //            ),
          //            TextButton(
          //              onPressed: () {
          //                Navigator.of(context).pop(true);
          //              },
          //              child: const Text('نعم'),
          //            ),
          //          ],
          //        );
          //      },
          //    );
          //    if (shouldReplace == true) {
          //      isCreatePostLoading = true;
          //      emitCustomLoaded(emit: emit);
          //      final res = await postsUseCases.createDraftPost(
          //        createPostReqBody: createPostReqBody.copyWith(type: .draft),
          //      );
          //      await res.when(
          //        success: (newDraftPost) async {
          //          draftPost = newDraftPost;
          //          resetData();
          //          emit(
          //            const .success(
          //              create: false,
          //              share: false,
          //              scheduled: false,
          //              draft: true,
          //            ),
          //          );
          //          isCreatePostLoading = false;
          //          emitCustomLoaded(emit: emit);
          //        },
          //        failure: (errorInfo) {
          //          isCreatePostLoading = false;
          //          emitCustomLoaded(emit: emit);
          //        },
          //      );
          //    }
          //  }
          //} catch (e) {
          //  emit(.createPostFailure(errorInfo: ErrorHandler.handle(error: e)));
          //  isCreatePostLoading = false;
          //  emitCustomLoaded(emit: emit);
          //}
        },
        // deletePost: (id) async {
        //try {
        //  final updatedAllPosts = List<Post>.from(allPosts ?? []);
        //  final updatedScheduledPosts = List<Post>.from(scheduledPosts ?? []);
        //  updatedAllPosts.removeWhere((post) => post.id == id);
        //  updatedScheduledPosts.removeWhere((post) => post.id == id);
        //  allPosts = updatedAllPosts;
        //  scheduledPosts = updatedScheduledPosts;
        //  emitCustomLoaded(emit: emit);
        //  // postsUseCases.deletePost(id: id);
        //} catch (e) {
        //  emit(.createPostFailure(errorInfo: ErrorHandler.handle(error: e)));
        //}
        // },
        increasePostCmntsCount: (id) {
          //Post? postToUpdate = allPosts?.firstWhere(
          //  (post) => post.id == id,
          //  orElse: () => const Post(),
          //);
          //final updatedPost = postToUpdate?.copyWith(
          //  isLike: postToUpdate.isLike,
          //  cmntsCount: postToUpdate.cmntsCount ?? 0 + 1,
          //);
          //allPosts?[allPosts!.indexOf(postToUpdate!)] = updatedPost!;
          //emitCustomLoaded(emit: emit);
        },
        report: (reportReq) async {
          //   final updatedAllPosts = List<Post>.from(allPosts ?? []);
          //   updatedAllPosts.removeWhere((post) => post.id == reportReq.id);
          //   allPosts = updatedAllPosts;
          //   emitCustomLoaded(emit: emit);
          //   reportBloc.add(.report(reportReq: reportReq));
        },
        hide: (hideReq) async {
          // final updatedAllPosts = List<Post>.from(allPosts ?? []);
          // updatedAllPosts.removeWhere((post) {
          //   return post.id == hideReq.id;
          // });
          // allPosts = updatedAllPosts;
          // emitCustomLoaded(emit: emit);
          // hideBloc.add(.hide(hideReq: hideReq));
        },
      );
    });
  }

  void emitCustomLoaded({required Emitter<PostsState> emit}) {
    return emit(.loaded());
  }

  void emitFaliure({
    required Emitter<PostsState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(.failure(errorInfo: errorInfo));
  }
}
