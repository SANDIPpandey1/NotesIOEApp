import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ioe/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ioe/constants.dart';

class NotificationPage extends StatefulWidget {
  final List<String> notifications;

  const NotificationPage({Key? key, required this.notifications})
      : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isLoading = true;
  List<String> notifications = [];

  @override
  void initState() {
    super.initState();
    _loadNotificationsWithDelay();
  }

  Future<void> _loadNotificationsWithDelay() async {
    Timer(Duration(milliseconds: 500), () {
      _loadNotifications();
    });
  }

  Future<void> _loadNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      notifications = prefs.getStringList('notifications') ?? [];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarTop(
              pageTitle: 'Notifications',
              onDrawerIconPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            Expanded(
              child: isLoading
                  ? _buildLoadingAnimation()
                  : RefreshIndicator(
                      color: kblue,
                      onRefresh: () async {
                        await Future.delayed(Duration(seconds: 1));
                        await _loadNotifications();
                      },
                      child: ListView.builder(
                        itemCount:
                            notifications.isEmpty ? 1 : notifications.length,
                        itemBuilder: (context, index) {
                          if (notifications.isEmpty) {
                            return const ListTile(
                              title: Center(
                                child: Text(
                                  'No notifications',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            );
                          }
                          String notification = notifications[index];
                          Map<String, dynamic> notificationData =
                              jsonDecode(notification);
                          String notificationTitle =
                              notificationData['title'] ?? 'No Title';
                          String notificationBody =
                              notificationData['body'] ?? 'No Body';
                          return Dismissible(
                            key: Key(notification),
                            onDismissed: (direction) async {
                              setState(() {
                                notifications.removeAt(index);
                              });
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setStringList(
                                  'notifications', notifications);
                            },
                            background: Container(
                              color: Colors.red[100],
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            child: NotificationTile(
                              title: notificationTitle,
                              body: notificationBody,
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingAnimation() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String body;

  const NotificationTile({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            body,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          leading: CircleAvatar(
            backgroundColor: kblue,
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle tap if necessary
          },
        ),
      ),
    );
  }
}
