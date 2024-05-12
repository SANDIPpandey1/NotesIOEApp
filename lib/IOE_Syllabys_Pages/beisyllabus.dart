import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BEISyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BEI Syllabus',
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
                  'Engineering Physics',
                  'Basic Electrical Engineering',
                  'Digital Logic',
                  'Engineering Mathematics I',
                  'Computer Programming',
                ],
              ),
              InsideCard(
                semester: 'Second Semester',
                subjects: [
                  'Engineering Mathematics II',
                  'Engineering Chemistry',
                  'Workshop Technology',
                  'Object Oriented Programming',
                  'Microprocessor',
                  'Electric Circuits and Machines',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Probability and Statistics',
                  'Engineering Mathematics III',
                  'Electronics Devices and Circuit',
                  'Instrumentation (BEI)',
                  'Control System',
                  'Electromagnetics',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Applied Mathematics',
                  'Numerical Method',
                  'Data Structure and Algorithm',
                  'Computer Graphics',
                  'Discrete Structure',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Computer organization and Architecture',
                  'Engineering Economics',
                  'Database Management System',
                  'Operating System',
                  'Filter Design',
                  'Computer Networks',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Communication English',
                  'Embedded System',
                  'Antenna and Propagation',
                  'Minor Project',
                  'Communication System I',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'Artificial Intelligence',
                  'Digital Signal Analysis and Processing',
                  'Organization and Management',
                  'RF and Microwave Engineering',
                  'Wireless Communication',
                  'Project (Part A)',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Digital Signal Processing (DSP)',
                  'Project (Part B)',
                  'Engineering Professional Practice',
                  'Information Systems',
                  'Telecommunication',
                  'Energy Environment and Society',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
