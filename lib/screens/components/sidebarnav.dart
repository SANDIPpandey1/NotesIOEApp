import 'package:flutter/material.dart';

class SideBarNavigation extends StatelessWidget {
  const SideBarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 134, 231, 238),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Building Bridges to\nKnowledge and Beyond!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text('Policy'),
            onTap: () {
              // Navigate to Policy page
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Disclaimer'),
            onTap: () {
              // Navigate to Disclaimer page
            },
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('Support Us'),
            onTap: () {
              // Navigate to Support Us page
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Contact Us'),
            onTap: () {
              // Navigate to Contact Us page
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate Us'),
            onTap: () {
              // Navigate to Rate Us page
            },
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('Updates'),
            onTap: () {
              // Navigate to Updates page
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Implement Logout functionality
            },
          ),
        ],
      ),
    );
  }
}
