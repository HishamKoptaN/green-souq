import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../../auth/sign_up/domain/entities/sign_up_req_entity.dart';
import '../../domain/entities/editable_profile_entity.dart';
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
          emit(const .loading());
          final res = await _profileUseCases.getProfile();
          await res.when(
            success: (editableProfileReq) {
              emit(
                .loaded(
                  editableProfileReq: editableProfileReq!,
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
            loaded: (state) {
              emitCustomLoaded(
                emit: emit,
                state: state.copyWith(
                  editableProfileReq: ev.editableProfileReq,
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
                  .updateProfile(editableProfile: st.editableProfileReq)
                  .then((res) async {
                    await res.when(
                      success: (editableProfileReq) async {
                        final NetworkImage provider = NetworkImage(
                          editableProfileReq?.avatarPath ?? '',
                        );
                        await provider.evict();
                        emit(const .success());
                        emitCustomLoaded(
                          emit: emit,
                          state: st.copyWith(
                            editableProfileReq:
                                editableProfileReq ?? st.editableProfileReq,
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
    emit(
      state.copyWith(
        formzSubmissionStatus:
            formzSubmissionStatus ??
            ((Formz.validate([
                      state.editableProfileReq.name ??
                          const GenericFormInput.pure(),
                    ])) &&
                    state.editableProfileReq.isChanged
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
