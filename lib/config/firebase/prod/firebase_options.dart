import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class ProdFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC0QxbHlfOJPmMFyLmDmu91jlpdH9KmfiU',
    appId: '1:32913963321:web:c579112ff7995e9c3a90e8',
    messagingSenderId: '32913963321',
    projectId: 'green-souq-31c75',
    authDomain: 'green-souq-31c75.firebaseapp.com',
    storageBucket: 'green-souq-31c75.firebasestorage.app',
    measurementId: 'G-JLH57N42RZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeBAuJgFUXHeOuDNJcrZbKwU7J_w3Tl2g',
    appId: '1:32913963321:android:2bb50072e7d30c023a90e8',
    messagingSenderId: '32913963321',
    projectId: 'green-souq-31c75',
    storageBucket: 'green-souq-31c75.firebasestorage.app',
  );
}
