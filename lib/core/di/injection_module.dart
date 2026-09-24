import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {
  @singleton
  InternetConnection get connectionChecker {
    return InternetConnection.createInstance();
  }

  @singleton
  FlutterLocalNotificationsPlugin get notificationsPlugin {
    return FlutterLocalNotificationsPlugin();
  }

  @singleton
  FirebaseAuth get firebaseAuth {
    return FirebaseAuth.instance;
  }

  @lazySingleton
  GoogleSignIn get googleSignIn {
    return GoogleSignIn.instance;
  }

  @singleton
  FirebaseMessaging get firebaseMessaging {
    return FirebaseMessaging.instance;
  }

  @preResolve
  Future<SharedPreferencesAsync> get prefs async {
    return SharedPreferencesAsync();
  }

  @singleton
  FlutterSecureStorage get secureStorage {
    return const FlutterSecureStorage();
  }

  @singleton
  Duration get cacheDefaultTtl {
    return const Duration(minutes: 5);
  }
}
