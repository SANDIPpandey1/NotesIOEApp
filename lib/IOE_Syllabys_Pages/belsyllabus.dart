import 'package:flutter/material.dart';
import 'package:ioe/screens/components/insidecard.dart';

class BELSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BEL Syllabus',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InsideCard(
              semester: 'Semester 1',
              subjects: [
                'Engineering Drawing I',
                'Engineering Physics',
                'Applied Mechanics',
                'Basic Electrical Engineering',
                'Engineering Mathematics I',
                'Computer Programming',
              ],
            ),
            InsideCard(
              semester: 'Semester 2',
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
              semester: 'Semester 3',
              subjects: [
                'Engineering Mathematics III',
                'Object Oriented Programming',
                'Electric Circuit Theory',
                'Electronics Devices and Circuit',
                'Digital Logic',
                'Electrical Engineering Material',
                'Electromagnetics',
              ],
            ),
            InsideCard(
              semester: 'Semester 4',
              subjects: [
                'Numerical Method',
                'Applied Mathematics',
                'Instrumentation I',
                'Microprocessor',
                'Power System Analysis I',
                'Electrical Machines I',
              ],
            ),
            InsideCard(
              semester: 'Semester 5',
              subjects: [
                'Electric Machines – II',
                'Electric Machine Design',
                'Power System Analysis II',
                'Communication English',
                'Probability and Statistics',
                'Control System',
                'Instrumentation II',
              ],
            ),
            InsideCard(
              semester: 'Semester 6',
              subjects: [
                'Engineering Economics',
                'Hydro Power',
                'Switchgear & Protection',
                'Digital Control System',
                'Industrial Power Distribution & Illumination',
                'Signal Analysis',
              ],
            ),
            InsideCard(
              semester: 'Semester 7',
              subjects: [
                'Project Engineering',
                'Technology Environment and Society',
                'Power Electronics',
                'Organization and Management',
                'Utilization of Electrical Energy',
                'Power Plant Equipment',
                'Project (Part A)',
                'Elective I : Energy Electrical System Management',
                'Elective I : Reliability Engineering',
                'Elective I : Rural Electrification',
              ],
            ),
            InsideCard(
              semester: 'Semester 8',
              subjects: [
                'Engineering Professional Practice',
                'High Voltage Engineering',
                'Power Plant Design',
                'Transmission and Distribution System Design',
                'Project (Part B)',
                'Elective II : Advanced Power System Analysis',
                'Elective II : Applied Photovoltaic',
                'Elective III : Artificial Neural Network',
                'Elective III : Micro-Hydro Power',
                'Elective III : Wind Energy Conversion System',
                'Elective II : BIOMEDICAL INSTRUMENTATION',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
