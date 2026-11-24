import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show kReleaseMode;

import '../env.dart';
import '../firebase/dev/firebase_options.dart';

class DevEnv extends Env {
  @override
  String get envName {
    return 'dev';
  }

  @override
  FirebaseOptions get firebaseOptions {
    return DevFirebaseOptions.currentPlatform;
  }

  @override
  String get baseUrl {
    return const String.fromEnvironment(
      'DEV_API_URL',
      defaultValue: kReleaseMode
          ? 'https://dev.muein.online'
          : 'http://127.0.0.1:8000',
    );
  }

  @override
  String get authBaseUrl {
    return '$baseUrl/api/auth/';
  }

  @override
  String get userBaseUrl {
    return '$baseUrl/api/user/';
  }

  @override
  String get clientId {
    return const String.fromEnvironment(
      'GOOGLE_CLIENT_ID',
      defaultValue:
          '547777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com',
    );
  }

  @override
  String get serverClientId {
    return const String.fromEnvironment(
      'GOOGLE_SERVER_CLIENT_ID',
      defaultValue:
          '547777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com',
    );
  }
}
