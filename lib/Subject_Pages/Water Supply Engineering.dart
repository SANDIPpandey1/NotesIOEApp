import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class WaterSupplyEngineering extends StatelessWidget {
  final int initialTabIndex;
  WaterSupplyEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Water Supply Engineering',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('14')),
                    ),
                    TableCell(
                      child: Center(child: Text('24')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
          SectionHeader(text: 'Introduction (2 hours)'),
          SubSection(text: 'Importance of Water'),
          SubSection(text: 'Definition of Types of Water'),
          SubSection(text: 'Historical Development of Water Supply System'),
          SubSection(text: 'Objectives of Water Supply System'),
          SubSection(text: 'Schematic Diagram of Typical Water Supply System'),
          SubSection(
              text: 'Components of Water Supply System and Their Functions'),

          SectionHeader(text: 'Sources of Water (4 hours)'),
          SubSection(text: 'Classification of Sources of Water'),
          SubSection(text: 'Surface Sources'),
          SubSection(text: 'Ground Sources'),
          SubSection(text: 'Selection of Water Sources'),
          SubSection(text: 'Quantity of Water (5 hours)'),
          SubSection(text: 'Per Capita Demand of Water'),
          SubSection(text: 'Types of Water Demand'),
          SubSection(text: 'Variation in Demand of Water'),
          SubSection(text: 'Factors Affecting Demand of Water'),
          SubSection(text: 'Population Forecasting'),

          SectionHeader(text: 'Quality of Water (5 hours)'),
          SubSection(text: 'Impurities in Water'),
          SubSection(text: 'Hardness and Alkalinity'),
          SubSection(text: 'Living Organisms in Water'),
          SubSection(text: 'Water-Related Diseases'),
          SubSection(text: 'Examination of Water'),
          SubSection(text: 'Water Quality Standards for Drinking Purpose'),

          SectionHeader(text: 'Intakes (3 hours)'),
          SubSection(text: 'Definition'),
          SubSection(text: 'Site Selection of an Intake'),
          SubSection(text: 'Classification of Intake'),
          SubSection(text: 'Characteristics of Intake'),

          SectionHeader(text: 'Water Treatment (14 hours)'),
          SubSection(text: 'Objectives of Water Treatment'),
          SubSection(text: 'Treatment Processes and Impurity Removal'),
          SubSection(text: 'Screening'),
          SubSection(text: 'Sedimentation'),
          SubSection(text: 'Sedimentation with Coagulation'),
          SubSection(text: 'Filtration'),
          SubSection(text: 'Disinfection'),
          SubSection(text: 'Softening'),
          SubSection(text: 'Miscellaneous Treatments'),

          SectionHeader(text: 'Reservoirs and Distribution System (6 hours)'),
          SubSection(text: 'System of Supply'),
          SubSection(text: 'Reservoirs'),
          SubSection(text: 'Layout of Distribution System'),
          SubSection(text: 'Design of Distribution System'),

          SectionHeader(text: 'Conveyance of Water (3 hours)'),
          SubSection(text: 'Pipe Materials'),
          SubSection(text: 'Pipe Joints'),
          SubSection(text: 'Laying of Pipes'),

          SectionHeader(text: 'Valves and Fittings (3 hours)'),
          SubSection(text: 'Valves'),
          SubSection(text: 'Fittings'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'BC. Punmia, Ashok Kuamr Jain and Arun Kumar Jain, "Water Supply Engineering", Laxmi Publications (P) Ltd., New Delhi, 1998'),
          SubSection(
              text:
                  'P.N. Modi, "Water Supply engineering", Standard Book House, Delhi, 1998'),
          SubSection(
              text:
                  'G.S. Birdie and J.S. Birdie, "Water Supply and Sanitary Engineering", Dhanpat Rai Publishing Company (P) Ltd,. New Delhi, 2002'),
          SubSection(
              text:
                  'K.N. Duggal, "Elements of Environmental Engineering", S. Chand and company Ltd.., New Delhi, 1997'),

          SectionHeader(text: 'Practical'),
          SubSection(
              text: 'Determination of Temperature, Color, Turbidity, and pH'),
          SubSection(
              text: 'Determination of Suspended, Dissolved, and Total Solids'),
          SubSection(text: 'Determination Dissolved Oxygen by Winkler Method'),
          SubSection(
              text:
                  'Determination of Optimum Dose of Coagulant by Jar Test Apparatus'),

          SectionHeader(text: 'Tutorials'),
          SubSection(text: 'Introduction (1 hour)'),
          SubSection(text: 'Sources of Water (1 hour)'),
          SubSection(text: 'Quantity of Water (2 hours)'),
          SubSection(text: 'Quality of Water (2 hours)'),
          SubSection(text: 'Intakes (1 hour)'),
          SubSection(text: 'Water Treatment (3 hours)'),
          SubSection(text: 'Reservoirs and Distribution System (3 hours)'),
          SubSection(text: 'Conveyance of Water (1 hour)'),
          SubSection(text: 'Valves and Fittings (1 hour)'),

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
