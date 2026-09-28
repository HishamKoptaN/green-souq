import 'package:error_handler/error_handler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/meta.dart';
import '../../domain/usecases/followers_use_cases.dart';
import 'followers_event.dart';
import 'followers_state.dart';

@LazySingleton()
class FollowersBloc extends Bloc<FollowersEvent, FollowersState> {
  FollowersUseCases followersUseCases;

  Meta? meta;
  FollowersBloc({required this.followersUseCases})
    : super(const FollowersState.initial()) {
    on<FollowersEvent>((event, emit) async {
      await event.when(
        //! get Followers
        getFollowers: (userId, myData) async {
          emit(const FollowersState.getFollowersLoading());
          try {
            final res = await followersUseCases.getFollowers(
              page: 1,
              userId: userId,
              myData: myData,
            );
            await res.when(
              success: (res) async {
                meta = res?.meta ?? const Meta();
                emit(
                  FollowersState.followersLoaded(
                    followers: res?.followers ?? [],
                    hasNextPage: res?.meta?.hasNextPage ?? false,
                  ),
                );
              },
              failure: (errorInfo) async {
                emit(.getFollowersFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(
              .getFollowersFailure(errorInfo: ErrorHandler.handle(error: 1)),
            );
          }
        },
        //! get more Followers
        getMoreFollowers: (userId, myData) async {
          try {
            final res = await followersUseCases.getFollowers(
              page: (meta?.currentPage ?? 0) + 1,
              userId: userId,
              myData: myData,
            );
            await res.when(
              success: (res) async {
                meta = res?.meta ?? const Meta();
                state.mapOrNull(
                  followersLoaded: (v) {
                    emit(
                      FollowersState.followersLoaded(
                        followers: [
                          ...v.followers ?? [],
                          ...res?.followers ?? [],
                        ],
                        hasNextPage: res?.meta?.hasNextPage ?? false,
                      ),
                    );
                  },
                );
              },
              failure: (errorInfo) async {
                emit(FollowersState.getFollowersFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(
              FollowersState.getFollowersFailure(
                errorInfo: ErrorHandler.handle(error: 1),
              ),
            );
          }
        },
        getSuggestedFollowers: () async {
          try {
            final res = await followersUseCases.getSuggestedFollowers();
            await res.when(
              success: (res) async {
                //  FollowersSingleTon.instance.setSuggestedData(
                //    suggestedFollowers: res ?? [],
                //  );
                emit(const .initial());
              },
              failure: (errorInfo) async {
                emit(.getFollowersFailure(errorInfo: errorInfo));
              },
            );
          } catch (e) {
            emit(
              .getFollowersFailure(errorInfo: ErrorHandler.handle(error: 1)),
            );
          }
        },
        toggleFolower: (id) async {
          await followersUseCases.toggleFollower(id: id);
          emit(const .success());
        },
      );
    });
  }
}
