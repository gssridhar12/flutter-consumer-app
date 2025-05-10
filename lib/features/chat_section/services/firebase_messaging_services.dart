import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_home.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseMessagingService {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final firebaseToken = getDeviceToken();
    debugPrint('FIrebase MEssaging token $firebaseToken');

    initPushNotifications();
  }

  Future<String> getDeviceToken() async {
    String? token = await _firebaseMessaging.getToken();
    debugPrint(token);
    return token!;
  }

  Future initPushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
            alert: true, badge: true, sound: true);

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((value) => handleMessage(value));

    // FirebaseMessaging.onBackgroundMessage(
    //     (message) => handleBackgroundMessage(message));
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        final notification = message.notification;
        debugPrint('Got a message whilst in the foreground!');
        debugPrint('Message data: ${message.toString()}');

        if (notification == null) return;
        _localNotification.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
                android: AndroidNotificationDetails(
                    _androidChannel.id, _androidChannel.name,
                    channelDescription: _androidChannel.description,
                    icon: '@drawable/ic_launcher')),
            payload: jsonEncode(message.toMap()));
      },
    );
  }

  Future initLocalNotification() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: android);
    await _localNotification.initialize(
      settings,
      onDidReceiveNotificationResponse: (details) {
        // final message = RemoteMessage.fromMap(jsonDecode(details));
        // handleMessage(details);
      },
    );
  }

  void handleMessage(RemoteMessage? remoteMessage) {
    if (remoteMessage == null) return;
    log('handling message');
    AppNavigation.pushNavigation(
        navigatorKey.currentContext!, const ChatHomePage());
    log('handling message');
  }

  final _androidChannel = const AndroidNotificationChannel(
      'notification_channel', 'message notification channel',
      description: 'This channel is used for important notifications.',
      importance: Importance.high,
      showBadge: true,
      enableVibration: true,
      playSound: true);

  final _localNotification = FlutterLocalNotificationsPlugin();
}

Future<void> handleBackgroundMessage(RemoteMessage remoteMessage) async {
  debugPrint('title: ${remoteMessage.notification!.title}');
  debugPrint('body: ${remoteMessage.notification!.body}');
  debugPrint('payload: ${remoteMessage.data}');
}
