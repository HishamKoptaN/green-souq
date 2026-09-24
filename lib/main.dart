import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'config/env_config.dart';
import 'core/widgets/feedback/custom_error_widget.dart';
import 'core/app_observer.dart';
import 'core/di/dependency_injection.dart';
import 'features/auth/auth/present/bloc/auth_bloc.dart';
import 'green_app.dart';

void main({String? initialLocation}) {
  runZonedGuarded(
    () async {
      try {
        WidgetsFlutterBinding.ensureInitialized();
        await initStorage();
        await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
        await configureDependencies(environment: EnvConfig.config.envName);
        Bloc.observer = AppBlocObserver();
        await GoogleSignIn.instance.initialize(
          serverClientId: kIsWeb ? null : '547777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com',
          clientId: kIsWeb
              ? '54777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com'
              : null,
        );
        await Future.wait<dynamic>([
          getIt<AuthBloc>().stream.firstWhere((state) {
            // if (kReleaseMode) {
            return state.maybeMap(
              loading: (_) {
                return false;
              },
              orElse: () {
                return true;
              },
            );
            // } else {
            //   return true;
            // }
          }),
        ]);
        runApp(GreenApp(initialLocation: initialLocation));
      } catch (error, stackTrace) {
        _handleError(
          error: error,
          stackTrace: stackTrace,
          context: 'app initialization',
        );
      }
    },
    (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

Future<void> initStorage() async {
  if (kIsWeb) {
    HydratedBloc.storage = await HydratedStorage.build(storageDirectory: .web);
  } else {
    final dir = await getApplicationDocumentsDirectory();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(dir.path),
    );
  }
}

void _handleError({
  required Object error,
  required StackTrace stackTrace,
  required String context,
}) {
  runApp(
    ErrorApp(
      errorDetails: FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: 'app',
        context: ErrorDescription(context),
      ),
    ),
  );
}
