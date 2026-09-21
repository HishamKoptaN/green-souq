import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

class DevFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
    apiKey: 'AIzaSyBOCShCrvf4mESBvQZ6N52BXqgap2V_1aI',
    appId: '1:547777529825:web:d97a5fc567ebcf802f34a0',
    messagingSenderId: '547777529825',
    projectId: 'green-market-dev',
    authDomain: 'green-market-dev.firebaseapp.com',
    storageBucket: 'green-market-dev.firebasestorage.app',
    measurementId: 'G-PH42NHHBF1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCO5dAXuFxcCGYu1VrzWPDZkLH7Zm-RKZw',
    appId: '1:547777529825:android:1c54c5726d741c182f34a0',
    messagingSenderId: '547777529825',
    projectId: 'green-market-dev',
    storageBucket: 'green-market-dev.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzRot6uwg_EFMcGe4nJLCkYc2kmhL03XM',
    appId: '1:547777529825:ios:d9f14885f93c2c7d2f34a0',
    messagingSenderId: '547777529825',
    projectId: 'green-market-dev',
    storageBucket: 'green-market-dev.firebasestorage.app',
    iosBundleId: 'com.green.app.dev',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBOCShCrvf4mESBvQZ6N52BXqgap2V_1aI',
    appId: '1:547777529825:web:cd026bef3434fdc72f34a0',
    messagingSenderId: '547777529825',
    projectId: 'green-market-dev',
    authDomain: 'green-market-dev.firebaseapp.com',
    storageBucket: 'green-market-dev.firebasestorage.app',
    measurementId: 'G-DB4NXVV331',
  );
}
