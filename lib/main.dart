import 'dart:async';

import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'config/env_config.dart';
import 'core/widgets/feedback/error_app.dart';
import 'core/app_observer.dart';
import 'core/di/dependency_injection.dart';
import 'features/ads/ad_banner_widget.dart';
import 'features/auth/auth/present/bloc/auth_bloc.dart';
import 'green_app.dart';

void main({String? initialLocation}) {
  runZonedGuarded(
    () async {
      try {
        WidgetsFlutterBinding.ensureInitialized();
        SemanticsBinding.instance.ensureSemantics();
        await initStorage();
        await Firebase.initializeApp(options: EnvConfig.config.firebaseOptions);
        await configureDependencies(environment: EnvConfig.config.envName);
        Bloc.observer = AppBlocObserver();
        await GoogleSignIn.instance.initialize(
          clientId: kIsWeb ? EnvConfig.config.clientId : null,
          serverClientId: kIsWeb ? null : EnvConfig.config.serverClientId,
        );
        //await Future.wait<dynamic>([
        //  getIt<AuthBloc>().stream.firstWhere((state) {
        //    return state.maybeMap(
        //      loading: (_) {
        //        return false;
        //      },
        //      orElse: () {
        //        return true;
        //      },
        //    );
        //  }),
        //]);
        await initializeDateFormatting('ar', null);
        await AdManager.init();
        usePathUrlStrategy();
        runApp(GreenApp(initialLocation: initialLocation));
      } catch (e, st) {
        _handleError(error: e, stackTrace: st, context: 'app initialization');
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
