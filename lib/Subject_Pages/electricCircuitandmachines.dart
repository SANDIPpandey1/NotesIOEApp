import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ElectricCircuitAndMachines extends StatelessWidget {
  final int initialTabIndex;
  ElectricCircuitAndMachines({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ELECTRIC CIRCUITS AND MACHINES',
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
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
                    ),
                    TableCell(
                      child: Center(child: Text('--')),
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
              text:
                  'Network Analysis of AC circuit & dependent sources (6 hours)'),
          SubSection(text: 'Mesh Analysis'),
          SubSection(text: 'Nodal Analysis'),
          SubSection(text: 'Series & parallel resonance in RLC circuits'),
          SubSection(
              text: 'Impedance and phase angle of series Resonant Circuit'),
          SubSection(text: 'Voltage and current in series resonant circuit'),
          SubSection(text: 'Band width of the RLC circuit'),
          SubSection(text: 'High-Q and Low-Q circuits'),

          SectionHeader(text: 'Initial Conditions (2 hours)'),
          SubSection(text: 'Characteristics of various network elements'),
          SubSection(text: 'Initial value of derivatives'),
          SubSection(text: 'Procedure for evaluating initial conditions'),
          SubSection(text: 'Initial condition in the case of R-L-C network'),

          SectionHeader(
              text:
                  'Transient analysis in RLC circuit by direct solution (10 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'First order differential equation'),
          SubSection(
              text:
                  'Higher order homogeneous and non-homogeneous differential equations'),
          SubSection(
              text:
                  'Particular integral by method of undetermined coefficients'),
          SubSection(
              text:
                  'Response of R-L circuit with DC, Sinusoidal and Exponential excitations'),
          SubSection(
              text:
                  'Response of R-C circuit with DC, Sinusoidal and Exponential excitations'),
          SubSection(
              text:
                  'Response of series R-L-C circuit with DC, Sinusoidal and Exponential excitations'),

          SectionHeader(
              text:
                  'Transient analysis in RLC circuit by Laplace Transform (8 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'The Laplace Transformation'),
          SubSection(text: 'Important properties of Laplace transformation'),
          SubSection(
              text:
                  'Use of Partial Fraction expansion in analysis using Laplace Transformations'),
          SubSection(text: "Heaviside's partial fraction expansion theorem"),
          SubSection(
              text:
                  'Response of R-L circuit with DC. Sinusoidal and Exponential excitations'),
          SubSection(
              text:
                  'Response of R-C circuit with DC, Sinusoidal and Exponential excitations'),
          SubSection(
              text:
                  'Response of series R-L-C circuit with DC, Sinusoidal and Exponential excitations'),

          SectionHeader(text: 'Transfer functions Poles and Zeros of Networks'),
          SectionHeader(text: 'Two-port Parameter of Networks (6 Hours)'),
          SubSection(text: 'Definition of two-port networks'),
          SubSection(text: 'Short circuit admittance parameters'),
          SubSection(text: 'Open circuits impedance parameters'),
          SubSection(text: 'Transmission Short circuit admittance parameters'),
          SubSection(text: 'Hybrid parameters'),
          SubSection(
              text:
                  'Relationship and transformations between sets of parameters'),
          SubSection(text: 'Application to filters'),
          SubSection(text: 'Applications to transmission lines'),
          SubSection(
              text:
                  'Interconnection of two-port network (Cascade, series, parallel)'),

          SectionHeader(text: 'Magnetic Circuits and Induction (4 hours)'),
          SubSection(text: 'Magnetic Circuits'),
          SubSection(text: "Ohm’s Law for Magnetic Circuits"),
          SubSection(text: 'Series and Parallel magnetic circuits'),
          SubSection(text: 'Core with air gap'),
          SubSection(text: 'B-H relationship (Magnetization Characteristics)'),
          SubSection(text: 'Hysteresis with DC and AC excitation'),
          SubSection(text: 'Hysteresis Loss and Eddy Current Loss'),
          SubSection(
              text:
                  "Faraday’s Law' of Electromagnetic Induction, Statically and Dynamically Induced EMF"),
          SubSection(text: 'Force on Current Carrying Conductor'),

          SectionHeader(text: 'Transformer (8 hours)'),
          SubSection(text: 'Constructional Details, recent trends'),
          SubSection(text: 'Working principle and EMF equation'),
          SubSection(text: 'Ideal Transformer'),
          SubSection(text: 'No load and load Operation'),
          SubSection(text: 'Operation of Transformer with load'),
          SubSection(text: 'Equivalent Circuits and Phasor Diagram'),
          SubSection(
              text:
                  'Tests: Polarity Test, Open Circuit test, Short Circuit test and Equivalent Circuit Parameters'),
          SubSection(text: 'Voltage Regulation'),
          SubSection(text: 'Losses in a transformer'),
          SubSection(
              text:
                  'Auto transformer: construction, working principle and Cu saving'),

          SectionHeader(text: 'DC Machines (8 hours)'),
          SubSection(text: 'Constructional Details and Armature Winding'),
          SubSection(
              text: 'Working principle of DC generator and EMF equation'),
          SubSection(text: 'Working principle of DC motor and Torque equation'),
          SubSection(text: 'Back EMF'),
          SubSection(text: 'Method of excitation, Types of DC motor'),
          SubSection(text: 'Performance Characteristics of D.C. motors'),
          SubSection(
              text: 'Starting of D.C. Motors: 3 point and 4 point starters'),
          SubSection(
              text:
                  'Speed control of D.C. motors: Field Control, Armature Control'),
          SubSection(text: 'Losses and Efficiency'),

          SectionHeader(text: 'AC Motors (8 hours)'),
          SubSection(
              text:
                  'Three phase induction motor- construction, operating principle and torque speed characteristics'),
          SubSection(
              text:
                  'Single phase Induction Motors: Construction and Characteristics'),
          SubSection(text: 'Double Field Revolving Theory'),
          SubSection(text: 'Split phase Induction Motor'),
          SubSection(text: 'Capacitors start and run motor'),
          SubSection(text: 'Reluctance start motor'),
          SubSection(
              text: 'Alternating Current Series motor and Universal motor'),
          SubSection(
              text:
                  'Special Purpose Machines: Stepped motor, Schrage motor and Servo motor'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Resonance in RLC series circuit'),
          SubSection(text: 'Measurement of resonant frequency'),
          SubSection(
              text:
                  'Transient Response in first order system passive circuits'),
          SubSection(
              text:
                  'Measure step and impulse response of RL and RC circuit using oscilloscope'),
          SubSection(
              text:
                  'Relate time response to analytical transfer functions calculations'),
          SubSection(
              text:
                  'Transient Response in second order system passive circuits'),
          SubSection(
              text:
                  'Measure step and impulse response of RLC series and parallel circuits using oscilloscope'),
          SubSection(
              text:
                  'Relate time response to transfer functions and pole-zero configuration'),
          SubSection(text: 'Two Winding Transformers'),
          SubSection(text: 'Perform turn ratio test'),
          SubSection(
              text:
                  'Perform open circuit (OC) and short circuit (SC) test to determine equivalent circuit parameter of a transformer and hence to determine the regulation and efficiency at full load'),
          SubSection(text: 'DC Motor'),
          SubSection(
              text:
                  'Speed control of DC Shunt motor by (a) armature control method (b) field control method'),
          SubSection(
              text:
                  'Observe the effect of increasing load on DC shunt motor\'s speed, armature current and field current.'),
          SubSection(text: 'Single Phase AC Motors'),
          SubSection(
              text:
                  'Study the effect of a capacitor on the starting and running of a single-phase induction motor'),
          SubSection(
              text:
                  'Reversing the direction of rotation of a single phase capacitor induct'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'M. E. Van valkenburg, "Network Analysis", prentice Hall, 2010.'),
          SubSection(
              text:
                  'William II. Hyat. Jr. & Jack E. Kemmerly, "Engineering Circuits Analysis", McGraw Hill International Editions, Electrical Engineering Series, 1987.'),
          SubSection(
              text:
                  'Michel D. Cilletti, "Introduction to Circuit Analysis arid Design", Holt, Hot Rinehart and Winston International Edition, New York, 1988.'),
          SubSection(
              text:
                  'P.C.Sen. “ Principles of Electric Machines and Power Electronics”, Wiley.'),
          SubSection(
              text:
                  'I.J. Nagrath & D.P.Kothari,” Electrical Machines”, Tata McGraw Hill'),
          SubSection(
              text:
                  'S. K. Bhattacharya, “Electrical Machines”, Tata McGraw Hill'),
          SubSection(
              text:
                  'B. L. Theraja and A. K. Theraja, “Electrical Technology (Vol-11)”, S. Chand'),
          SubSection(
              text: 'Husain Ashaq ,” Electrical Machines”, DhanpatRai& Sons')

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
