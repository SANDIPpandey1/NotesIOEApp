import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ioe/screens/components/notification.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class FirebaseAPI {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification(BuildContext context) async {
    NotificationSettings settings =
        await _firebaseMessaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleMessage(message, context);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message, context);
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
    await _saveNotification(message);
  }

  Future<void> _handleMessage(
      RemoteMessage message, BuildContext context) async {
    await _saveNotification(message);
    String? link = message.data['link'];
    if (link != null) {
      Navigator.pushNamed(context, link);
    } else {
      List<String> notifications = await _getStoredNotifications();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NotificationPage(
            notifications: notifications,
          ),
        ),
      );
    }
  }

  static Future<void> _saveNotification(RemoteMessage message) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> notifications = prefs.getStringList('notifications') ?? [];
    notifications.add(jsonEncode({
      'title': message.notification?.title ?? 'No Title',
      'body': message.notification?.body ?? 'No Body',
    }));
    await prefs.setStringList('notifications', notifications);
  }

  static Future<List<String>> _getStoredNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('notifications') ?? [];
  }
}
