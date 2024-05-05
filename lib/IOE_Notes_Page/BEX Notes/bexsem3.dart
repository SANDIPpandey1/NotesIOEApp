import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/digitallogic.dart';
import 'package:ioe/Subject_Pages/electriccircuittheory.dart';
import 'package:ioe/Subject_Pages/electricdeviceandcircuit.dart';
import 'package:ioe/Subject_Pages/electromagnetism.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/Subject_Pages/objectorientedprogramming.dart.dart';
import 'package:ioe/screens/components/demo.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BEXSem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEX Semester 3 Notes',
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
              text: 'Electric Circuit Theory',
              icon: Icons.loop,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ElectricCircuitTheory()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electromagnetism',
              icon: Icons.wifi,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Electromagnetics()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electric Device And Circuit',
              icon: Icons.device_hub,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Edc()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Digital Logic',
              icon: Icons.storage,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DigitalLogic()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electrical Engineering Material',
              icon: Icons.stacked_bar_chart,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Demo()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Object Oriented Programming',
              icon: Icons.code,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Oop()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Engineering Math III',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EngineeringMath3()),
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