import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/basicelectrical.dart';
import 'package:ioe/Subject_Pages/basicelectronics.dart';
import 'package:ioe/Subject_Pages/engineeringmath2.dart';
import 'package:ioe/Subject_Pages/engineeringphysics.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/Subject_Pages/applied_mechanics.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTSem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 2 Notes',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Applied Mechanics',
              icon: Icons.sunny,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppliedMechanics()),
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
              text: 'Enginering Physics',
              icon: Icons.health_and_safety,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EngineeringPhysics()),
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
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Basic Electrical Engineering',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BasicElectricalEngineering()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
