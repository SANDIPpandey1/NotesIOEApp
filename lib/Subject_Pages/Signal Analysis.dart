import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SignalAnalysis extends StatelessWidget {
  final int initialTabIndex;
  SignalAnalysis({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Signal Analysis',
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
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('22')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
          SectionHeader(text: 'Signal (4 hours)'),
          SubSection(
              text:
                  'Signal definition, continuous time signal, discrete time signal, basic signal types'),
          SubSection(text: 'Energy signal, power signal'),
          SubSection(
              text:
                  'Periodicity of continuous time signal, periodicity of discrete time signal'),
          SubSection(text: 'Transformation of independent variable'),

          SectionHeader(text: 'Fourier series (9 hours)'),
          SubSection(text: 'Continuous time Fourier series representation'),
          SubSection(
              text:
                  'Properties of continuous time Fourier series (linearity, time shift, frequency shift, time reversal, time scaling, conjugation conjugate symmetry, multiplication, convolution)'),
          SubSection(text: 'Parseval relation'),
          SubSection(text: 'Discrete time Fourier series representation'),
          SubSection(
              text:
                  'Properties of discrete time Fourier series (linearity, time shift, frequency shift, time reversal, conjugation and conjugate symmetry, multiplication, convolution)'),
          SubSection(text: 'Parseval relation'),

          SectionHeader(text: 'Fourier transform (12 hours)'),
          SubSection(text: 'Continuous time Fourier transform representation'),
          SubSection(
              text:
                  'Properties of continuous time Fourier transform (linearity, time shift, frequency shift, time reversal, time scaling, duality, conjugation and conjugate symmetry, multiplication, convolution)'),
          SubSection(text: 'Parseval relation'),
          SubSection(
              text:
                  'Fourier transform of square wave function, impulse function, unit step function, rectangular function, signum function, cosine function, periodic function etc'),
          SubSection(text: 'Energy spectral density, power spectral density'),
          SubSection(text: 'Discrete time Fourier transform representation'),
          SubSection(
              text:
                  'Properties of discrete time Fourier transform (linearity, time shift, frequency shift, time reversal, conjugation and conjugate symmetry, multiplication, convolution)'),
          SubSection(text: 'Parseval relation'),
          SubSection(
              text:
                  'Fourier transform of rectangular sequence, unit sample sequence, periodic sequence etc'),
          SubSection(text: 'Discrete Fourier transform'),
          SubSection(text: 'Properties of discrete Fourier transform'),

          SectionHeader(text: 'Sampling (2 hours)'),
          SubSection(text: 'Ideal sampling'),
          SubSection(text: 'Practical considerations in sampling'),
          SubSection(text: 'Reconstruction of signal from its samples'),
          SubSection(text: 'Aliasing'),

          SectionHeader(text: 'Continuous time system (9 hours)'),
          SubSection(text: 'System definition, properties of system'),
          SubSection(
              text: 'Linear time invariant (LTI) system, convolution integral'),
          SubSection(text: 'Properties of LTI system'),
          SubSection(text: 'Frequency response of LTI system, bode plot'),
          SubSection(text: 'Conditions for distortionless transmission'),
          SubSection(text: 'Ideal low pass filter'),
          SubSection(
              text:
                  'Impulse response and step response of ideal low pass filter'),
          SubSection(
              text:
                  'Impulse response and frequency response of first order system and second order system'),

          SectionHeader(text: 'Discrete time system (9 hours)'),
          SubSection(text: 'System definition, properties of system'),
          SubSection(
              text: 'Linear time invariant (LTI) system, convolution sum'),
          SubSection(text: 'Properties of LTI system'),
          SubSection(text: 'Difference equation, transfer function'),
          SubSection(text: 'Frequency response of LTI system, bode plot'),
          SubSection(text: 'Conditions for distortionless transmission'),
          SubSection(
              text:
                  'Impulse response and frequency response of first order system and second order system'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Alan V. Oppenheim, Alan S. Willsky, S. Hamid "Signals and Systems", Prentice Hall'),
          SubSection(
              text:
                  'B. P. Lathi, "Linear systems and signals", Oxford University Press.')

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
