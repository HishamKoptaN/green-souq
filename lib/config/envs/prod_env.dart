import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../env.dart';
import '../firebase/prod/firebase_options.dart';

class ProdEnv extends Env {
  @override
  String get envName {
    return 'prod';
  }

  @override
  FirebaseOptions get firebaseOptions {
    return ProdFirebaseOptions.currentPlatform;
  }

  @override
  String get baseUrl {
    return 'https://springgreen-turtle-355093.hostingersite.com';
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
    return '414244773229-kpqi8s9fc2iab3pmu44413tcudcr6fut.apps.googleusercontent.com';
  }

  @override
  String get serverClientId {
    return '414244773229-kpqi8s9fc2iab3pmu44413tcudcr6fut.apps.googleusercontent.com';
  }
}
