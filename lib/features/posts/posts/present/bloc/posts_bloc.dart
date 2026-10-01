import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../hide/domain/entities/hide_req.dart';
import '../../../reports/domain/entities/report_req.dart';
import '../../data/models/create_post_req_body.dart';
import '../../data/models/share_post_req_body.dart';
import '../../../hide/present/bloc/hide_bloc.dart';
import '../../../reports/present/bloc/reports_bloc.dart';
import '../../data/models/posts_res_model.dart';
import '../../domain/entities/posts_res_entity.dart';
import '../../domain/usecases/posts_use_cases.dart';
part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@lazySingleton
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final ReportBloc reportBloc;
  final HideBloc hideBloc;
  PostsUseCases useCases;
  PostsBloc({
    required this.useCases,
    required this.reportBloc,
    required this.hideBloc,
  }) : super(.loaded()) {
    on<_Watch>((_Watch ev, Emitter<PostsState> emit) async {
      try {
        emit(.loading());
        emit(.loaded());
        await useCases.get(page: 1);
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
      await emit.forEach(
        useCases.watch(),
        onData: (data) {
          return .loaded(postsRes: data);
        },
        onError: (error, _) {
          return .failure(errorInfo: ErrorInfo(message: error.toString()));
        },
      );
    }, transformer: restartable());
    on<_FetchNext>((_FetchNext ev, Emitter<PostsState> emit) async {
      final st = state.mapOrNull(
        loaded: (st) {
          return st;
        },
      );
      try {
        await useCases.get(
          page: (st?.postsRes.meta.currentPage ?? 0) + 1,
        );
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: droppable());
    on<_Refresh>((_Refresh ev, Emitter<PostsState> emit) async {
      try {
        await useCases.get(page: 1);
      } catch (e) {
        emit(.failure(errorInfo: ErrorInfo(message: e.toString())));
      }
    }, transformer: restartable());
    on<PostsEvent>((event, emit) async {
      await event.mapOrNull(
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
            emit(.failure(errorInfo: ErrorHandler.handle(error: e.toString())));
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
