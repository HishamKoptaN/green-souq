import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/entities/sign_up_req_entity.dart';
import '../../domain/use_cases/sign_up_use_cases.dart';
part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCases signUpUseCases;

  SignUpBloc({required this.signUpUseCases})
    : super(
        .loaded(signUpReq: SignUpReqEntity(), formzSubmissionStatus: .initial),
      ) {
    on<SignUpEvent>((event, emit) async {
      await event.when(
        signUp: () async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                emitCustomLoaded(
                  emit: emit,
                  state: state,
                  formzSubmissionStatus: .inProgress,
                );
                await signUpUseCases.signUp(signUpReq: state.signUpReq).then((
                  result,
                ) async {
                  await result.when(
                    success: (_) async {
                      emit(const .success());
                    },
                    failure: (ErrorInfo) {
                      emitCustomFailure(emit: emit, ErrorInfo: ErrorInfo);
                      emitCustomLoaded(emit: emit, state: state);
                    },
                  );
                });
              } catch (e) {
                emitCustomFailure(
                  emit: emit,
                  ErrorInfo: ErrorInfo(message: 'خطأ: ${e.toString()}'),
                );
                emitCustomLoaded(emit: emit, state: state);
              }
            },
          );
        },
        dataChanged: (signUpReq) async {
          await state.mapOrNull(
            loaded: (state) async {
              log(signUpReq.toString());
              emitCustomLoaded(
                emit: emit,
                state: state.copyWith(signUpReq: signUpReq),
              );
            },
          );
        },
      );
    });
  }
  void emitCustomLoaded({
    required Emitter<SignUpState> emit,
    required _Loaded state,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    final req = state.signUpReq;
    final isValid =
        Formz.validate([
          req.name ?? const GenericFormInput.pure(),
          req.email ?? const EmailFormInput.pure(),
          req.password ?? const PasswordFormInput.pure(),
          ConfirmPasswordFormInput.dirty(
            value: req.confirmPassword?.value ?? '',
            password: req.password?.value ?? '',
          ),
          GenericCheckboxFormInput.dirty(req.acceptTerms),
        ]) &&
        (req.isValidNumber ?? false);
    emit(
      state.copyWith(
        formzSubmissionStatus:
            formzSubmissionStatus ?? (isValid ? .success : .failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<SignUpState> emit,
    required ErrorInfo ErrorInfo,
  }) {
    return emit(.failure(error: ErrorInfo.message));
  }
}
