import 'package:flutter/material.dart';
import 'package:ioe/screens/home_screen.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          AppBarTop(
              pageTitle: 'Demo Page',
              onDrawerIconPressed: () {
                Scaffold.of(context).openDrawer();
              } // Pass the page title here
              ),
        ],
      ),
    );
  }
}
