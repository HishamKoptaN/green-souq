import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/edited_profile_entity.dart';
import '../../domain/entities/profile_state_entity.dart';
import '../../domain/use_cases/profile_use_cases.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCases _profileUseCases;
  ProfileBloc(this._profileUseCases) : super(const .loading()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        getProfile: (ev) async {
          final res = await _profileUseCases.getProfile();
          await res.when(
            success: (res) {
              emit(
                .loaded(
                  profileState: ProfileStateEntity(
                    profile: res!,
                    editedProfile: null,
                  ),
                  formzSubmissionStatus: .initial,
                ),
              );
            },
            failure: (error) {
              emit(.failure(error: error.message));
            },
          );
        },
        dataChanged: (ev) async {
          await state.mapOrNull(
            loaded: (st) {
              emitCustomLoaded(
                emit: emit,
                state: st.copyWith(
                  profileState: st.profileState.copyWith(
                    editedProfile: ev.editedProfile,
                  ),
                ),
              );
            },
          );
        },
        updateProfile: (ev) async {
          await state.mapOrNull(
            loaded: (st) async {
              emitCustomLoaded(
                emit: emit,
                state: st,
                formzSubmissionStatus: .inProgress,
              );
              await _profileUseCases
                  .updateProfile(
                    editableProfile:
                        st.profileState.editedProfile ?? EditedProfileEntity(),
                  )
                  .then((res) async {
                    await res.when(
                      success: (profile) async {
                        emit(const .success());
                        emitCustomLoaded(
                          emit: emit,
                          state: st.copyWith(
                            profileState: st.profileState.copyWith(
                              profile: profile!,
                            ),
                          ),
                        );
                      },
                      failure: (error) {
                        emit(.failure(error: error.message));
                        emitCustomLoaded(emit: emit, state: st);
                      },
                    );
                  });
            },
          );
        },
      );
    });
    add(const .getProfile());
  }
  void emitCustomLoaded({
    required Emitter<ProfileState> emit,
    required _Loaded state,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    final nameInput = state.profileState.editedProfile?.name;
    final isNameValid = nameInput == null || Formz.validate([nameInput]);

    emit(
      state.copyWith(
        formzSubmissionStatus:
            formzSubmissionStatus ??
            (isNameValid && (state.profileState.isChanged)
                ? .success
                : .failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<ProfileState> emit,
    required ErrorInfo errorInfo,
  }) {
    return emit(.failure(error: errorInfo.message));
  }
}
