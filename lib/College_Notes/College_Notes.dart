import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';

class CollegeNotes extends StatelessWidget {
  const CollegeNotes({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'College Notes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            //labelColor: kblue,
            indicatorColor: kblue,

            tabs: [
              Tab(text: 'Class 11'),
              Tab(text: 'Class 12'),
              //Tab(text: 'User'),
              //Tab(text: 'Manual'),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Text(
                '11 Notes Content',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                '12 Notes Content',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
