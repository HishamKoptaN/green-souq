import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';

import '../../domain/usecases/auth_use_casees.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCases authUseCases;
  StreamSubscription<User?>? _authStateSubscription;
  bool _skipInitialAuthState = true;

  AuthBloc({required this.authUseCases}) : super(const .loading()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        check: (completer) async {
          await authUseCases.check().then((res) async {
            await res.when(
              success: (_) {
                emit(const .authenticated());
              },
              failure: (e) {
                emit(const .unauthenticated());
              },
            );
          });
          completer?.complete();
        },
        authToken: (completer) async {
          await authUseCases.authToken().then((result) async {
            await result.when(
              success: (v) {
                emit(const AuthState.authenticated());
              },
              failure: (ErrorInfo) {
                emit(const AuthState.unauthenticated());
              },
            );
          });
          completer?.complete();
        },
        signedOut: () async {
          await authUseCases.signOut().then((result) {
            result.when(
              success: (data) {
                emit(const .unauthenticated());
              },
              failure: (error) {
                emit(.failure(error.message));
                emit(const .unauthenticated());
              },
            );
          });
        },
      );
    });

    // Firebase emits the current state immediately; the initial `check` event
    // above already handles it, so only react to subsequent changes.
    _authStateSubscription = FirebaseAuth.instance.authStateChanges().listen((
      user,
    ) {
      if (_skipInitialAuthState) {
        _skipInitialAuthState = false;
        return;
      }
      if (isClosed) {
        return;
      }
      final alreadyAuthenticated = state.maybeWhen(
        authenticated: () => true,
        orElse: () => false,
      );
      final alreadyUnauthenticated = state.maybeWhen(
        unauthenticated: () => true,
        orElse: () => false,
      );
      if (user == null) {
        if (!alreadyUnauthenticated) {
          add(const AuthEvent.signedOut());
        }
      } else if (!alreadyAuthenticated) {
        add(const AuthEvent.authToken());
      }
    });
    add(.check());
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }
}
