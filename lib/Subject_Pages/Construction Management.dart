import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ConstructionManagement extends StatelessWidget {
  final int initialTabIndex;
  ConstructionManagement({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Construction Management',
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('13')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('60')),
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
          SectionHeader(text: 'Construction Management Framework [3 hours]'),
          SubSection(text: 'Construction Landmarks'),
          SubSection(text: 'Scope of Construction Management'),
          SubSection(text: 'Construction Project Characteristics'),
          SubSection(text: 'Construction Project Life Cycle Phases'),
          SubSection(text: 'Construction Project Management'),
          SubSection(
              text: 'Relation between Client, Consultant and Contractor'),

          SectionHeader(text: 'Construction Planning and Scheduling [5 hours]'),
          SubSection(text: 'Construction Planning – Introduction'),
          SubSection(text: 'Steps and Stages of Planning'),
          SubSection(
              text: 'Planning by Contractor and Clients in Different Stages'),
          SubSection(text: 'Preparing Schedule'),
          SubSection(text: 'Time Cost Trade Off'),

          SectionHeader(text: 'Planning Construction Material [5 hours]'),
          SubSection(text: 'ABC Classification of Construction Materials'),
          SubSection(text: 'Material Wastage Standards'),
          SubSection(text: 'Material Provisioning Process'),
          SubSection(text: 'Material Inventory Basics'),
          SubSection(text: 'Inventory Planning Process'),
          SubSection(
              text:
                  'Application Of Value Engineering in the Procurement of Materials'),

          SectionHeader(
              text: 'Familiarization with Construction Equipments [7 hours]'),
          SubSection(text: 'Advantages and Disadvantages of using Equipments'),
          SubSection(
              text:
                  'Equipments for Excavation, Transporting and Compaction; Aggregate Production and Handling; Concrete Construction; Cranes for Lifting; Tunnel Construction; Highway and Pavement Construction; Hydraulic Structure Construction'),
          SubSection(text: 'Selection of Appropriate Equipment'),

          SectionHeader(text: 'Contract Management [6 hours]'),
          SubSection(text: 'Method of Work execution'),
          SubSection(text: 'Types of Contract'),
          SubSection(
              text:
                  'Tendering Process – Preparation before Tendering; Tender Notice; Tender Document; Conditions of Contract; Prequalification; Tender; Evaluation; Selection and Award'),

          SectionHeader(text: 'Construction Process [3 hours]'),
          SubSection(text: 'Site Surveying and Preparation'),
          SubSection(text: 'Arrangement of Facilities and Shops/ Job Layout'),
          SubSection(text: 'Material Handling System'),

          SectionHeader(
              text: 'Controlling Project Integration and Work [5 hours]'),
          SubSection(text: 'Work Scope Control'),
          SubSection(text: 'Product Quality Control'),
          SubSection(text: 'Labor Productivity Control'),
          SubSection(text: 'Equipment Productivity Control'),
          SubSection(text: 'Material Productivity Control'),
          SubSection(text: 'Work Schedule Control'),
          SubSection(text: 'Performance Control Using Earned Value Analysis'),

          SectionHeader(text: 'Site Management [3 hours]'),
          SubSection(text: 'Responsibility of Site Engineer'),
          SubSection(text: 'Supervising Work of Contractor'),
          SubSection(text: 'Record Keeping'),

          SectionHeader(text: 'Project Maintenance [4 hours]'),
          SubSection(text: 'Maintenance Basics'),
          SubSection(text: 'Types of Maintenance'),
          SubSection(text: 'Planning and Scheduling of Maintenance'),
          SubSection(text: 'Estimating Maintenance Cost'),
          SubSection(text: 'Management of Maintenance and Financing'),

          SectionHeader(text: 'Personnel Management [4 hours]'),
          SubSection(
              text:
                  'Management principles: Administration and Organization principles'),
          SubSection(text: 'Centralization and Decentralization'),
          SubSection(text: 'Supervisory and Leadership styles'),
          SubSection(text: 'Importance of communication'),
          SubSection(text: 'Information System for decisions'),
          SubSection(
              text:
                  'Motivating and directing: human elements, evaluation and merit ranking'),
          SubSection(text: 'Personnel selection, testing and training'),
          SubSection(text: 'Trade unions and relation with management'),

          SectionHeader(text: 'Regulatory Requirements [2 hours]'),
          SubSection(text: 'Safety Requirements'),
          SubSection(text: 'Workman’s compensation board'),
          SubSection(text: 'Fire regulations and Insurance'),
          SubSection(text: 'Environment concern and protection'),
          SubSection(text: 'Building codes and quality control'),

          SectionHeader(text: 'Specification [6 hours]'),
          SubSection(text: 'Purpose of Specifications'),
          SubSection(
              text:
                  'Types of Specifications: General and Detailed Specifications'),
          SubSection(
              text:
                  'Specification Writing: technique, use of international and local Standards, Codes of Practice'),
          SubSection(text: 'Importance of Specifications'),

          SectionHeader(text: 'Valuation [7 hours]'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Cost and Value'),
          SubSection(text: 'Purpose of Valuation and Principle of Valuation'),
          SubSection(text: 'Factors affecting the Value of the Property'),
          SubSection(text: 'Value Classification'),
          SubSection(text: 'Sinking Fund'),
          SubSection(text: 'Capitalized value'),
          SubSection(text: 'Obsolescence'),
          SubSection(text: 'Depreciations'),
          SubSection(text: 'Qualification of a Valuer'),
          SubSection(text: 'Valuation of Land'),
          SubSection(text: 'Various Methods of valuation of Properties'),
          SubSection(text: 'Role of Computers in Valuation'),

          SectionHeader(text: 'Report Writing'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Time Cost Trade off [2 hours]'),
          SubSection(text: 'ABC Classification of Materials [2 hours]'),
          SubSection(text: 'Job Layout exercise [1 hour]'),
          SubSection(text: 'Earned Value analysis [3 hours]'),
          SubSection(text: 'Writing Specification [3 hours]'),
          SubSection(text: 'Valuation [4 hours]'),
          SubSection(text: 'Field visit of construction site – 2 days.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Chitkara, K. K, Construction Project Management; McGraw Hill.'),
          SubSection(
              text:
                  'Gupta, B.L, Gupta, Amit; Construction Management and Machinary; Standard Publishers Distributors'),
          SubSection(
              text:
                  'Peurifoy, R L. Construction Planning, Equipment and Methods, McGraw Hill.'),
          SubSection(
              text:
                  'Harris, Frank , Construction Plant Excavating and Materials handling equipment and Methods, Granada Publishing, London'),
          SubSection(text: 'Adhikari, R. P. , Construction Management'),
          SubSection(
              text: 'G S Birdie, Estimating, Valuation and Specifications')

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
