import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/basicelectronics.dart';
import 'package:ioe/Subject_Pages/engineeringchemistry.dart';
import 'package:ioe/Subject_Pages/engineeringmath2.dart';
import 'package:ioe/Subject_Pages/thermodymanics.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/Subject_Pages/applied_mechanics.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BEXSem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEX Semester 1 Notes',
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
              text: 'Thermodynamics',
              icon: Icons.sunny,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Thermodynamics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Basic Electronics Engineering',
              icon: Icons.electrical_services,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BasicElectronics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Enginering Chemistry',
              icon: Icons.health_and_safety,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Engineeringchemistry()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Drawing II',
              icon: Icons.draw,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppliedMechanics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineerring Math II',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EngineeringMath2()),
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
