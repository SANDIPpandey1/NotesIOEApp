import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class UtilizationofElectricalEnergy extends StatelessWidget {
  final int initialTabIndex;
  UtilizationofElectricalEnergy({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Utilization of Electrical Energy',
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
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
          SectionHeader(text: 'Introduction [4 hours]'),
          SubSection(
              text:
                  'Common uses of electrical energy: Domestic, commercial, industrial'),
          SubSection(
              text: 'Classification of electrical consumers and their demand'),
          SubSection(
              text:
                  'Roles and advantages of electrical energy over other forms of energy on different applications'),

          SectionHeader(text: 'Electric Drive System [8 hours]'),
          SubSection(text: 'Advantages of electric drive'),
          SubSection(
              text:
                  'Types of electric drives: Individual, group and multi-motor and comparison among them'),
          SubSection(
              text:
                  'Methods of power transfer: Direct coupling/using belt drive, gears, pulleys'),
          SubSection(
              text:
                  'Selection of motors: Factors to be considered, electrical and mechanical characteristics matching'),
          SubSection(
              text:
                  'Service Type (Continuous, Intermittent), Rating and Sizing of motor'),
          SubSection(
              text:
                  'Motors and their characteristics for particular service: domestic, industrial and commercial'),

          SectionHeader(text: 'Control of Electric Drive [12 hours]'),
          SubSection(text: 'DC Drive Control'),
          SubSection(text: 'Background of AC Drive System'),
          SubSection(text: 'Ward Leonard type variable speed drives'),
          SubSection(
              text:
                  'Static Variable DC voltage drives using diodes and/or controlled rectifier'),
          SubSection(
              text: '4-quadrant reversible voltage and power flow drive'),
          SubSection(text: 'PID speed and torque controlled drives'),
          SubSection(text: 'AC Drive Control'),
          SubSection(text: 'Background of AC Drive System'),
          SubSection(text: 'Soft start variable ac voltage starter'),
          SubSection(text: 'Variable frequency supplies for ac drive'),
          SubSection(
              text: 'Slip power recovery system for slip ring induction motor'),

          SectionHeader(text: 'Electric Traction [8 hours]'),
          SubSection(
              text:
                  'Types of electric traction: self contained unit system, traction system fed from a separate distribution line, DC and AC supply system'),
          SubSection(text: 'Advantages of electric traction system'),
          SubSection(
              text:
                  'Tramways, trolley, and electric train: description and comparison'),
          SubSection(text: 'Types of motors used for electric traction'),
          SubSection(
              text: 'Starting, Braking and Speed control of traction motors'),
          SubSection(
              text:
                  'Speed-time curve for a traction system: Scheduled and Average speed and factors affecting these speeds'),

          SectionHeader(text: 'Electric Heating [6 hours]'),
          SubSection(text: 'Introduction of Electrical Heating'),
          SubSection(text: 'Advantages of electric heating'),
          SubSection(
              text: 'Building design consideration for electric heating'),
          SubSection(
              text:
                  'Methods of electric heating: Resistance heating, Induction heating, Electric arc heating, Dielectric heating, Infrared heating, and Micro-wave heating'),

          SectionHeader(text: 'Demand Side Management [8 hours]'),
          SubSection(
              text: 'Introduction and advantages of Demand Side Management'),
          SubSection(
              text: 'Consumer Classification and their demand characteristics'),
          SubSection(text: 'Effective Demand Side Management techniques'),
          SubSection(
              text:
                  'Causes and disadvantages of Low Power Factor and different techniques to improve Power Factor'),
          SubSection(
              text:
                  'Types of tariff: Simple tariff, Flat-rate tariff, Block-rate tariff, Two part tariff, Maximum demand tariff'),
          SubSection(text: 'Tariff System in Nepal'),

          SectionHeader(text: 'Laboratory:'),
          SubSection(
              text: 'Speed Control of DC shunt motor by controlled rectifier'),
          SubSection(
              text:
                  'Speed Control of Induction motor by rotor rheostat method'),
          SubSection(
              text:
                  'Speed Control of Induction motor by frequency control method'),
          SubSection(text: 'Study of PWM controller for an ac machine'),

          SectionHeader(text: 'Reference:'),
          SubSection(
              text: 'A course in Utilization of Electrical Energy, G. Garg'),
          SubSection(text: 'A course in Electrical Drives, S. K. Pillai'),
          SubSection(text: 'Utilization of electrical energy, Taylor')

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
