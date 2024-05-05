import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ioe/screens/home_screen.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<RemoteMessage> notifications = [];

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      setState(() {
        notifications.insert(0, message); // Add new notification to the top
      });
    });
  }

  void clearNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBarTop(pageTitle: 'Notifications'),
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final message = notifications[index];
            return ListTile(
              title: Text(message.notification?.title ?? 'No title'),
              subtitle: Text(message.notification?.body ?? 'No body'),
              onTap: () {
                // Handle tap on notification if needed
              },
            );
          },
        ),
      ),
    );
  }
}
