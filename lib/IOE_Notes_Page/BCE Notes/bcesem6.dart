import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Concrete%20Technology%20and%20Masonry%20Structure.dart';
import 'package:ioe/Subject_Pages/Engineering%20Hydrology.dart';
import 'package:ioe/Subject_Pages/Foundation%20Engineering.dart';
import 'package:ioe/Subject_Pages/Theory%20of%20Structures%20II.dart';
import 'package:ioe/Subject_Pages/Water%20Supply%20Engineering.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCESem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Semester 6 Notes',
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
              text: 'Engineering Hydrology',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EngineeringHydrology(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Numerical Methods',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          NumericalMethod(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Theory Of Structure II',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TheoryofStructuresII(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Water Supply Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WaterSupplyEngineering(initialTabIndex: 0)),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Concrete Technology',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConcreteTechnologyandMasonryStructure(
                              initialTabIndex: 0)),
                );
              },
            ),
            //Survey camp remaining
            //building drawing needed!!
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Foundation Engineering',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FoundationEngineering(initialTabIndex: 0)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
