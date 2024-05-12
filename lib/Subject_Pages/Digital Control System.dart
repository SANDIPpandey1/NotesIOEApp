import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DigitalControlSystem extends StatelessWidget {
  final int initialTabIndex;
  DigitalControlSystem({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Digital Control System',
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('44')),
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
              text: 'Introduction to Discrete Time Control System (8 hours)'),
          SubSection(
              text: 'Principle features of discrete time control system'),
          SubSection(text: 'Signal sampling, quantizing and coding'),
          SubSection(
              text: 'Data acquisition, conversion and distribution system'),
          SubSection(
              text: 'Reconstruction of original signal from sampled signal'),

          SectionHeader(text: 'The Z-Transform (8 hours)'),
          SubSection(text: 'Fundamentals of Z-transform'),
          SubSection(
              text: 'Important properties and theorems of the Z-transform'),
          SubSection(text: 'Z-transform from the convolution integral'),
          SubSection(text: 'Inverse Z-transform'),
          SubSection(text: 'Direct Division'),
          SubSection(text: 'Partial Fraction'),
          SubSection(text: 'Inversion Integral'),
          SubSection(
              text: 'Z-transform method for solving difference equation'),

          SectionHeader(
              text: 'Analysis of Discrete Time Control System (10 hours)'),
          SubSection(text: 'S-plane to Z-plane mapping and Vice-versa'),
          SubSection(
              text: 'Stability analysis of closed loop systems in the Z-plane'),
          SubSection(
              text: 'Discrete time equivalents of continuous time systems'),
          SubSection(text: 'Discrete time equivalents of analog controllers'),
          SubSection(text: 'Transient and steady state response analysis'),

          SectionHeader(
              text:
                  'Design and Compensation of Discrete Time Control System (10 hours)'),
          SubSection(
              text:
                  'Digital filters: structure, implementation, frequency response, applications'),
          SubSection(
              text:
                  'Control system controllers: structure, hardware/software features, responses to control signals, use of root locus and frequency domain concepts'),
          SubSection(
              text:
                  'Phase lead and phase lag compensator design for discrete time system'),
          SubSection(
              text:
                  'PID controller design and selection of parameters for discrete time system'),

          SectionHeader(text: 'Discrete Time State Equations (8 hours)'),
          SubSection(
              text: 'State space representation of discrete time systems'),
          SubSection(
              text:
                  'Discretization of the continuous time state space equation'),
          SubSection(text: 'Pulse transfer function matrix'),
          SubSection(
              text:
                  'Stability assessment from the discretized state space equations'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Study of relay type "ON-OFF" control system'),
          SubSection(text: 'Z - transform using MATLAB'),
          SubSection(
              text:
                  'Effect of different sampling methods and sampling time on transient and frequency response'),
          SubSection(
              text:
                  'Stability analysis of closed-loop system in z-plane using MATLAB'),
          SubSection(text: 'Simulation study using Simulink of MATLAB'),
          SubSection(
              text: 'Position control system through analog interfacing'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'K. Ogata, "Discrete Time Control Systems", Prentice Hall, Englewood Cliffs, New Jersey.'),
          SubSection(
              text:
                  'Charles L. Phillips, "Digital Control System: Analysis and Design", Prentice Hall, Englewood Cliffs, New Jersey.')

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
