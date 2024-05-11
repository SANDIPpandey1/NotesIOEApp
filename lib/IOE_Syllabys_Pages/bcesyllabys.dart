import 'package:flutter/material.dart';
import 'package:ioe/screens/components/insidecard.dart';
import 'package:ioe/screens/otherpageappbar.dart'; // Import InsideCard

class BCESyllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'BCE Syllabus',
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
                  'Basic Electronics Engineering',
                  'Engineering Drawing II',
                  'Engineering Physics',
                  'Applied Mechanics',
                  'Basic Electrical Engineering',
                ],
              ),
              InsideCard(
                semester: 'Third Semester',
                subjects: [
                  'Civil Engineering Materials',
                  'Engineering Mathematics III',
                  'Applied Mechanics (Dynamics)',
                  'Engineering Geology I',
                  'Strength of Materials',
                  'Surveying I',
                  'Fluid Mechanics',
                ],
              ),
              InsideCard(
                semester: 'Fourth Semester',
                subjects: [
                  'Hydraulics',
                  'Surveying II',
                  'Theory of Structures I',
                  'Probability and Statistics',
                  'Engineering Geology II',
                  'Building Drawing',
                  'Soil Mechanics',
                ],
              ),
              InsideCard(
                semester: 'Fifth Semester',
                subjects: [
                  'Theory of Structure II',
                  'Water Supply Engineering',
                  'Engineering Hydrology',
                  'Concrete Technology and Masonry Structure',
                  'Numerical Methods',
                  'Foundation Engineering',
                  'Survey Camp',
                ],
              ),
              InsideCard(
                semester: 'Sixth Semester',
                subjects: [
                  'Design of Steel and Timber Structure',
                  'Communication English',
                  'Engineering Economics',
                  'Building Technology',
                  'Sanitary Engineering',
                  'Transportation Engineering',
                  'Irrigation and Drainage',
                ],
              ),
              InsideCard(
                semester: 'Seventh Semester',
                subjects: [
                  'Hydropower Engineering',
                  'Project Engineering',
                  'Transportation Engineering II',
                  'Estimating & Costing',
                  'Design of RCC Structure',
                  'Project (Part I)',
                  'Elective I: Bio-Engineering',
                  'Elective I: Water and Wastewater Quality Analysis',
                  'Elective I: Soil Conservation and Watershed Management',
                  'Elective I: Trail Suspension Bridge',
                  'Elective I: Structural Dynamics',
                  'Elective I: Seismic Resistant Design of Masonry Structures',
                  'Elective I: Solid Waste Management',
                  'Elective I: Ropeway Engineering',
                  'Elective I: Transportation Planning and Engineering',
                  'Elective I: Rock Engineering',
                  'Elective I: Community Development and Participatory Rural Approach',
                  'Elective I: Earth Hazard',
                ],
              ),
              InsideCard(
                semester: 'Eighth Semester',
                subjects: [
                  'Technology Environment and Society',
                  'Construction Management',
                  'Project (Part II)',
                  'Engineering Professional Practice',
                  'Computational Techniques in Civil Engineering',
                  'Elective II: Climate Change',
                  'Elective II: Environmental Management System',
                  'Elective II: Groundwater Engineering',
                  'Elective II: Seismic Risk Assessment',
                  'Elective II: Water Quality Management',
                  'Elective II: Traffic and Transport Modeling',
                  'Elective II: Traffic Engineering and Management',
                  'Elective II: Rural Road Engineering',
                  'Elective II: Rock Slope Engineering',
                  'Elective II: Rock Mechanics',
                  'Elective II: Public Health and Risk Assessment',
                  'Elective II: Vulnerability Assessment and Retrofitting Techniques',
                  'Elective II: Design of Bridges',
                  'Elective II: Introduction to Prestressed Concrete Analysis and Design',
                  'Elective II: Post Disaster Water and Sanitation Management',
                  'Elective II: Hill Irrigation Engineering',
                  'Elective II: Geotechnical Earthquake Engineering',
                  'Elective II: Advanced Geotechnical Engineering',
                  'Elective II: Earthquake Resistant Design of Structures',
                  'Elective II: Domestic Water and Wastewater Engineering and Management',
                  'Elective III: Construction Safety Management',
                  'Elective III: Procurement Management',
                  'Elective III: Time Series Analysis',
                  'Elective III: Environmental Impact Assessment (EIA)',
                  'Elective III: GIS Application and Remote Sensing',
                  'Elective III: Disaster Risk Management',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
