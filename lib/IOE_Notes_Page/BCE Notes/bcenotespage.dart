import 'package:flutter/material.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem1.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem2.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem3.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem4.dart';
import 'package:ioe/IOE_Notes_Page/BCT%20Notes/bctsem5.dart';
import 'package:ioe/screens/components/insidebuttons.dart';

class BCENotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BCE Notes',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InsideButtons(
              text: 'BCE Semester 1',
              icon: Icons.battery_0_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem1()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 2',
              icon: Icons.battery_1_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem2()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 3',
              icon: Icons.battery_2_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem3()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 4',
              icon: Icons.battery_3_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem4()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 5',
              icon: Icons.battery_4_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem5()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 6',
              icon: Icons.battery_5_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem1()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 7',
              icon: Icons.battery_6_bar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem1()),
                );
              },
            ),
            SizedBox(height: 10),
            InsideButtons(
              text: 'BCE Semester 8',
              icon: Icons.battery_charging_full,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem1()),
                );
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
