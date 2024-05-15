import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ControlSystem extends StatelessWidget {
  final int initialTabIndex;
  ControlSystem({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Control System',
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Control System Background(2 hours)'),
          SubSection(text: 'History of control system and its importance'),
          SubSection(
              text: 'Control system: Characteristics and Basic features'),
          SubSection(text: 'Types of control system and their comparison'),

          SectionHeader(text: 'Component Modeling(6 hours)'),
          SubSection(
              text: 'Differential equation and transfer function notations'),
          SubSection(
              text:
                  'Modeling of Mechanical Components: Mass, spring and damper'),
          SubSection(
              text:
                  'Modeling of Electrical components: Inductance, Capacitance, Resistance, DC and AC motor, Transducers and operational amplifiers'),
          SubSection(
              text:
                  'Electric circuit analogies (Force-Voltage analogy and Force-Current analogy)'),
          SubSection(
              text: 'Linearized approximations of non-linear characteristics'),

          SectionHeader(
              text: 'System Transfer Function and Responses (6 hours)'),
          SubSection(text: 'Combinations of components to physical systems'),
          SubSection(text: 'Block diagram algebra and system reduction'),
          SubSection(text: 'Signal flow graphs'),
          SubSection(text: 'Time response analysis:'),
          SubSection(
              text:
                  '   Types of test signals (Impulse, Step, Ramp, Parabolic)'),
          SubSection(text: '    Time response analysis of first order system'),
          SubSection(text: '    Time response analysis of second order system'),
          SubSection(text: '    Transient response characteristics'),
          SubSection(
              text:
                  'Effect of feedback on steady state gain, Bandwidth, Error magnitude and System dynamics'),

          SectionHeader(text: 'Stability(4 hours)'),
          SubSection(
              text: 'Introduction of stability and causes of instability'),
          SubSection(
              text: 'Characteristic equation, Root location and stability'),
          SubSection(text: 'Setting loop gain using Routh-Hurwitz criterion'),
          SubSection(text: 'R-H stability criterion'),
          SubSection(
              text: 'Relative stability from complex plane axis shifting'),

          SectionHeader(text: 'Root Locus Technique(6 hours)'),
          SubSection(text: 'Introduction of root locus'),
          SubSection(
              text:
                  'Relationship between Root loci and Time response of systems'),
          SubSection(
              text:
                  'Rules for manual calculation and Construction of Root locus'),
          SubSection(text: 'Analysis and design using Root locus concept'),
          SubSection(text: 'Stability analysis using R-H criteria'),

          SectionHeader(text: 'Frequency Response Techniques(6 hours)'),
          SubSection(text: 'Frequency domain characterization of the system'),
          SubSection(
              text: 'Relationship between real and complex frequency response'),
          SubSection(text: 'Bode Plots: Magnitude and phase'),
          SubSection(text: 'Effects of gain and time constant on Bode diagram'),
          SubSection(
              text:
                  'Stability from Bode diagram (gain margin and phase margin)'),
          SubSection(text: 'Polar Plot and Nyquist Plot'),
          SubSection(text: 'Stability analysis from Polar and Nyquist plot'),

          SectionHeader(
              text:
                  'Performance Specifications and Compensation Design(10 hours)'),
          SubSection(text: 'Time domain specification'),
          SubSection(
              text:
                  '   Rise time, Peak time, Delay time, settling time and maximum overshoot'),
          SubSection(text: '    Static error co-efficient'),
          SubSection(text: 'Frequency domain specification'),
          SubSection(text: '    Gain margin and phase margin'),
          SubSection(
              text:
                  'Application of Root locus and frequency response on control system design'),
          SubSection(
              text:
                  'Lead, Lag cascade compensation design by Root locus method.'),
          SubSection(
              text:
                  'Lead, Lag cascade compensation design by Bode plot method.'),
          SubSection(text: 'PID controllers'),

          SectionHeader(text: 'State Space Analysis(4 hours)'),
          SubSection(text: 'Definition of state -space'),
          SubSection(
              text:
                  'State space representation of electrical and mechanical system'),
          SubSection(
              text: 'Conversion from state space to a transfer function.'),
          SubSection(text: 'Conversion from transfer function to state space.'),
          SubSection(text: 'State-transition matrix.'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'To study open loop and closed mode for d.c motor and familiarization with different components in D.C motor control module.'),
          SubSection(
              text:
                  'To determine gain and transfer function of different control system components.'),
          SubSection(
              text:
                  'To study effects of feedback on gain and time constant for closed loop speed control system and position control system.'),
          SubSection(
              text:
                  'To determine frequency response of first order and second order system and to get transfer function.'),
          SubSection(
              text:
                  'Simulation of closed loop speed control system and position control system and verification'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Ogata, K., “Modern Control Engineering”, Prentice Hall, Latest Edition'),
          SubSection(
              text:
                  'Gopal. M., “Control Systems: Principles and Design”, Tata McGraw-Hill, Latest Edition.'),
          SubSection(
              text:
                  'Kuo, B.C., “Automatic Control System”, Prentice Hall, sixth edition.'),
          SubSection(
              text:
                  'Nagrath & Gopal, “Modern Control Engineering”, New Ages International, Latest Edition.')

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
