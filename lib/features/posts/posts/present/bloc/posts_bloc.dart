import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:error_handler/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../hide/domain/entities/hide_req.dart';
import '../../../reports/domain/entities/report_req.dart';

import 'package:green/core/enums/post_type.dart';

import '../../data/models/create_post_body.dart';
import '../../data/models/share_post_req_body.dart';
import '../../../hide/present/bloc/hide_bloc.dart';
import '../../../reports/present/bloc/reports_bloc.dart';
import '../../data/models/posts_res_model.dart';
import '../../domain/entities/create_post_entity.dart';
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
        await useCases.get(page: (st?.postsRes.meta.currentPage ?? 0) + 1);
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
          final st = state.mapOrNull(loaded: (s) => s);
          if (st == null) return;
          try {
            emit(st.copyWith(isCreatePostLoading: true));
            final reqBody = CreatePostModel(
              type: PostType.social,
              content: st.createPost.content,
            );
            final res = await useCases.createPost(
              createPostReqBody: reqBody,
              mediaFiles: st.createPost.mediaFiles,
            );
            res.when(
              success: (newPost) {
                emit(
                  const .success(
                    create: true,
                    share: false,
                    scheduled: false,
                    draft: false,
                  ),
                );
                _emitCustomLoaded(
                  emit: emit,
                  loaded: st.copyWith(
                    isCreatePostLoading: false,
                    createPost: const CreatePostEntity(),
                  ),
                );
              },
              failure: (errorInfo) {
                emit(st.copyWith(isCreatePostLoading: false));
                emit(PostsState.failure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(st.copyWith(isCreatePostLoading: false));
            emit(
              PostsState.failure(
                errorInfo: ErrorHandler.handle(error: e.toString()),
              ),
            );
          }
        },
        updateData: (ev) {
          state.mapOrNull(
            loaded: (st) {
              final updatedSt = st.copyWith(createPost: ev.createPost);
              _emitCustomLoaded(emit: emit, loaded: updatedSt);
            },
          );
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

  bool _validatePost(CreatePostEntity createPost) {
    final hasContent =
        createPost.content != null && createPost.content!.trim().isNotEmpty;
    final hasMedia =
        createPost.mediaFiles != null && createPost.mediaFiles!.isNotEmpty;
    return hasContent || hasMedia;
  }

  void _emitCustomLoaded({
    required Emitter<PostsState> emit,
    required _Loaded? loaded,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    if (loaded != null) {
      final isValid = _validatePost(loaded.createPost);
      emit(
        loaded.copyWith(
          formzSubmissionStatus:
              formzSubmissionStatus ??
              (isValid
                  ? FormzSubmissionStatus.success
                  : FormzSubmissionStatus.initial),
        ),
      );
    }
  }

  void emitCustomLoaded({required Emitter<PostsState> emit}) {
    final st = state.mapOrNull(loaded: (s) => s);
    if (st != null) {
      _emitCustomLoaded(emit: emit, loaded: st);
    } else {
      return emit(const .loaded());
    }
  }

  void emitFaliure({
    required Emitter<PostsState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(.failure(errorInfo: errorInfo));
  }
}
