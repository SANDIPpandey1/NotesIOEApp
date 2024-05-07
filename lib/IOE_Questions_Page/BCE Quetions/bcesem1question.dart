import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/engineeringchemistry.dart';
import 'package:ioe/Subject_Pages/engineeringdrawing1.dart';

import 'package:ioe/Subject_Pages/cprogramming.dart';

import 'package:ioe/Subject_Pages/engineerinmath1.dart';
import 'package:ioe/Subject_Pages/thermodymanics.dart';
import 'package:ioe/screens/components/insidebuttons.dart';

import 'package:ioe/screens/otherpageappbar.dart';

class BCEQuestionsSem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 1 Questions',
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
              text: 'Thermodynamics',
              icon: Icons.house,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Thermodynamics(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Computer Programming (C)',
              icon: Icons.code,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CProgramming(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Dawing I',
              icon: Icons.draw,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EngineerinGDrawingI(initialTabIndex: 2)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Chemistry',
              icon: Icons.balance,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Engineeringchemistry(initialTabIndex: 2)),
                );
              },
            ),

            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Math I',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EngineeringMath1(initialTabIndex: 2)),
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
