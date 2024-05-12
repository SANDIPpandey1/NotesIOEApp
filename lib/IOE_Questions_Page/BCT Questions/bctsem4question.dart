import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/InstrumentationI.dart';
import 'package:ioe/Subject_Pages/appliedmath.dart';
import 'package:ioe/Subject_Pages/datastructureandalgorithm.dart';
import 'package:ioe/Subject_Pages/discretestructure.dart';
import 'package:ioe/Subject_Pages/electricmachine.dart';
import 'package:ioe/Subject_Pages/microprocessor.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTQuestionsSem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 4 Questions',
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
              text: 'Electric Machine',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ElectricalMachine()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Instrentation I',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => InstrumentationI()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Data Structure and Algorithm',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => DSA()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Applied Math',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => AppliedMathematics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Discrete Structure',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => DiscreteStructure()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Microprocessor',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => Microprocessor()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Numerical Method',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => NumericalMethod()),
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
