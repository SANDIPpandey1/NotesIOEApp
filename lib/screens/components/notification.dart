import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:ioe/screens/home_screen.dart'; // Import your custom AppBarTop

class NotificationPage extends StatefulWidget {
  final List<String> notifications;

  const NotificationPage({Key? key, required this.notifications})
      : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarTop(
              pageTitle:
                  'Notifications', // Set the title for your NotificationPage
              onDrawerIconPressed: () {
                Scaffold.of(context).openDrawer(); // This will open the drawer
              },
            ),
            Expanded(
              child: LiquidPullToRefresh(
                onRefresh: () async {
                  // Implement your logic to fetch new notifications
                },

                color: kpink, // Set the refresh color to blue
                showChildOpacityTransition: false,
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
                      background: Container(color: Colors.red),
                      child: ListTile(
                        title: Text(widget.notifications[index]),
                        onTap: () {
                          // Handle the tap if necessary
                        },
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
}
