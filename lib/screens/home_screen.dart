import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/navpages/downloads.dart';
import 'package:ioe/navpages/ioenotes.dart';
import 'package:ioe/SyllabysPages/ioesyllabus.dart';

import 'package:ioe/screens/components/home_content.dart';
import 'package:ioe/screens/components/sidebarnav.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeContent(),
    IOENotes(),
    IOESyllabus(),
    DownloadPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: SideBarNavigation(),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: kpink,
            inactiveColor: Colors.grey[500],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.pages),
            title: Text('Notes'),
            inactiveColor: Colors.grey[500],
            activeColor: kpink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: Text('Syllabus'),
            inactiveColor: Colors.grey[500],
            activeColor: kpink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.download),
            title: Text('Downloads'),
            inactiveColor: Colors.grey[500],
            activeColor: kpink,
          ),
        ],
      ),
    );
  }
}
