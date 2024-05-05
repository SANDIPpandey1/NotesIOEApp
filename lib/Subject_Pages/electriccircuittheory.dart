import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ElectricCircuitTheory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electric Circuit Theory',
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('7')),
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
          SectionHeader(text: 'Network Analysis of AC circuit & Dependent Sources(8 hours)'),
          SubSection(text: 'Mesh Analysis'),
          SubSection(text: 'Nodal Analysis'),
          SubSection(text: 'Series & parallel resonance in RLC circuits'),
          SubSection(text: 'Impedance and phase angle of series Resonant Circuit'),
          SubSection(text: 'Voltage and current in series resonant circuit'),
          SubSection(text: 'Band width of the RLC circuit.'),
          SubSection(text: 'High-Q and Low-Q circuits'),

          SectionHeader(text: 'Initial Conditions(2 hours)'),
          SubSection(text: 'Characteristics of various network elements'),
          SubSection(text: 'Initial value of Derivatives'),
          SubSection(text: 'Procedure for evaluating initial conditions'),
          SubSection(text: 'Initial condition in the case of RLC network'),

          SectionHeader(text: 'Transient analysis in RLC circuit by direct solution(10 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'First order Differential equation'),
          SubSection(text: 'Higher order homogeneous and non-homogeneous differential equations'),
          SubSection(text: 'Particular integral by method of undetermined coefficients'),
          SubSection(text: 'Response of R-L circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of R-C circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of series RLC circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of parallel RLC circuit with DC excitation'),

          SectionHeader(text: 'Transient analysis in RLC circuit by Laplace Transform(8 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'The Laplace Transformation'),
          SubSection(text: 'Important properties of Laplace transformation'),
          SubSection(text: 'Use of Partial Fraction expansion in analysis using Laplace Transformations'),
          SubSection(text: "Heaviside's partial fraction expansion theorem"),
          SubSection(text: 'Response RL circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of RC circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of series RLC circuit with'),
          SubSection(text: 'DC excitation'),
          SubSection(text: 'Exponential excitation'),
          SubSection(text: 'Sinusoidal excitation'),
          SubSection(text: 'Response of parallel RLC circuit with exponential excitation'),
          SubSection(text: 'Transfer functions Poles and Zeros of Networks'),

          SectionHeader(text: 'Frequency Response of Network(6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Magnitude and Phase response'),
          SubSection(text: 'Bode Diagrams'),
          SubSection(text: 'Bandwidth of Series & parallel Resonance circuits'),
          SubSection(text: 'Basic concept of filters, high pass, low pass, band pass and band stop filters'),

          SectionHeader(text: 'Fourier Series and transform(5 hours)'),
          SubSection(text: 'Basic concept of Fourier series and analysis'),
          SubSection(text: 'Evaluation of Fourier coefficients for periodic non-sinusoidal waveforms in electric networks'),
          SubSection(text: 'Introduction of Fourier transforms'),

          SectionHeader(text: 'Two-port Parameter of Networks(6 hours)'),
          SubSection(text: 'Definition of two-port networks'),
          SubSection(text: 'Short Circuit admittance parameters'),
          SubSection(text: 'Open Circuits impedance parameters'),
          SubSection(text: 'Transmission Short Circuit admittance parameters'),
          SubSection(text: 'Hybrid Parameters'),
          SubSection(text: 'Relationship and Transformations between sets of parameters'),
          SubSection(text: 'Application to Filters'),
          SubSection(text: 'Applications to Transmission Lines'),
          SubSection(text: 'Interconnection of two-port network(Cascade, series, parallel)'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Resonance in RLC series circuit: measurement of resonant frequency'),
          SubSection(text: 'Transient Response in first Order System passive circuits:'),
          SubSection(text: 'measure step and impulse response of RL and RC circuit using oscilloscope'),
          SubSection(text: 'relate time response to analytical transfer functions calculations'),
          SubSection(text: 'Transient Response in Second Order System passive circuits:'),
          SubSection(text: 'measure step and impulse response of RLC series and parallel circuits using oscilloscope'),
          SubSection(text: 'relate time response to transfer functions and pole-zero configuration'),
          SubSection(text: 'Frequency Response of first  order passive circuits:'),
          SubSection(text: 'measure amplitude and phase response and plot bode diagrams for RL, RC and RLC circuits'),
          SubSection(text: 'relate Bode diagrams to transfer functions and pole zero configuration circuit'),
          SubSection(text: 'Frequency Response of second order passive circuits:'),
          SubSection(text: 'measure amplitude and phase response and plot bode diagrams for RL, RC and RLC circuits'),
          SubSection(text: 'relate Bode diagrams to transfer functions and pole zero configuration circuit'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'M. E. Van Valkenburg, "Network Analysis", third edition Prentice Hall, 2010.'),
          SubSection(text: 'William H. Hyat. Jr. & Jack E. Kemmerly, "Engineering Circuits Analysis", Fourth edition, McGraw Hill International Editions, Electrical Engineering Series, 1987.'),
          SubSection(text: 'Michel D. Cilletti, "Introduction to Circuit Analysis and Design", Holt, Hot Rinehart and Winston International Edition, New York, 1988.')

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