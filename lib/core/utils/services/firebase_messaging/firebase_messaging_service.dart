import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:universal_io/io.dart';

import '../../../../config/env_config.dart';
import '../../../di/dependency_injection.dart';
import '../device_service.dart';

@Singleton()
class FirebaseMessagingService {
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static const String _channelId = 'green_souq_notifications';

  Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    await _requestPermission();
    if (!kIsWeb) {
      await _initLocalNotifications();
    }
    if (DeviceService.isDesktopPlatform()) {
      return;
    }
    final token = await getFcmToken();
    if (token.isNotEmpty && !token.contains('_')) {
      await registerToken(token);
      _messaging.onTokenRefresh.listen(registerToken);
    }
    await _messaging.subscribeToTopic('all');
  }

  static Future<void> _backgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    log('📩 إشعار في الخلفية: ${message.messageId}');
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    log('📨 فتح التطبيق من الإشعار: ${message.notification?.title}');
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    if (kIsWeb || message.notification == null) {
      return;
    }
    final plugin = getIt<FlutterLocalNotificationsPlugin>();
    await plugin.show(
      id: message.messageId?.hashCode ?? DateTime.now().millisecondsSinceEpoch,
      title: message.notification?.title ?? 'السوق الأخضر',
      body: message.notification?.body ?? '',
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          'إشعارات السوق الأخضر',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
    );
  }

  Future<void> _initLocalNotifications() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    await getIt<FlutterLocalNotificationsPlugin>().initialize(
      settings: const InitializationSettings(android: android),
    );
  }

  Future<void> _requestPermission() async {
    if (DeviceService.isDesktopPlatform()) {
      return;
    }
    await _messaging.requestPermission(alert: true, badge: true, sound: true);
  }

  static Future<String> getFcmToken() async {
    if (DeviceService.isDesktopPlatform()) {
      return '';
    }
    try {
      if (Platform.isIOS) {
        final apnsToken = await _messaging.getAPNSToken();
        if (apnsToken == null) {
          return 'apns_token_not_ready';
        }
      }
      final vapidKey = kIsWeb ? EnvConfig.config.webVapidKey : null;
      final token = await _messaging.getToken(vapidKey: vapidKey);
      return token ?? 'no_fcm_token_available';
    } catch (e) {
      return e.toString();
    }
  }

  Future<void> registerToken(String token) async {
    try {
      final device = await DeviceService.getDeviceInfo();
      await getIt<Dio>().post(
        'device-token',
        data: {
          'fcm_token': token,
          'fcmToken': token,
          'device': {
            'device_id': device.deviceId,
            'model_name': device.model,
            'os_version': device.os,
          },
        },
      );
      log('✅ تم تسجيل توكن الإشعارات');
    } catch (e) {
      log('⚠️ فشل تسجيل توكن الإشعارات: $e');
    }
  }
}
