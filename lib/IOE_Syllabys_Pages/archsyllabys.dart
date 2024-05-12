import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class BArchSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'Architecture Syllabus',
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
                  'Basic Design I',
                  'Introduction to Architecture',
                  'Drafting I',
                  'Free Hand Sketching I',
                  'Building Materials I',
                  'Engineering Mathematics I',
                ],
              ),
              InsideCard(
                semester: 'Second Semester',
                subjects: [
                  'Engineering Mathematics II',
                  'Drafting II',
                  'Basic Design II',
                  'Arts & Graphic',
                  'Building Construction I',
                  'Free Hand Sketching II',
                  'Basic Skill Workshop',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Design Studio III',
                  'History of Architecture I',
                  'Building Materials II',
                  'Building Construction II',
                  'Building Science I',
                  'Structure I',
                  'Design Theory I',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Design Studio IV',
                  'History of Architecture II',
                  'Building Construction III',
                  'Design Theory II',
                  'Structure II',
                  'Surveying',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Design Studio V',
                  'Contemporary Architecture',
                  'Computer Aided Design & Drafting',
                  'Building Construction IV',
                  'Working Drawing',
                  'Building Services I',
                  'Building Services II',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Design Studio VI',
                  'Urban & Settlement Planning',
                  'Building Science II',
                  'Structure III',
                  'Specifications',
                  'Estimating & Costing',
                  'Sociology',
                  'Building Economics',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'Practicum',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Architectural Conservation',
                  'Design Studio VII',
                  'Construction Management',
                  'Elective I',
                  'Communications (English & Nepali)',
                  'Structure IV',
                  'Building Services III',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
