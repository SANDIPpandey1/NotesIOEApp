import 'package:flutter/material.dart';

class BELSyllabus extends StatelessWidget {
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
              semester: 'Semester 1',
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
              semester: 'Semester 2',
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
              semester: 'Semester 3',
              subjects: [
                'Engineering Mathematics III [SH 501]',
                'Object Oriented Programming [CT 501]',
                'Electric Circuit Theory [EE 501]',
                'Electronics Devices and Circuit [EX 501]',
                'Digital Logic [EX 502]',
                'Electrical Engineering Material [EE 502]',
                'Electromagnetics [EX 503]',
              ],
            ),
            SemesterCard(
              semester: 'Semester 4',
              subjects: [
                'Numerical Method [SH 553]',
                'Applied Mathematics [SH 551]',
                'Instrumentation I [EE 552]',
                'Microprocessor [EX 551]',
                'Power System Analysis I [EE 555]',
                'Electrical Machines I [EE 550]',
              ],
            ),
            SemesterCard(
              semester: 'Semester 5',
              subjects: [
                'Electric Machines – II [EE 601]',
                'Electric Machine Design [EE 603]',
                'Power System Analysis II [EE 605]',
                'Communication English [SH 601]',
                'Probability and Statistics [SH 602]',
                'Control System [EE 602]',
                'Instrumentation II [EX 602]',
              ],
            ),
            SemesterCard(
              semester: 'Semester 6',
              subjects: [
                'Engineering Economics [CE 655]',
                'Hydro Power [CE 660]',
                'Switchgear & Protection [EE 651]',
                'Digital Control System [EE 652]',
                'Industrial Power Distribution & Illumination [EE 653]',
                'Signal Analysis [EX 651]',
              ],
            ),
            SemesterCard(
              semester: 'Semester 7',
              subjects: [
                'Project Engineering [CE 701]',
                'Technology Environment and Society [CE 708]',
                'Power Electronics [EE 701]',
                'Organization and Management [ME 708]',
                'Utilization of Electrical Energy [EE 702]',
                'Power Plant Equipment [EE 703]',
                'Project (Part A) [EE 707]',
                'Elective I : Energy Electrical System Management',
                'Elective I : Reliability Engineering',
                'Elective I : Rural Electrification',
              ],
            ),
            SemesterCard(
              semester: 'Semester 8',
              subjects: [
                'Engineering Professional Practice [CE 752]',
                'High Voltage Engineering [EE 751]',
                'Power Plant Design [EE 753]',
                'Transmission and Distribution System Design [EE 754]',
                'Project (Part B) [EE 755]',
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
