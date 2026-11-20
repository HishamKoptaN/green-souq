import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DevFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
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
    apiKey: 'AIzaSyAYx-1BahE-eQ9pGb8nFSY23wQJvircZCs',
    appId: '1:732725114509:web:d429a8f7cf2a9b91ca54c4',
    messagingSenderId: '732725114509',
    projectId: 'greensoouq-dev',
    authDomain: 'greensoouq-dev.firebaseapp.com',
    storageBucket: 'greensoouq-dev.firebasestorage.app',
    measurementId: 'G-SWJSLSX8M8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBAHlAvBFFQJP85Ys_efTfyaMBbPLCMRzA',
    appId: '1:732725114509:android:79063692c7702a28ca54c4',
    messagingSenderId: '732725114509',
    projectId: 'greensoouq-dev',
    storageBucket: 'greensoouq-dev.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg63x5RrXcZ5XfW2zXkHVGsHrk5-URsSU',
    appId: '1:732725114509:ios:4b63f260616154baca54c4',
    messagingSenderId: '732725114509',
    projectId: 'greensoouq-dev',
    storageBucket: 'greensoouq-dev.firebasestorage.app',
    iosBundleId: 'com.greensouq.app',
  );
}
