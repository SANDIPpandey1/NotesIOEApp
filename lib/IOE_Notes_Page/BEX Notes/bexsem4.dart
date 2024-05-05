import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/InstrumentationI.dart';
import 'package:ioe/Subject_Pages/appliedmath.dart';
import 'package:ioe/Subject_Pages/datastructureandalgorithm.dart';
import 'package:ioe/Subject_Pages/discretestructure.dart';
import 'package:ioe/Subject_Pages/electricmachine.dart';
import 'package:ioe/Subject_Pages/microprocessor.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BEXSem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEX Semester 4 Notes',
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
              text: 'Electric Machine',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ElectricalMachine()),
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
                  MaterialPageRoute(builder: (context) => InstrumentationI()),
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
                  MaterialPageRoute(builder: (context) => DSA()),
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
                  MaterialPageRoute(builder: (context) => AppliedMathematics()),
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
                  MaterialPageRoute(builder: (context) => DiscreteStructure()),
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
                  MaterialPageRoute(builder: (context) => Microprocessor()),
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
                  MaterialPageRoute(builder: (context) => NumericalMethod()),
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
