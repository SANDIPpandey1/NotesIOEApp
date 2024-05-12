import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ioe/Subject_Pages/Computer%20networt%20and%20Security.dart';

import 'package:ioe/Subject_Pages/Digital%20Signal%20Analysis%20and%20Processing.dart';
import 'package:ioe/Subject_Pages/Distributed%20System.dart';
import 'package:ioe/Subject_Pages/Energy%20Environment%20and%20society.dart';

import 'package:ioe/Subject_Pages/Orginization%20and%20Management.dart';

import 'package:ioe/Subject_Pages/Project%20Management.dart';

import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTQuestionsSem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 7 Questions',
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
              text: 'ICT Project Management',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ProjectManagement()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Organization and Management',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => OrganizationandManagement()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Energy Environment and Society',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => EnergyEnvironment()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Distributed System',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => DistributedSystem()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Computer Network and Security',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => ComputerNetworkandSecurity()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Digital Signal Analysis',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => DigitalSignalAnalysis()),
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
