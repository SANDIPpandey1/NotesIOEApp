import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Engineering%20Professional%20Practice.dart';
import 'package:ioe/Subject_Pages/Information%20System.dart';
import 'package:ioe/Subject_Pages/Internet%20and%20Intranet.dart';
import 'package:ioe/Subject_Pages/Simulation%20and%20Modeling.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTQuestionsSem8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Semester 8 Questions',
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
              text: 'Engineering Professional Practice',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EngineeringProfessional()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Information Systems',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationSystem()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Internet and Intranet',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InternetAndIntranet()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Simulation and Modeling',
              icon: Icons.arrow_forward,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SimulationandModeling()),
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
