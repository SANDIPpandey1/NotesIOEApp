import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EstimatingandCosting extends StatelessWidget {
  final int initialTabIndex;
  EstimatingandCosting({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Estimating and Costing',
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                    TableCell(
                      child: Center(child: Text('35')),
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
          SectionHeader(text: 'Introduction(3 hours)'),
          SubSection(text: 'Definition'),
          SubSection(text: 'Estimated Cost and Actual Cost'),
          SubSection(text: 'Purpose of Estimating'),
          SubSection(text: 'Principle of Units and Measurement'),
          SubSection(
              text:
                  'Units of Measurement and Payment for Various Items of Works and Materials'),
          SubSection(text: 'Data Required for Estimating'),

          SectionHeader(text: 'Method of Estimating (5 hours)'),
          SubSection(
              text:
                  'Method of Measurements of Building and Civil Engineering Works'),
          SubSection(text: 'Subheads of Various Items of Works'),
          SubSection(text: 'Various Methods of Taking Out Quantities'),
          SubSection(text: 'Abstracting Bill of Quantities'),
          SubSection(
              text:
                  'Preparation of Detailed Estimate: Cost of Items, Contingencies Work charged Establishment'),

          SectionHeader(text: 'Types of Estimate (3 hours)'),
          SubSection(text: 'Approximate Estimates'),
          SubSection(text: 'Detailed Estimate'),
          SubSection(text: 'Revised Estimate'),
          SubSection(text: 'Supplementary Estimate'),
          SubSection(text: 'Annual Repair and Maintenance Estimate'),
          SubSection(text: 'Extension and Improvement Estimate'),
          SubSection(text: 'Complete Estimate'),
          SubSection(
              text:
                  'Split Up of Cost of Building and Road WorksWater Supply and Sanitary Works.'),

          SectionHeader(text: 'Analysis of Rates (9 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Purpose of Rate Analysis'),
          SubSection(text: 'Importance of Rate Analysis'),
          SubSection(text: 'Requirement of Rate Analysis'),
          SubSection(text: 'Factors Affecting the Rate Analysis'),
          SubSection(text: 'Method of Preparing Rate Analysis for'),
          SubSection(text: 'building works'),
          SubSection(text: 'road works'),
          SubSection(text: 'sanitary and water supply works'),
          SubSection(text: 'irrigation works'),

          SectionHeader(text: 'Project Estimate (5 hours)'),
          SubSection(text: 'Estimate for a Project'),
          SubSection(text: 'Report on Estimate'),
          SubSection(text: 'Estimate for Building Project'),
          SubSection(text: 'Estimate for Road Project'),
          SubSection(text: 'Estimate for Irrigation Project'),
          SubSection(text: 'Estimate for Small Sewerage Project'),
          SubSection(text: 'Estimate for Water Supply Project'),

          SectionHeader(text: 'Detailed Estimate (20 hours)'),
          SubSection(
              text:
                  'Detailed Estimate for a Single Room Load Bearing Frame Structured Building'),
          SubSection(
              text:
                  'Detailed Estimate of a Two Roomed Load Bearing and Framed Structured Building'),
          SubSection(
              text:
                  'Estimate of Earth Work in Road Construction in Plain Area'),
          SubSection(
              text:
                  'Estimate of Earth Work in Road Construction in Hilly Area'),
          SubSection(text: 'Estimate of Earth Work in Canals'),
          SubSection(
              text:
                  'Estimate for the Construction of Highway for One km Length'),
          SubSection(text: 'Estimate for Slab Culverts'),
          SubSection(text: 'Estimate of a Well Foundation'),
          SubSection(text: 'Estimate of a Pier'),
          SubSection(text: 'Estimate for T‐Beam Decking'),
          SubSection(text: 'Estimate for Septic Tank and Soak Pit'),
          SubSection(text: 'Estimate of an Underground R.C.C. Water Tank'),

          SectionHeader(text: 'Tutorial: (15 hours)'),
          SubSection(text: 'A Double Storied Residential Building'),
          SubSection(text: 'A Portion of Road Way'),
          SubSection(text: 'A Portion of Canal with Lining'),
          SubSection(
              text:
                  'Application of Program to Estimate the Quantities of Materials'),
          SubSection(
              text:
                  'Application of Program to Calculate the Volume of Earth Work for a Roadway'),
          SubSection(text: 'A Residential Toilet'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'M. Chakraborti, "Estimating, Costing, Specification and Valuation"'),
          SubSection(
              text:
                  'G.S. Berdie, "Text book of Estimating and Costing (Civil Engineering)"'),
          SubSection(text: 'A.K. Upadhyaya, "Estimating and Costing"'),
          SubSection(
              text:
                  'Seymour Berger and Jules B. Godel, "Estimating and Project Management for Small Construction Firms"')

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
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/04/AppliedMechanicsOldQues.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
