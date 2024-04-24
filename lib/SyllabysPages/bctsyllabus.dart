import 'package:flutter/material.dart';

class BCTSyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BCT Syllabus',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SemesterCard(
              semester: 'First Semester',
              subjects: [
                'Engineering Drawing I [ME 401]',
                'Engineering Physics [SH 402]',
                'Applied Mechanics [CE 401]',
                'Basic Electrical Engineering [EE 401]',
                'Engineering Mathematics I [SH 401]',
                'Computer Programming [CT 401]',
              ],
            ),
            SemesterCard(
              semester: 'Second Semester',
              subjects: [
                'Engineering Mathematics II [SH 451]',
                'Engineering Drawing II [ME 451]',
                'Basic Electronics Engineering [EX 451]',
                'Engineering Chemistry [SH 453]',
                'Fundamental of Thermodynamics & Heat Transfer [ME 452]',
                'Workshop Technology [ME 453]',
              ],
            ),
            SemesterCard(
              semester: 'Third Semester',
              subjects: [
                'Engineering Mathematics III [SH 501]',
                'Object Oriented Programming [CT 501]',
                'Electric Circuit Theory [EE 501]',
                'Electrical Engineering Material [EE 502]',
                'Electronics Devices and Circuit [EX 501]',
                'Digital Logic [EX 502]',
                'Electromagnetics [EX 503]',
              ],
            ),
            SemesterCard(
              semester: 'Fourth Semester',
              subjects: [
                'Numerical Method [SH 553]',
                'Applied Mathematics [SH 551]',
                'Instrumentation I [EE 552]',
                'Power System Analysis I [EE 555]',
                'Microprocessor [EX 551]',
                'Discrete Structure [CT 551]',
                'Electrical Machine [EE 554]',
              ],
            ),
            SemesterCard(
              semester: 'Fifth Semester',
              subjects: [
                'Communication English [SH 601]',
                'Probability and Statistics [SH 602]',
                'Computer organization and Architecture [CT 603]',
                'Control System [EE 602]',
                'Instrumentation II [EX 602]',
                'Computer Graphics [EX 603]',
                'Advanced Electronics [EX 601]',
              ],
            ),
            SemesterCard(
              semester: 'Sixth Semester',
              subjects: [
                'Engineering Economics [CE 655]',
                'Signal Analysis [EX 651]',
                'Communication System I [EX 652]',
                'Antenna and Propagation [EX 653]',
                'Embedded System [CT 655]',
                'Computer Networks [CT 657]',
                'Minor Project [EX 654]',
              ],
            ),
            SemesterCard(
              semester: 'Seventh Semester',
              subjects: [
                'ICT Project Management [CT 701]',
                'Organization and Management [ME 708]',
                'Energy Environment and Society [EX 701]',
                'Filter Design [EX 704]',
                'Telecommunication [EX 703]',
                'Project (Part A) [EX 707]',
                'Elective I : Advanced Java [CT 725 01]',
                'Elective I : Aeronautical Telecom [EX 725 04]',
                'Elective I : Biomedical Instrumentation',
                'Elective I : Data Mining',
                'Elective I : Embedded System',
                'Elective I : Image Processing [CT 725 04]',
                'Elective I : Operating System',
                'Elective I : Radar Technology',
                'Elective I : Web Technology [CT 725 05]',
                'Elective I : Satellite Communication',
              ],
            ),
            SemesterCard(
              semester: 'Eighth Semester',
              subjects: [
                'Engineering Professional Practice [CE 752]',
                'Digital Signal Processing (DSP) [EX 753]',
                'Wireless Communication [EX 751]',
                'RF and Microwave Engineering [EX 752]',
                'Project (Part B) [EX 755]',
                'Elective II : ADVANCED COMPUTER ARCHITECTURE [CT 765 04]',
                'Elective II : AGILE SOFTWARE DEVELOPMENT [CT 765 02]',
                'Elective II : BIG DATA TECHNOLOGIES [CT 765 07]',
                'Elective II : BROADCAST ENGINEERING [EX 765 03]',
                'Elective II : NETWORKING WITH IPV6 [CT 765 03]',
                'Elective II : OPTICAL FIBER COMMUNICATION SYSTEM [EX 765 01]',
                'Elective III : ENTERPRISE APPLICATION DESIGN AND DEVELOPMENT [CT 785 04]',
                'Elective III : MULTIMEDIA SYSTEM [CT 785 03]',
                'Elective III : GEOGRAPHICAL INFORMATION SYSTEM [CT 785 07]',
                'Elective III : POWER ELECTRONICS [EE 785 07]',
                'Elective III : REMOTE SENSING [CT 785 01]',
                'Elective III : XML: FOUNDATIONS, TECHNIQUES AND APPLICATIONS [CT 785 05]',
                'Elective III : SPEECH PROCESSING [CT 785 08]',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SemesterCard extends StatelessWidget {
  final String semester;
  final List<String> subjects;

  const SemesterCard({
    required this.semester,
    required this.subjects,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              semester,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: subjects.map((subject) {
                return Text(
                  subject,
                  style: TextStyle(fontSize: 16),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
