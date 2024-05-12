import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Applied%20Mechanics%20Dynamics.dart';
import 'package:ioe/Subject_Pages/Civil%20Engineering%20Materials.dart';
import 'package:ioe/Subject_Pages/Engineering%20Geology%20I.dart';
import 'package:ioe/Subject_Pages/Fluid%20Mechanics.dart';
import 'package:ioe/Subject_Pages/Strength%20of%20Materials.dart';
import 'package:ioe/Subject_Pages/Surveying%20I.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCEQuestionsSem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 3 Questions',
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
              text: 'Civil Engineering Materials',
              icon: Icons.sunny,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          CivilEngineeringMaterial(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Applied Mechanics Dymanics',
              icon: Icons.electrical_services,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          AppliedMechanicsDynamics(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Enginering Geology I',
              icon: Icons.health_and_safety,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EngineeringGeologyI(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Strength Of Material',
              icon: Icons.draw,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          StrengthOfMaterials(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineerring Math III',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EngineeringMath3(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Surveing I',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => SurveyingI(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Fluid Mechanics',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => FluidMechanics(initialTabIndex: 2)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
