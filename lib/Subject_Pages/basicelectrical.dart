import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class BasicElectricalEngineering extends StatelessWidget {
  final int initialTabIndex;
  BasicElectricalEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Basic Electrical Engineering',
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
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        InsideButtons(
          text: 'Chapter 1 - General Electriacl Signal',
          fileSize: '11',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Ch1-General-Electric-System.pdf');
          },
        ),
        SizedBox(
          height: 10,
        ),
        InsideButtons(
          text: 'Chapter 2 - Direct Current',
          fileSize: '4',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Ch2-DC-Circuit.pdf');
          },
        ),
        SizedBox(
          height: 10,
        ),
        InsideButtons(
          text: 'Chapter 3 - Network Theorem',
          fileSize: '17',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Ch3-Network-Theorem.pdf');
          },
        ),
        SizedBox(
          height: 10,
        ),
        InsideButtons(
          text: 'Chapter 4 - Alternating Current',
          fileSize: '10',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Ch4-Alternating-Quantities.pdf');
          },
        ),
        SizedBox(
          height: 10,
        ),
        InsideButtons(
          text: 'Chapter 5 - Single Phase AC',
          fileSize: '8',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Ch5-Single-Phase-AC-Circuit.pdf');
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('25')),
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5, 6')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
          SectionHeader(text: 'General Electric System'),
          SubSection(
              text:
                  'Constituent Parts of an Electrical System (Source, Load, Communication & Control)'),
          SubSection(text: 'Current Flow in a Circuit'),
          SubSection(text: 'Electromotive Force and Potential Difference'),
          SubSection(text: 'Electrical Units'),
          SubSection(text: 'Ohm’s Law'),
          SubSection(text: 'Resistors, Resistivity'),
          SubSection(
              text: 'Temperature Rise & Temperature Coefficient of Resistance'),
          SubSection(text: 'Voltage & Current Sources'),

          SectionHeader(text: 'DC Circuits'),
          SubSection(text: 'Series Circuits'),
          SubSection(text: 'Parallel Networks'),
          SubSection(text: 'Kirchhoff’s Laws'),
          SubSection(text: 'Power and Energy'),

          SectionHeader(text: 'Network Theorems'),
          SubSection(
              text: 'Application of Kirchhoff’s Laws in Network Solution'),
          SubSection(text: 'Nodal Analysis'),
          SubSection(text: 'Mesh Analysis'),
          SubSection(text: 'Star-Delta & Delta-Star Transformation'),
          SubSection(text: 'Superposition Theorem'),
          SubSection(text: 'Thevenin’s Theorem'),
          SubSection(text: 'Norton’s Theorem'),
          SubSection(text: 'Maximum Power Transfer Theorem'),
          SubSection(text: 'Reciprocity Theorem'),

          SectionHeader(text: 'Inductance & Capacitance in Electric Circuits'),
          SubSection(text: 'General Concept of Capacitance'),
          SubSection(text: 'Charge & Voltage'),
          SubSection(text: 'Capacitors in Series and Parallel'),
          SubSection(text: 'General Concept of Inductance'),
          SubSection(text: 'Inductive & Non-Inductive Circuits'),
          SubSection(text: 'Inductance in Series & Parallel'),

          SectionHeader(text: 'Alternating Quantities'),
          SubSection(text: 'AC Systems'),
          SubSection(text: 'Waveform, Terms & Definitions'),
          SubSection(text: 'Average and RMS Values of Current & Voltage'),
          SubSection(text: 'Phasor Representation'),

          SectionHeader(text: 'Single-phase AC Circuits'),
          SubSection(text: 'AC in Resistive Circuits'),
          SubSection(text: 'Current & Voltage in an Inductive Circuits'),
          SubSection(text: 'Current and Voltage in Capacitive Circuits'),
          SubSection(text: 'Concept of Complex Impedance and Admittance'),
          SubSection(text: 'AC Series and Parallel Circuit'),
          SubSection(
              text: 'RL, RC and RLC Circuit Analysis & Phasor Representation'),

          SectionHeader(text: 'Power in AC Circuits'),
          SubSection(text: 'Power in Resistive Circuits'),
          SubSection(text: 'Power in Inductive and Capacitive Circuits'),
          SubSection(text: 'Power in Circuit with Resistance and Reactance'),
          SubSection(text: 'Active and Reactive Power'),
          SubSection(text: 'Power Factor, Its Practical Importance'),
          SubSection(text: 'Improvement of Power Factor'),
          SubSection(
              text: 'Measurement of Power in a Single-phase AC Circuits'),

          SectionHeader(text: 'Three-Phase Circuit Analysis'),
          SubSection(text: 'Basic Concept & Advantage of Three-phase Circuit'),
          SubSection(text: 'Phasor Representation of Star & Delta Connection'),
          SubSection(text: 'Phase and Line Quantities'),
          SubSection(
              text:
                  'Voltage & Current Computation in 3-phase Balance & Unbalance Circuits'),
          SubSection(text: 'Real and Reactive Power Computation'),
          SubSection(
              text: 'Measurements of Power & Power Factor in 3-phase System'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Measurement of Voltage, Current & Power in DC Circuit: Verification of Ohm’s Law'),
          SubSection(text: 'Temperature Effects in Resistance'),
          SubSection(
              text:
                  'Kirchhoff’s Voltage & Current Law: Evaluate Power from V & I, Note Loading Effects of Meter'),
          SubSection(
              text:
                  'Measurement Amplitude, Frequency and Time with Oscilloscope: Calculate & Verify Average and RMS Value, Examine Phase Relation in RL & RC Circuit'),
          SubSection(
              text:
                  'Measurements of Alternating Quantities: R, RL, RC Circuits with AC Excitation, AC Power, Power Factor, VARs, Phasor Diagrams'),
          SubSection(
              text:
                  'Three-phase AC Circuits: Measure Currents and Voltages in Three-phase Balanced AC Circuits, Prove Y-∆ Transformation, Exercise on Phasor Diagrams for Three-phase Circuits'),
          SubSection(
              text:
                  'Measurement of Voltage, Current & Power in a Three-phase Circuit: Two-wattmeter Method of Power Measurement in R, RL and RC Three-phase Circuits, Watts Ratio Curve'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'J.R Cogdell, “Foundations of Electrical Engineering”, Prentice Hall, Englewood Cliffs, New Jersey, 1990.'),
          SubSection(
              text:
                  'I.M Smith, “Hughes Electrical Technology”, Addison-Wesley, ISR Reprint, 2000.')

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
                    'https://notesioe.com/wp-content/uploads/2024/05/Basic-Electrical.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
