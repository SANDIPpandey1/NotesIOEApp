import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ioe/screens/home_screen.dart';
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

  @override
  void initState() {
    super.initState();
    // Simulate loading with a delay for 0.5 seconds
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        isLoading = false;
      });
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
                        await fetchRecentNotifications();
                      },
                      child: ListView.builder(
                        itemCount: widget.notifications.isEmpty
                            ? 1
                            : widget.notifications.length,
                        itemBuilder: (context, index) {
                          if (widget.notifications.isEmpty) {
                            return const ListTile(
                              title: Center(child: Text('No notifications')),
                            );
                          }
                          return Dismissible(
                            key: Key(widget.notifications[index]),
                            onDismissed: (direction) {
                              setState(() {
                                widget.notifications.removeAt(index);
                              });
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
                              notification: widget.notifications[index],
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

  Future<void> fetchRecentNotifications() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      widget.notifications.insert(0, "New notification 1");
      widget.notifications.insert(0, "New notification 2");
      widget.notifications.insert(0, "New notification 3");
    });
  }
}

class NotificationTile extends StatelessWidget {
  final String notification;

  const NotificationTile({Key? key, required this.notification})
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
            notification,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Notification details go here',
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
