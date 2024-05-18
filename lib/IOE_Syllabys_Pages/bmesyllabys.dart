import 'package:flutter/material.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BMESyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BME Syllabus',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InsideCard(
                semester: 'First Semester',
                subjects: [
                  'Engineering Drawing I',
                  'Engineering Mathematics I',
                  'Fundamental of Thermodynamics & Heat Transfer',
                  'Engineering Chemistry',
                  'Workshop Technology',
                  'Computer Programming',
                ],
              ),
              InsideCard(
                semester: 'Second Semester',
                subjects: [
                  'Engineering Mathematics II',
                  'Engineering Drawing II',
                  'Basic Electronics Engineering',
                  'Engineering Physics',
                  'Basic Electrical Engineering',
                  'Applied Mechanics',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Engineering Mathematics III',
                  'Material Science',
                  'Engineering Mechanics',
                  'Metrology',
                  'Applied Thermodynamics',
                  'Computer Aided Drawing',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Probability And Statistics',
                  'Manufacturing And Production Processes',
                  'Strength of Materials',
                  'Instrumentation and Measurement',
                  'Fluid Mechanics',
                  'Electrical Machine',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Numerical Methods',
                  'Control System',
                  'Organization and Management',
                  'Mechanics of Solids',
                  'Heat Transfer',
                  'Fluid Machines',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Communication English',
                  'Machine Design I',
                  'Industrial Engineering and Management',
                  'Theory of Mechanism and Machine I',
                  'Internal Combustion Engines',
                  'Energy Resources',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'Machine Design II',
                  'Theory of Mechanism and Machine II',
                  'Engineering Economics',
                  'Turbo Machines',
                  'Environment and Pollution Control',
                  'Industrial Attachment',
                  'Elective I : AUTOMOBILE TECHNOLOGY',
                  'Elective I : BASIC AIRCRAFT & AIR FRAME',
                  'Elective I : BASICS OF MICRO HYDROPOWER PLANT',
                  'Elective I : GASEOUS BIO-FUEL',
                  'Elective I : HEATING VENTILATING AND AIR CONDITIONING',
                  'Elective I : OPERATIONS RESEARCH/MANAGEMENT SCIENCE',
                  'Elective I : TOOL DESIGN FOR ECONOMIC PRODUCTION',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Elective I',
                  'Project Engineering',
                  'Finite Element Method',
                  'Engineering Professional Practice',
                  'Project I & II',
                  'Elective II : AIRCRAFT DYNAMICS',
                  'Elective II : ECONOMICS OF AUTOMOBILE',
                  'Elective II : DESIGN OF MICRO HYDROPOWER SYSTEM',
                  'Elective II : AUTOMOBILE ENGINEERING ENTERPRISES',
                  'Elective II : LIQUID BIO-FUEL',
                  'Elective II : QUALITY MANAGEMENT',
                  'Elective II : REFRIGERATION',
                  'Elective II : SYSTEM DESIGN AND SIMULATION',
                  'Elective III : ADVANCE MECHANICAL DESIGN',
                  'Elective III : AVIONICS',
                  'Elective III : AN INTRODUCTION TO CONSTRUCTION EQUIPMENT',
                  'Elective III : CONSTRUCTION OF MICRO HYDROPOWER SYSTEM',
                  'Elective III : SOLID BIO FUEL',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
