import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BCTSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCT Syllabus',
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
                  'Applied Mechanics',
                  'Basic Electrical Engineering',
                  'Engineering Physics',
                  'Engineering Drawing I',
                  'Engineering Mathematics I',
                  'Computer Programming',
                ],
              ),
              InsideCard(
                semester: 'Second Semester',
                subjects: [
                  'Engineering Mathematics II',
                  'Engineering Drawing II',
                  'Basic Electronics Engineering',
                  'Engineering Chemistry',
                  'Fundamental of Thermodynamics & Heat Transfer',
                  'Workshop Technology',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Engineering Mathematics III',
                  'Object Oriented Programming',
                  'Electric Circuit Theory',
                  'Theory of Computation',
                  'Electronics Devices and Circuit',
                  'Digital Logic',
                  'Electromagnetics',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Numerical Method',
                  'Applied Mathematics',
                  'Instrumentation I',
                  'Data Structure and Algorithm',
                  'Microprocessor',
                  'Discrete Structure',
                  'Electrical Machine',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Communication English',
                  'Probability and Statistics',
                  'Computer organization and Architecture',
                  'Software Engineering',
                  'Computer Graphics',
                  'Instrumentation II',
                  'Data Communication',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Engineering Economics',
                  'Object Oriented Analysis and Design',
                  'Artificial Intelligence',
                  'Operating System',
                  'Embedded System',
                  'Database Management System',
                  'Minor Project',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'ICT Project Management',
                  'Organization and Management',
                  'Energy Environment and Society',
                  'Distributed System',
                  'Computer Networks and Security',
                  'Digital Signal Analysis',
                  'Project (Part A)',
                  'Elective I : Advanced Java',
                  'Elective I : Aeronautical Telecom',
                  'Elective I : Biomedical Instrumentation',
                  'Elective I : Data Mining',
                  'Elective I : Embedded System',
                  'Elective I : Image Processing',
                  'Elective I : Microwave Engineering',
                  'Elective I : Operating System',
                  'Elective I : Radar Technology',
                  'Elective I : Satellite Communication',
                  'Elective I : Web Technology',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Engineering Professional Practice',
                  'Information Systems',
                  'Internet and Intranet',
                  'Project (Part B)',
                  'Simulation and Modelling',
                  'Elective II : ADVANCED COMPUTER ARCHITECTURE',
                  'Elective II : AGILE SOFTWARE DEVELOPMENT',
                  'Elective II : BIG DATA TECHNOLOGIES',
                  'Elective II : BROADCAST ENGINEERING',
                  'Elective II : DATABASE MANAGEMENT SYSTEMS',
                  'Elective II : NETWORKING WITH IPV6',
                  'Elective II : OPTICAL FIBER COMMUNICATION SYSTEM',
                  'Elective II : WIRELESS COMMUNICATIONS',
                  'Elective III : ARTIFICIAL INTELLIGENCE',
                  'Elective III : ENTERPRISE APPLICATION DESIGN AND DEVELOPMENT',
                  'Elective III : GEOGRAPHICAL INFORMATION SYSTEM',
                  'Elective III : MULTIMEDIA SYSTEM',
                  'Elective III : POWER ELECTRONICS',
                  'Elective III : REMOTE SENSING',
                  'Elective III : SPEECH PROCESSING',
                  'Elective III : TELECOMMUNICATION',
                  'Elective III : XML: FOUNDATIONS, TECHNIQUES AND APPLICATIONS',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
