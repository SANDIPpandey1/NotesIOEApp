import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class GeomaticsEngineeringSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'Geomatics Engineering Syllabus',
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
                  'Engineering Chemistry',
                  'Engineering Drawing I',
                  'Workshop Technology',
                  'Engineering Mathematics I',
                  'Fundamental of Thermodynamics & Heat Transfer',
                  'Computer Programming',
                ],
              ),
              InsideCard(
                semester: 'Second Semester',
                subjects: [
                  'Applied Mechanics',
                  'Basic Electrical Engineering',
                  'Basic Electronics Engineering',
                  'Engineering Drawing II',
                  'Engineering Physics',
                  'Engineering Mathematics II',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Engineering Mathematics III',
                  'Probability And Statistics',
                  'Fundamental of Surverying I',
                  'Object Oriented Programming',
                  'Fundamental of Civil Engineering',
                  'Applied Physics',
                  'Applied Mechanics (Dynamics)',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Numerical Method',
                  'Fundamental of Geographic Information Systems',
                  'Fundamental of Surverying II',
                  'Field Survey I',
                  'Computing Techniques for Geomatics Engineering',
                  'Applied Mathematics',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Adjustment of Observations',
                  'Cadastre',
                  'Fundamentals of Geodesy',
                  'Principles of Photogrammetry',
                  'Signals and Transforms',
                  'Survery Networks',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Engineering Economics',
                  'Communication English',
                  'Remote Sensing',
                  'Geodetic Positioning and Gravity Field in Geodesy',
                  'Field Survey II',
                  'Cartography and Geo-Information Visualization',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'Satellite Positioning',
                  'Project Work I',
                  'Project Engineering',
                  'Design and Implementation of Geospatial Information Systems',
                  'Land Administration and Management',
                  'Elective I : Community Development & Participatory Rural Approach',
                  'Elective I : Soil Conservation & Watershed Management',
                  'Elective I : Application of GIS with Python',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Digital Terrain Modeling',
                  'Engineering Professional Practice',
                  'Project Work II',
                  'Technology Environment and Society',
                  'Elective II : Digital Imaging & Application',
                  'Elective II : Environmental Modeling',
                  'Elective II : Land Use Planning',
                  'Elective III : Civil Engineering Construction Survey',
                  'Elective III : Land Law',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
