import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green/features/auth/sign_in/data/factories/auth_strategy_factory.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../../auth/present/bloc/auth_bloc.dart';
import '../../domain/entities/sign_in_req_entity.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';
part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  final AuthStrategyFactory _strategyFactory;
  final AuthBloc authBloc;
  SignInBloc({
    required this.signInUseCases,
    required this.authBloc,
    required this._strategyFactory,
  }) : super(const .loaded(signInReq: SignInReqEntity())) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        dataChanged: (e) async {
          await state.mapOrNull(
            loaded: (loaded) {
              _emitCustomLoaded(
                emit: emit,
                signInReq: e.signInReq,
                loaded: loaded,
              );
            },
          );
        },
        signIn: (e) async {
          await state.mapOrNull(
            loaded: (loaded) async {
              _emitCustomLoaded(
                emit: emit,
                loaded: loaded,
                formzSubmissionStatus: .inProgress,
              );
              await signInUseCases
                  .signIn(
                    signInReq: loaded.signInReq,
                    strategy: _strategyFactory.getStrategy(type: e.type),
                  )
                  .then((result) async {
                    await result.when(
                      success: (data) async {
                        final completer = Completer();
                        authBloc.add(.authToken(onComplete: completer));
                        await completer.future;
                        emit(const .loaded(signInReq: SignInReqEntity()));
                      },
                      failure: (error) {
                        emit(.failure(errorInfo: error));
                        _emitCustomLoaded(emit: emit, loaded: loaded);
                      },
                    );
                  });
            },
          );
        },
      );
    });
  }

  void _emitCustomLoaded({
    required Emitter<SignInState> emit,
    required _Loaded? loaded,
    SignInReqEntity? signInReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    if (loaded != null) {
      emit(
        SignInState.loaded(
          signInReq: signInReq ?? loaded.signInReq,
          formzSubmissionStatus:
              formzSubmissionStatus ??
              (Formz.validate([
                    //   signInReq?.email ?? loaded.signInReq.email,
                    //   signInReq?.password ?? loaded.signInReq.password,
                  ])
                  ? .success
                  : .failure),
        ),
      );
    }
  }
}
