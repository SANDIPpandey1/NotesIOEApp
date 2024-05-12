import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Control%20System.dart';
import 'package:ioe/Subject_Pages/InstrumentationI.dart';
import 'package:ioe/Subject_Pages/Probability%20And%20Statistics.dart';
import 'package:ioe/Subject_Pages/electricdeviceandcircuit.dart';
import 'package:ioe/Subject_Pages/electromagnetism.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BEISem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEI Semester 3 Notes',
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
              text: 'Probability and Statistics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => ProbabilityAndStatistics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electromagnetism',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => Electromagnetics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electric Device And Circuit',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => Edc()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Instrumentation I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => InstrumentationI()),
                );
              },
            ),
            SizedBox(height: 10.0),

            InsideButtons(
              text: 'Control System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ControlSystem()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Math III',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => EngineeringMath3()),
                );
              },
            ),
            // Add other notes options here
          ],
        ),
      ),
    );
  }
}
