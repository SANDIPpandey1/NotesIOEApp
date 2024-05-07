import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DesignofSteelandTimberStructure extends StatelessWidget {
  final int initialTabIndex;
  DesignofSteelandTimberStructure({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Design of Steel and Timber Structure',
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('13')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('12')),
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
          SectionHeader(
              text: 'Steel Structures and their Analysis and Design (4 hours)'),
          SubSection(text: 'Introduction to Steel Structures'),
          SubSection(
              text: 'Structural Steel and Classification of Steel Sections'),
          SubSection(text: 'Method of Analysis and Design'),
          SubSection(text: 'Design Process and Basis for Design'),

          SectionHeader(text: 'Working Stress Design Method (2 hours)'),
          SubSection(text: 'Basic Assumptions in Working Stress Design'),
          SubSection(text: 'Service Load and Permissible Stresses'),
          SubSection(text: 'Design in Tension, Compression, Bending and Shear'),

          SectionHeader(text: 'Limit State Design Method (3 hours)'),
          SubSection(
              text: 'Safety and Serviceability Requirements of Structure'),
          SubSection(text: 'Different Limit States for Steel Design'),
          SubSection(text: 'Design Strength of Materials and Design Loads'),
          SubSection(text: 'Limit State of Strength'),
          SubSection(text: 'Limit State of Serviceability'),

          SectionHeader(text: 'Connections in Steel Structures (10 hours)'),
          SubSection(text: 'Types of Connections'),
          SubSection(text: 'Welded Connections'),
          SubSection(text: 'Welds and welding'),
          SubSection(text: 'Design of simple welded connections'),
          SubSection(text: 'Design of eccentric welded connections'),
          SubSection(text: 'Bolted Connections'),
          SubSection(text: 'Bolts and bolting'),
          SubSection(text: 'Design of simple bolted connections'),
          SubSection(text: 'Design of eccentric bolted connections'),
          SubSection(text: 'Introduction to Riveted Connection'),

          SectionHeader(text: 'Tension Members (4 hours)'),
          SubSection(text: 'Types of Tension Members'),
          SubSection(text: 'Sectional Area of Tension Member'),
          SubSection(
              text: 'Design of Tension Members of Simple and Built-Up Section'),
          SubSection(text: 'Design of Lug Angle'),
          SubSection(text: 'Tension Splice'),

          SectionHeader(text: 'Compression Members (10 hours)'),
          SubSection(text: 'Types of Compression Member'),
          SubSection(text: 'Buckling Behavior of Column'),
          SubSection(text: 'Design of Column of Simple and Built-Up Section'),
          SubSection(text: 'Design of Lateral Bracing of Compression Member'),
          SubSection(text: 'Design of Eccentrically Loaded Column'),
          SubSection(text: 'Design of Column Bases'),
          SubSection(text: 'Axially loaded column bases'),
          SubSection(text: 'Eccentrically loaded column bases'),
          SubSection(text: 'Design of Column Splices'),

          SectionHeader(text: 'Flexure Members (13 hours)'),
          SubSection(text: 'Types of Beams'),
          SubSection(text: 'Design of Simple Beam'),
          SubSection(text: 'Design of Built-Up Beam'),
          SubSection(text: 'Design of Plate Girder'),
          SubSection(text: 'Element of plate girders'),
          SubSection(text: 'Preliminary design'),
          SubSection(
              text:
                  'Design for bending, shear, deflection and lateral stability'),
          SubSection(text: 'Curtailment of plate'),
          SubSection(text: 'Design of web and flange splice'),

          SectionHeader(text: 'Design of Roof Trusses (4 hours)'),
          SubSection(text: 'Types of Roof Truss and Components of Roof Truss'),
          SubSection(text: 'Loads on Roof Truss'),
          SubSection(text: 'Design of Roof Components'),

          SectionHeader(text: 'Timber Structures and Design Methods (2 hours)'),
          SubSection(text: 'Introduction to Timber Structures'),
          SubSection(
              text:
                  'Structural Timber and Factors Affecting the Strength of Timber'),
          SubSection(text: 'Design Methods and Basis for Design'),

          SectionHeader(text: 'Joints in Timber Structures (2 hours)'),
          SubSection(text: 'Types of Joints'),
          SubSection(text: 'Design of Bolted Joints'),
          SubSection(text: 'Design of Nailed Joints'),

          SectionHeader(text: 'Design of Compression Members (3 hours)'),
          SubSection(text: 'Types of Timber Columns'),
          SubSection(text: 'Design of Timber Column'),
          SubSection(text: 'Introduction to Column Bases'),

          SectionHeader(text: 'Design of Flexure Member (3 hours)'),
          SubSection(text: 'Types of Beams'),
          SubSection(text: 'Design of Timber and Flitched Beam'),

          SectionHeader(text: 'Course Project:'),
          SubSection(
              text:
                  'A Course Project on integrated design of a building/industrial structure'),

          SectionHeader(text: 'Reference books:'),
          SubSection(
              text:
                  '“Limit State Design of Steel Structures” S.K. Duggal Tata McGraw-Hill Publishing Com.'),
          SubSection(
              text:
                  '“Design of Steel Structures” K.S. Sai Ram, PEARSON Education'),
          SubSection(
              text:
                  '“Design of Steel Structures” L.S. Negi, Tata McGraw-Hill Publishing Com.'),
          SubSection(
              text:
                  '“Design of Steel Structures” Ram Chandra, Standard Book House')

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
