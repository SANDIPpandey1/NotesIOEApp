import 'package:flutter/material.dart';

class BCESyllabus extends StatelessWidget {
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
                'Engineering Mathematics I [SH 401]',
                'Fundamental of Thermodynamics & Heat Transfer [ME 402]',
                'Engineering Chemistry [SH 403]',
                'Workshop Technology [ME 403]',
                'Computer Programming [CT 401]',
              ],
            ),
            SemesterCard(
              semester: 'Second Semester',
              subjects: [
                'Basic Electronics Engineering [EX 451]',
                'Engineering Drawing II [ME 451]',
                'Engineering Physics [SH 452]',
                'Applied Mechanics [CE 451]',
                'Basic Electrical Engineering [EE 453]',
                'Engineering Mathematics II [SH 451]',
              ],
            ),
            SemesterCard(
              semester: 'Third Semester',
              subjects: [
                'Civil Engineering Materials [CE 506]',
                'Applied Mechanics (Dynamics) [CE 503]',
                'Engineering Geology I [CE 501]',
                'Strength of Materials [CE 502]',
                'Surveying I [CE 504]',
                'Fluid Mechanics [CE 505]',
                'Engineering Mathematics III [SH 501]',
              ],
            ),
            SemesterCard(
              semester: 'Fourth Semester',
              subjects: [
                'Hydraulics [CE 555]',
                'Surveying II [CE 554]',
                'Theory of Structures I [CE 551]',
                'Probability And Statistics [SH 552]',
                'Engineering Geology II [CE 553]',
                'Building Drawing [CE 556]',
                'Soil Mechanics [CE 552]',
              ],
            ),
            SemesterCard(
              semester: 'Fifth Semester',
              subjects: [
                'Theory of Structure II [CE 601]',
                'Water Supply Engineering [CE 605]',
                'Engineering Hydrology [CE 606]',
                'Concrete Technology and Masonry Structure [CE 603]',
                'Numerical Methods [SH 603]',
                'Foundation Engineering [CE 602]',
                'Survey Camp [CE 604]',
              ],
            ),
            SemesterCard(
              semester: 'Sixth Semester',
              subjects: [
                'Design of Steel and Timber Structure [CE 651]',
                'Communication English [SH 651]',
                'Engineering Economics [CE 655]',
                'Building Technology [CE 652]',
                'Sanitary Engineering [CE 656]',
                'Transportation Engineering [CE 653]',
                'Irrigation and Drainage [CE 654]',
              ],
            ),
            SemesterCard(
              semester: 'Seventh Semester',
              subjects: [
                'Hydropower Engineering [CE 704]',
                'Project Engineering [CE 701]',
                'Transportation Engineering II [CE 703]',
                'Estimating & Costing [CE 705]',
                'Design of RCC Structure [CE 702]',
                'Project (Part I) [CE 707]',
                'Elective I: Bio-Engineering [CE 72504]',
                'Elective I: Water and Wastewater Quality Analysis [CE 72512]',
                'Elective I: Soil Conservation and Watershed Management [CE 72506]',
                'Elective I: Trail Suspension Bridge [CE 72503]',
                'Elective I: Structural Dynamics [CE 72501]',
                'Elective I: Seismic Resistant Design of Masonry Structures [CE 72502]',
                'Elective I: Solid Waste Management [CE 72511]',
                'Elective I: Ropeway Engineering [CE 72510]',
                'Elective I: Transportation Planning and Engineering [CE 72509]',
                'Elective I: Rock Engineering [CE 72505]',
                'Elective I: Community Development and Participatory Rural Approach [CE 72513]',
                'Elective I: Earth Hazard [CE 72507]',
              ],
            ),
            SemesterCard(
              semester: 'Eighth Semester',
              subjects: [
                'Technology Environment and Society [CE 753]',
                'Construction Management [CE 754]',
                'Project (Part II) [CE 755]',
                'Engineering Professional Practice [CE 752]',
                'Computational Techniques in Civil Engineering [CE 751]',
                'Elective II: Climate Change [CE 76516]',
                'Elective II: Environmental Management System [CE 76517]',
                'Elective II: Groundwater Engineering [CE 76509]',
                'Elective II: Seismic Risk Assessment [CE 76505]',
                'Elective II: Water Quality Management [CE 76518]',
                'Elective II: Traffic and Transport Modeling [CE 76510]',
                'Elective II: Traffic Engineering and Management [CE 76513]',
                'Elective II: Rural Road Engineering [CE 76514]',
                'Elective II: Rock Slope Engineering [CE 76507]',
                'Elective II: Rock Mechanics [CE 76511]',
                'Elective II: Public Health and Risk Assessment [CE 76520]',
                'Elective II: Vulnerability Assessment and Retrofitting Techniques [CE 76504]',
                'Elective II: Design of Bridges [CE 76502]',
                'Elective II: Introduction to Prestressed Concrete Analysis and Design [CE 76521]',
                'Elective II: Post Disaster Water and Sanitation Management [CE 76519]',
                'Elective II: Hill Irrigation Engineering [CE 76508]',
                'Elective II: Geotechnical Earthquake Engineering [CE 76503]',
                'Elective II: Advanced Geotechnical Engineering [CE 76512]',
                'Elective II: Earthquake Resistant Design of Structures [CE 76501]',
                'Elective II: Domestic Water and Wastewater Engineering and Management [CE 78515]',
                'Elective III: Construction Safety Management [CE 78502]',
                'Elective III: Procurement Management [CE 78503]',
                'Elective III: Time Series Analysis [CE 78505]',
                'Elective III: Environmental Impact Assessment (EIA) [CE 78504]',
                'Elective III: GIS Application and Remote Sensing [CE 78501]',
                'Elective III: Disaster Risk Management [CE 78506]',
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
