import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Engineering%20Geology%20II.dart';
import 'package:ioe/Subject_Pages/Hydraulics.dart';
import 'package:ioe/Subject_Pages/Probability%20And%20Statistics.dart';
import 'package:ioe/Subject_Pages/Soil%20Mechanics.dart';
import 'package:ioe/Subject_Pages/Surveying%20II.dart';
import 'package:ioe/Subject_Pages/Theory%20of%20Structures%20I.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCESem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 4 Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Hydraulics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => Hydraulics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Surveying II',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => SurveyingII(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Theory Of Structure I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          TheoryofStructuresI(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Probability and Statistics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ProbabilityAndStatistics(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineerring Geology II',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EngineeringGeologyII(initialTabIndex: 0)),
                );
              },
            ),
            //building drawing needed!!
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Soil Mechanics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => SoilMechanics(initialTabIndex: 0)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
