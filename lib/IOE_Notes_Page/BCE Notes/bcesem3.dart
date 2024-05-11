import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Applied%20Mechanics%20Dynamics.dart';
import 'package:ioe/Subject_Pages/Civil%20Engineering%20Materials.dart';
import 'package:ioe/Subject_Pages/Engineering%20Geology%20I.dart';
import 'package:ioe/Subject_Pages/Fluid%20Mechanics.dart';
import 'package:ioe/Subject_Pages/Strength%20of%20Materials.dart';
import 'package:ioe/Subject_Pages/Surveying%20I.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCESem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 3 Notes',
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
              text: 'Civil Engineering Materials',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CivilEngineeringMaterial()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Applied Mechanics Dymanics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AppliedMechanicsDynamics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Enginering Geology I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EngineeringGeologyI()),
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
                  MaterialPageRoute(
                      builder: (context) => StrengthOfMaterials()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineerring Math III',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EngineeringMath3()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Surveing I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurveyingI()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Fluid Mechanics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FluidMechanics()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
