import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

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
    return 'http://127.0.0.1:8000';
  }

  @override
  String get authBaseUrl {
    return '$baseUrl/auth/';
  }

  @override
  String get userBaseUrl {
    return '$baseUrl/user/';
  }

  @override
  String get clientId {
    return '54777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com';
  }

  @override
  String get serverClientId {
    return '547777529825-d2hd1g5pp13jv0v7t893r4ji1s07b244.apps.googleusercontent.com';
  }
}
