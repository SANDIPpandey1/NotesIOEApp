import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SimulationandModeling extends StatelessWidget {
  final int initialTabIndex;
  SimulationandModeling({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Simulation and Modeling',
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
        InsideButtons(text: 'Overview', icon: Icons.read_more, onTap: () {})

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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('18')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Introduction to Simulation (4 hours)'),
          SubSection(text: 'System, model and simulation'),
          SubSection(text: 'Discrete and continuous systems'),
          SubSection(text: 'Model of a system'),
          SubSection(text: 'Types of models'),
          SubSection(text: 'Steps in simulation study'),
          SubSection(text: 'Model development life cycle'),
          SubSection(text: 'Advantage and disadvantage of simulation'),
          SubSection(text: 'Limitations of the simulation techniques'),
          SubSection(text: 'Areas of application'),

          SectionHeader(text: 'Physical and Mathematical models (4 hours)'),
          SubSection(text: 'Static physical model'),
          SubSection(text: 'Dynamic physical model'),
          SubSection(text: 'Static mathematical models'),
          SubSection(text: 'Dynamic mathematical models'),

          SectionHeader(text: 'Continuous system simulation (5 hours)'),
          SubSection(text: 'Differential and partial differential equations'),
          SubSection(text: 'Continuous system models'),
          SubSection(text: 'Analog computer'),
          SubSection(text: 'Analog Methods'),
          SubSection(text: 'Hybrid simulation'),
          SubSection(text: 'Digital-Analog simulators'),
          SubSection(text: 'Continuous System simulation languages(CSSLs)'),
          SubSection(text: 'Feedback systems'),

          SectionHeader(text: 'Queuing system (6 hours)'),
          SubSection(text: 'Elements of queuing system'),
          SubSection(text: 'Characteristics of queuing systems'),
          SubSection(text: 'Model of queuing system'),
          SubSection(text: 'Types of queuing system'),
          SubSection(text: 'Queuing notation'),
          SubSection(text: 'Measurement of system performance'),
          SubSection(text: 'Network of queues'),
          SubSection(text: 'Applications of queuing system'),

          SectionHeader(text: 'Markov chains (3 hours)'),
          SubSection(text: 'Key features of Markov chains'),
          SubSection(text: 'Markov process with example'),
          SubSection(text: 'Application of Markov chain'),

          SectionHeader(text: 'Random Number (10 hours)'),
          SubSection(text: 'Properties of Random Numbers'),
          SubSection(text: 'Generation of Pseudo-Random numbers'),
          SubSection(text: 'Random Number generation methods'),
          SubSection(text: 'Test for random numbers'),
          SubSection(text: 'Generating discrete distribution'),
          SubSection(text: 'Inversion, rejection, composition and Convolution'),

          SectionHeader(
              text:
                  'Verification and validation of simulation models (3 hours)'),
          SubSection(text: 'Verification and validation'),
          SubSection(text: 'Verification of simulation models'),
          SubSection(text: 'Calibration and validation of models'),

          SectionHeader(text: 'Analysis of simulation output (4 hours)'),
          SubSection(text: 'Estimation methods'),
          SubSection(text: 'Simulation run statistics'),
          SubSection(text: 'Replication of runs'),
          SubSection(text: 'Elimination of Initial bias'),

          SectionHeader(text: 'Simulation software (3 hours)'),
          SubSection(text: 'Simulation in Java'),
          SubSection(text: 'Simulation in GPSS'),
          SubSection(text: 'Simulation in SSF'),
          SubSection(text: 'Other simulation software'),

          SectionHeader(text: 'Simulation of computer systems (3 hours)'),
          SubSection(text: 'Simulation tools'),
          SubSection(text: 'High Level computer–system simulation'),
          SubSection(text: 'CPU simulation'),
          SubSection(text: 'Memory Simulation'),

          SectionHeader(text: 'Practicals:'),
          SubSection(text: 'Simulation of continuous system'),
          SubSection(text: 'Simulation of the R-C amplifier circuit'),
          SubSection(text: 'Generation of Random number'),
          SubSection(text: 'Simulation mass spring damper system'),
          SubSection(text: 'Simulation of National econometric system'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Jerry Banks, John S. Carson II, Barry L. Nelson, Devid M. Nicol, P. Shahabudeen: Discrete-Event system simulation'),
          SubSection(text: 'Geoffrey Gordon: System Simulation'),
          SubSection(
              text:
                  'A.M. Law and W.D. Kelton: Simulation and Modeling and analysis'),
          SubSection(
              text:
                  'R. Y. Rubinstein, B. Melamed: Modern Simulation and Modeling'),
          SubSection(text: 'S. Shakya: Lab Manual on Simulation and modeling')
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
