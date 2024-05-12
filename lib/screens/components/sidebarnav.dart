import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';

class SideBarNavigation extends StatelessWidget {
  const SideBarNavigation({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

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
                color: kblue,
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
            leading: Icon(
              Icons.contact_phone,
            ),
            title: Text('Contact Us'),
            onTap: () {},
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
            leading: Icon(Icons.report),
            title: Text('Report An Issue'),
            onTap: () {
              // Navigate to Updates page
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About Us'),
            onTap: () {
              // Navigate to Updates page
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              signUserOut();
            },
          ),
        ],
      ),
    );
  }
}
