import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Building%20Technology.dart';
import 'package:ioe/Subject_Pages/Design%20of%20Steel%20and%20Timber%20Structure.dart';
import 'package:ioe/Subject_Pages/EngineeringEconomics.dart';
import 'package:ioe/Subject_Pages/Irrigation%20and%20Drainage%20Engineering.dart';
import 'package:ioe/Subject_Pages/Sanitary%20Engineering.dart';
import 'package:ioe/Subject_Pages/Transportation%20Engineering.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCEQuestionsSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 6 Questions',
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
              text: 'Design of Steel And Tember',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DesignofSteelandTimberStructure(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Communication English',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          NumericalMethod(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Econimics',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EngineeringEconomics(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Building Technology',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BuildingTechnology(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Sanitary Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SanitaryEngineering(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Transportation Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TransportationEngineering(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Irrigation and Drainage',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          IrrigationandDrainageEngineering(initialTabIndex: 2)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
