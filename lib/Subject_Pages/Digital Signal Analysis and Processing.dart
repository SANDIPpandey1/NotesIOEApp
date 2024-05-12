import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DigitalSignalAnalysis extends StatelessWidget {
  final int initialTabIndex;
  DigitalSignalAnalysis({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Digital Signal Analysis',
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
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
          SectionHeader(text: 'Discrete time signals and systems [8 hours]'),
          SubSection(text: 'Discrete time signal, basic signal types'),
          SubSection(text: 'Energy signal, power signal'),
          SubSection(text: 'Periodicity of discrete time signal'),
          SubSection(text: 'Transformation of independent variable'),
          SubSection(text: 'Discrete time Fourier series and properties'),
          SubSection(text: 'Discrete time Fourier transform and properties'),
          SubSection(text: 'Discrete time system properties'),
          SubSection(
              text:
                  'Linear time invariant (LTI) system convolution sum, properties of LTI system'),
          SubSection(text: 'Frequency response of LTI system'),
          SubSection(
              text:
                  'Sampling of continuous time signal, spectral properties of sampled signal.'),

          SectionHeader(text: 'Z-transform [4 hours]'),
          SubSection(
              text:
                  'Definition, convergence of Z-transform and region of convergence'),
          SubSection(
              text:
                  'Properties of Z-transform (linearity, time shift, multiplication by exponential sequence, differentiation, time reversal, convolution, multiplication)'),
          SubSection(
              text:
                  'Inverse z-transform by long division and partial fraction expansion.'),

          SectionHeader(
              text: 'Analysis of LTI system in frequency domain [6 hours]'),
          SubSection(
              text:
                  'Frequency response of LTI system, response to complex exponential'),
          SubSection(
              text:
                  'Linear constant co-efficient difference equation and corresponding system function'),
          SubSection(
              text:
                  'Relationship of frequency response to pole-zero of system'),
          SubSection(
              text:
                  'Linear phase of LTI system and its relationship to causality.'),

          SectionHeader(text: 'Discrete filter structures [8 hours]'),
          SubSection(
              text:
                  'FIR filter, Structures for FIR filter (direct form, cascade, frequency sampling, lattice)'),
          SubSection(
              text:
                  'IIR filter, structures for IIR filter (direct form I, direct form II, cascade, lattice, lattice ladder)'),
          SubSection(
              text:
                  'Quantization effect (truncation, rounding), limit cycles and scaling.'),

          SectionHeader(text: 'FIR filter design [6 hours]'),
          SubSection(
              text:
                  'Filter design by window method, commonly used windows (rectangular window, Hanning window, Hamming window)'),
          SubSection(text: 'Filter design by Kaiser window'),
          SubSection(text: 'Filter design by frequency sampling method'),
          SubSection(
              text:
                  'Filter design using optimum approximation, Remez exchange algorithm.'),

          SectionHeader(text: 'IIR filter design [6 hours]'),
          SubSection(text: 'Filter design by impulse invariance method'),
          SubSection(text: 'Filter design using bilinear transformation'),
          SubSection(text: 'Design of digital low pass Butterworth filter'),
          SubSection(
              text:
                  'Properties of Chebyshev filter, properties of elliptic filter, properties of Bessel filter, Spectral transformation.'),

          SectionHeader(text: 'Discrete Fourier transform [7 hours]'),
          SubSection(
              text:
                  'Discrete Fourier transform (DFT) representation, properties of DFT (linearity, time shift, frequency shift, conjugation and conjugate symmetry, duality, convolution, multiplication), circular convolution'),
          SubSection(
              text:
                  'Fast Fourier Transform (FFT) algorithm (decimation in time algorithm, decimation in frequency algorithm)'),
          SubSection(text: 'Computational complexity of FFT algorithm.'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Introduction to DSP tools.'),
          SubSection(text: 'Signal generation and manipulation'),
          SubSection(text: 'Convolution'),
          SubSection(text: 'Cascade of second order systems'),
          SubSection(text: 'IIR filter'),
          SubSection(text: 'FIR filter'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'Alan V. Oppenheim, Ronald W. Schafer, John R. Buck, “Discrete-Time Signal Processing”, Pearson Education.'),
          SubSection(
              text:
                  'John G. Proakis, Dimitris G. Manolakis, “Digital Signal Processing”, Prentice Hall.')
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
