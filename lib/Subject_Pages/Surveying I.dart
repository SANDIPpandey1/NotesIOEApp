import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SurveyingI extends StatelessWidget {
  final int initialTabIndex;
  SurveyingI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Surveying I',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                  child: Text(
                'Syllabus',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Tab(
                  child: Text(
                'Old Questions',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
            indicatorColor: kblue,
            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          //physics: NeverScrollableScrollPhysics(),
          children: [
            _buildNotesTab(context),
            _buildSyllabusTab(),
            _buildOldQuestionsTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        SizedBox(height: 20),
        InsideButtons(
          text: 'Beam And Frame',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Kinetics And Kinematics',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Truss',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/Polarization.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Centroid',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/एक-चिहान-उपन्यास-.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Friction',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
        // Add more InsideButtons as needed
      ],
    );
  }

  Widget _buildSyllabusTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height: 10),
          SectionHeader(text: 'Marks Distribution'),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Chapters')),
                    ),
                    TableCell(
                      child: Center(child: Text('Hours')),
                    ),
                    TableCell(
                      child: Center(child: Text('Marks')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('45')),
                    ),
                    TableCell(
                      child: Center(child: Text('80')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          //SizedBox(height: 20),
          SectionHeader(text: 'Introduction (2 hours)'),
          SubSection(text: 'History of Surveying'),
          SubSection(text: 'Principle of surveying'),
          SubSection(text: 'Disciplines of surveying and their significance'),

          SectionHeader(text: 'Distance Measurements (5 hours)'),
          SubSection(text: 'Types of Measurements'),
          SubSection(
              text:
                  'Units of measurements, System of units, significant figures, rounding of numbers'),
          SubSection(
              text: 'Distance measurements techniques and instruments used'),
          SubSection(
              text:
                  'Errors, type of errors and sources of errors in making measurements, precision and accuracy'),
          SubSection(text: 'Introduction of scales used in surveying'),
          SubSection(
              text: 'Various corrections for linear distance measurements'),

          SectionHeader(text: 'Chain Survey (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text:
                  'Principle and methods of chain survey, terms used in chain surveying'),
          SubSection(text: 'Field instruction of chain survey'),

          SectionHeader(text: 'The Compass (7 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'The Brunton Compass, The bearings, azimuth'),
          SubSection(
              text:
                  'Local attraction, magnetic declination, typical compass problem'),
          SubSection(text: 'Compass traversing, errors and adjustment'),
          SubSection(text: 'Traverse plotting'),

          SectionHeader(text: 'Leveling (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Basic principle and importance of leveling'),
          SubSection(text: 'Use of hand level'),
          SubSection(
              text:
                  'Level and level rods, turning point/turning plate, rod bubbles'),
          SubSection(text: 'Two peg test'),
          SubSection(text: 'Temporary and permanent adjustment of level'),
          SubSection(text: 'Booking and calculation of reduced level'),
          SubSection(text: 'Balancing back sight and fore sight'),
          SubSection(text: 'Curvature and refraction'),
          SubSection(
              text:
                  'Classification of leveling: differential leveling, fly leveling, profile leveling'),
          SubSection(
              text: 'Cross sectioning, reciprocal leveling, precise leveling'),
          SubSection(text: 'Adjustment of level circuits'),
          SubSection(text: 'Sources of errors in leveling'),

          SectionHeader(text: 'Plane Table Survey (2 hours)'),
          SubSection(text: 'Principles and methods of plane tabling'),
          SubSection(text: 'Advantages and disadvantages of plane tabling'),

          SectionHeader(text: 'Transit and Theodolite (5 hours)'),
          SubSection(text: 'Basic definition'),
          SubSection(
              text:
                  'Construction principle and parts of transit and theodolite'),
          SubSection(text: 'Temporary adjustment of transit and theodolite'),
          SubSection(
              text:
                  'Reading the transit and theodolite vernier and micrometer'),
          SubSection(
              text:
                  'Measurement of horizontal and vertical angles by direction and repetition methods'),
          SubSection(text: 'Errors in transit and theodolite'),
          SubSection(text: 'Introduction on field application'),

          SectionHeader(text: 'Triangulation and Trilateration (5 hours)'),
          SubSection(text: 'Basic definition'),
          SubSection(text: 'Principles of triangulation and tri-lateration'),
          SubSection(text: 'Classification of triangulation system'),
          SubSection(text: 'Introduction on field application'),

          SectionHeader(text: 'Computation of Area and Volume (5 hours)'),
          SubSection(text: 'Basic definition'),
          SubSection(text: 'Area by division into simple figures'),
          SubSection(
              text:
                  'Area by coordinates, area by double-meridian distance method'),
          SubSection(text: 'Trapezoidal rule, Simpson’s 1/3 rule'),
          SubSection(
              text:
                  'Volume by average end area, prismoidal formula, prismoidal correction, curvature correction, volume by transition area'),
          SubSection(
              text:
                  'The mass diagram, overhaul, limit of economic overhaul and determination of overhaul'),

          SectionHeader(text: 'Measurement (EDM)'),
          SubSection(text: 'Basic Introduction'),
          SubSection(text: 'Classification of EDM instruments'),
          SubSection(text: 'Propagation of electromagnetic Energy'),
          SubSection(text: 'Principle of Electronic Distance measurement'),
          SubSection(
              text: 'Electro optical, microwave and total station instruments'),

          SectionHeader(text: 'Field/Practical:'),
          SubSection(
              text: 'Horizontal, Vertical and slope distance measurement'),
          SubSection(text: 'Area measurement by using chain, tape and compass'),
          SubSection(text: 'Two peg test and differential leveling'),
          SubSection(text: 'Profile and cross section Leveling'),
          SubSection(
              text:
                  'Measuring horizontal and vertical angles by direction and repetition method'),
          SubSection(
              text:
                  'Two sets of horizontal angles by direction of a polygon figures'),
          SubSection(text: 'EDM demo'),
          SubSection(text: 'Area measurement computation of practical no 2'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'Surveying – A. Banister and S. Raymond, ELBS'),
          SubSection(
              text:
                  'Elementary Surveying – Paul R. Wolf, Russel C. Brinker – Harper Collins College Publishers'),
          SubSection(
              text: 'BC Punmia – Surveying, Laxmi Publication, New Delhi'),
          SubSection(
              text:
                  'SK Duggal – Surveying – Tata Mc Graw Hill Education Private Limited New Delhi')

          // Syllabus content here
        ],
      ),
    );
  }

  Widget _buildOldQuestionsTab(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            InsideButtons(
              text: 'Old Questions',
              fileSize: '1',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Surveying-I.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
