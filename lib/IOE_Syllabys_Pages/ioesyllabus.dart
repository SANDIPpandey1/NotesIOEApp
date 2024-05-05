import 'package:flutter/material.dart';
import 'package:ioe/IOE_Syllabys_Pages/archsyllabys.dart';
import 'package:ioe/IOE_Syllabys_Pages/bctsyllabus.dart';
import 'package:ioe/IOE_Syllabys_Pages/bcesyllabys.dart';
import 'package:ioe/IOE_Syllabys_Pages/belsyllabus.dart';
import 'package:ioe/IOE_Syllabys_Pages/bexsyllabus.dart';
import 'package:ioe/IOE_Syllabys_Pages/bmesyllabys.dart';
import 'package:ioe/IOE_Syllabys_Pages/geomatics.dart';
import 'package:ioe/screens/components/insidebuttons.dart';

class IOESyllabus extends StatelessWidget {
  const IOESyllabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IOE Syllabus',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InsideButtons(
              text: 'Computer Engineering (BCT)',
              icon: Icons.computer,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Civil Engineering (BCE)',
              icon: Icons.construction,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCESyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electronics Engineering (BEX)',
              icon: Icons.signal_cellular_connected_no_internet_4_bar_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BEXSyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Electrical Engineering (BEL)',
              icon: Icons.connect_without_contact,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BELSyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Mechanical Engineering (BME)',
              icon: Icons.car_repair,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMESyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Architecture Engineering (B.Arch)',
              icon: Icons.design_services,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BArchSyllabus()),
                );
              },
            ),
            SizedBox(height: 10.0),
            InsideButtons(
              text: 'Geomatics Engineering (BGE)',
              icon: Icons.landscape,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GeomaticsEngineeringSyllabus()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
