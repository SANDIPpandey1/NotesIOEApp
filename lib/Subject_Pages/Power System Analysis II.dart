import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class PowerSystemAnalysisII extends StatelessWidget {
  final int initialTabIndex;
  PowerSystemAnalysisII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Power System Analysis II',
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('42')),
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
          SectionHeader(text: 'Interconnected Power System(6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Real power/ frequency balance'),
          SubSection(text: 'Reactive power/ voltage balance'),
          SubSection(text: 'Node equations'),
          SubSection(text: 'Bus admittance matrixes'),
          SubSection(
              text:
                  'Applications of Bus admittance matrixes in Network analysis'),
          SubSection(text: 'Basic concept of Bus impedance Matrixes'),

          SectionHeader(text: 'Load Flow Analysis(8 hours)'),
          SubSection(
              text:
                  'Basic complex power flow equations for a power system networks'),
          SubSection(text: 'Data for Load flow studies'),
          SubSection(
              text: 'Iterative approaches for solving power flow equations'),
          SubSection(text: 'Gauss-Seidal  method'),
          SubSection(text: 'Newton- Rapshon methods'),
          SubSection(
              text:
                  'Introduction to advance techniques e.g. decoupled load flow'),
          SubSection(text: 'Voltage profile and var compensation'),

          SectionHeader(text: 'Power system fault calculation(4 hours)'),
          SubSection(text: 'Definition and purpose of fault calculation'),
          SubSection(text: 'Types of faults in power system'),
          SubSection(text: 'Symmetrical fault calculations'),
          SubSection(text: 'Calculation of short circuit MVA'),

          SectionHeader(text: 'Unbalance System Analysis(6 hours)'),
          SubSection(text: 'Symmetrical components'),
          SubSection(text: 'Sequence impedances'),
          SubSection(text: 'Sequence components of the voltages and currents'),
          SubSection(
              text: 'Expression for power in terms of symmetrical components'),
          SubSection(text: 'Transformer voltages and currents'),

          SectionHeader(
              text: 'Unsymmetrical faults on Power Systems(10 hours)'),
          SubSection(text: 'Sequence networks of synchronous generators'),
          SubSection(
              text: 'Fault calculations of a single synchronous generator'),
          SubSection(text: 'Line to ground faults'),
          SubSection(text: 'Line to line faults'),
          SubSection(text: 'Double line to ground faults'),
          SubSection(text: 'Path for zero sequence currents in Transformers'),
          SubSection(text: 'Fault calculations on a power system networks'),
          SubSection(text: 'Line to ground faults'),
          SubSection(text: 'Line to line faults'),
          SubSection(text: 'Double line to ground faults'),

          SectionHeader(text: 'Power System Stability(10 hours)'),
          SubSection(
              text: 'Operational power balance in a synchronous generator'),
          SubSection(text: 'Classification of power system stability'),
          SubSection(
              text:
                  'Swing equation & swing curve for a single machine infinite bus system'),
          SubSection(
              text:
                  'Rotor angle stability; steady state, dynamic & transient stability'),
          SubSection(text: 'Equal area criterion'),
          SubSection(text: 'Stability enhancement techniques'),
          SubSection(
              text:
                  'Step by step method for solving swing equations by computer methods'),
          SubSection(text: 'Basic concept of voltage stability'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Power System Analysis by W.D. Stevension, Tata McGraw Hill Publications'),
          SubSection(text: 'Power System Stability and Control by P. Kundur'),
          SubSection(
              text:
                  'Modern Power System Analysis by I.J Nagrath and D.P Kothari, Tata McGraw Hill Publications')

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
