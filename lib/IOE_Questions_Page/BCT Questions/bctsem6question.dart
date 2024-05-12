import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Artificial%20Intelligence.dart';
import 'package:ioe/Subject_Pages/EngineeringEconomics.dart';
import 'package:ioe/Subject_Pages/InstrimentationII.dart';
import 'package:ioe/Subject_Pages/Object%20Oriented%20Analysis%20and%20Design.dart';
import 'package:ioe/Subject_Pages/Operating%20System.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTQuestionsSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 6 Questions',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Economics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => EngineeringEconomics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Object Oriented Analysis and Design',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => ObjectOrientedAnalysis()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Artifical Intelligence',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => ArtificialIntelligence()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Operating System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => OperatingSystem()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Database Management System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => InstrumentationII()),
                );
              },
            ),
            // SizedBox(height: 10.0),
            // InsideButtons(
            //   text: 'Data Communication',
            //   icon: Icons.arrow_forward,
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(builder: (context) => DataCommunication()),
            //     );
            //   },
            // ),
            // Add other notes options here
          ],
        ),
      ),
    );
  }
}
