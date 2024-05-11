import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Computational%20Techniques%20in%20Civil%20Engineering.dart';
import 'package:ioe/Subject_Pages/Construction%20Management.dart';
import 'package:ioe/Subject_Pages/Engineering%20Professional%20Practice.dart';
import 'package:ioe/Subject_Pages/Technology%20Environment%20and%20Society.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCESem8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 8 Notes',
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
              text: 'Technology Environment and Society',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TechnologyEnvironmentandSociety(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Construction Management',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConstructionManagement(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Professional Practice',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EngineeringProfessional(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Computational Techniques',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ComputationalTechniquesinCivilEngineering(
                              initialTabIndex: 0)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
