import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Design%20of%20RCC%20Structure.dart';
import 'package:ioe/Subject_Pages/Estimating%20and%20Costing.dart';
import 'package:ioe/Subject_Pages/Hydropower%20Engineering.dart';
import 'package:ioe/Subject_Pages/Project%20Engineering.dart';
import 'package:ioe/Subject_Pages/Transportation%20Engineering%20II.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCEQuestionsSem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 7 Questions',
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
              text: 'Hydropower Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          HydropowerEngineering(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Project Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ProjectEngineering(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Transportation Engineering II',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          TransportationEngineeringII(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Estimation and Costing',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          EstimatingandCosting(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Design of RCC Structure',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          DesignofRCCStructure(initialTabIndex: 2)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
