import 'package:flutter/material.dart';
import 'package:ioe/screens/components/insidecard.dart';

class BEXSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BEX Syllabus',
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
              semester: 'First Semester',
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
                'Electrical Engineering Material',
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
                'Power System Analysis I',
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
                'Control System',
                'Instrumentation II',
                'Computer Graphics',
                'Advanced Electronics',
              ],
            ),
            InsideCard(
              semester: 'Sixth Semester',
              subjects: [
                'Engineering Economics',
                'Signal Analysis',
                'Communication System I',
                'Antenna and Propagation',
                'Embedded System',
                'Computer Networks',
                'Minor Project',
              ],
            ),
            InsideCard(
              semester: 'Seventh Semester',
              subjects: [
                'ICT Project Management',
                'Organization and Management',
                'Energy Environment and Society',
                'Filter Design',
                'Telecommunication',
                'Project (Part A)',
                'Communication System II',
                'Elective I : Advanced Java',
                'Elective I : Aeronautical Telecom',
                'Elective I : Biomedical Instrumentation',
                'Elective I : Data Mining',
                'Elective I : Embedded System',
                'Elective I : Image Processing',
                'Elective I : Operating System',
                'Elective I : Radar Technology',
                'Elective I : Web Technology',
                'Elective I : Satellite Communication',
              ],
            ),
            InsideCard(
              semester: 'Eighth Semester',
              subjects: [
                'Engineering Professional Practice',
                'Digital Signal Processing (DSP)',
                'Wireless Communication',
                'RF and Microwave Engineering',
                'Project (Part B)',
                'Elective II : ADVANCED COMPUTER ARCHITECTURE',
                'Elective II : AGILE SOFTWARE DEVELOPMENT',
                'Elective II : BIG DATA TECHNOLOGIES',
                'Elective II : BROADCAST ENGINEERING',
                'Elective II : NETWORKING WITH IPV6',
                'Elective II : OPTICAL FIBER COMMUNICATION SYSTEM',
                'Elective III : ENTERPRISE APPLICATION DESIGN AND DEVELOPMENT',
                'Elective III : MULTIMEDIA SYSTEM',
                'Elective III : GEOGRAPHICAL INFORMATION SYSTEM',
                'Elective III : POWER ELECTRONICS',
                'Elective III : REMOTE SENSING',
                'Elective III : XML: FOUNDATIONS, TECHNIQUES AND APPLICATIONS',
                'Elective III : SPEECH PROCESSING',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
