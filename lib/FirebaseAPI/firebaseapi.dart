import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:ioe/main.dart';

class FirebaseAPI {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    _firebaseMessaging.getToken().then((token) {
      print('Token: $token');
    });
    initPushNotification();
  }

  void handleNotification(RemoteMessage? message) {
    if (message == null) return;

    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.pushNamed(
        '/notification',
        arguments: message,
      );
    }
  }

  Future<void> initPushNotification() async {
    await FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.onMessageOpenedApp.listen(handleNotification);
    FirebaseMessaging.instance.getInitialMessage().then(handleNotification);
  }
}
