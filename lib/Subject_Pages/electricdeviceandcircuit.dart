import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Edc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electronics Devices and Circuits',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('1, 2, 3, 4, 5, 6')),
                    ),
                    TableCell(
                      child: Center(child: Text('-')),
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
          SectionHeader(text: 'Basic Circuits Concepts(4 hours)'),
          SubSection(
              text:
                  'Passive components: Resistance, Inductance, Capacitance; series, parallel combinations; Kirchhoff\'s law: Voltage, Current, Linearity'),
          SubSection(
              text:
                  'Signal sources: Voltage and Current sources; Non-ideal sources; Representation under assumption of Linearity; controlled sources: VCVS, CCVS, VCCS, CCCS; concept of Gain, Transconductance, Transimpedance'),
          SubSection(
              text:
                  'Superposition theorem, Thevenin\'s theorem, Norton\'s theorem'),
          SubSection(text: 'Introduction to Filter'),

          SectionHeader(text: 'Diodes(7 hours)'),
          SubSection(text: 'Semiconductor Diode Characteristics'),
          SubSection(text: 'Modeling the Semiconductor Diode'),
          SubSection(text: 'Diode circuits: Clipper; Clamper circuits'),
          SubSection(
              text:
                  'Zener diode, LED, Photodiode, Varacters diode, Tunnel diodes'),
          SubSection(
              text:
                  'DC power supply: Rectifier; Half wave, Full wave(center-tapped, bridge), Zener-regulated power supply'),

          SectionHeader(text: 'Transistor(4 hours)'),
          SubSection(
              text:
                  'BJT configuration and biasing, small and large signal model'),
          SubSection(text: 'T and µ model'),
          SubSection(text: 'Concept of Differential amplifier using BJT'),
          SubSection(text: 'BJT switch and Logic circuits'),
          SubSection(
              text: 'Construction and working principle of MOSFET and CMOS'),
          SubSection(text: 'MOSFET as logic circuits'),

          SectionHeader(
              text: 'The Operational Amplifier and Oscillator(7 hours)'),
          SubSection(
              text:
                  'Basic model; Virtual ground concept; Inverting Amplifier, Non-inverting Amplifier, Integrator, Differentiator,Ssumming Amplifier and their applications'),
          SubSection(
              text:
                  'Basic feedback theory; positive and negative feedback; concept of stability; Oscillator'),
          SubSection(
              text:
                  'Waveform generator using Op-Amp for Square Wave, Triangular Wave, Wien Bridge Oscillator for sinusoidal waveform'),

          SectionHeader(text: 'Communication System(4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Wired and Wireless Communication system'),
          SubSection(
              text:
                  'EMW and propagation, Antenna, Broadcasting and Communication'),
          SubSection(text: 'Internet/Intranet'),
          SubSection(text: 'Optical fiber'),

          SectionHeader(text: 'Digital Electronics(11 hours)'),
          SubSection(text: 'Number systems, Binary arithmetic'),
          SubSection(
              text:
                  'Logic gates: OR, NOT, AND, NOR, NAND, XOR, XNOR gate; Truth tables'),
          SubSection(text: 'Multiplexers, Demux, Encoder, Decoder'),
          SubSection(text: 'Logic Function Representation'),
          SubSection(text: 'Combinational circuits: SOP, POS form; K-map'),
          SubSection(
              text:
                  'Latch, flip-flop: S-R flip-flop; JK flip-flop, Master-Slave flip-flop; D-flip flop'),
          SubSection(
              text:
                  'Sequential circuits: Generic block diagram; Shift registers; Counters'),

          SectionHeader(text: 'Application of Electronic System(5 hours)'),
          SubSection(
              text:
                  'Instrumentation system: Transducer, Strain Gauge, DMM, Oscilloscope'),
          SubSection(text: 'Regulated power supply'),
          SubSection(
              text:
                  'Remote control, Character Display, Clock, Counter, Measurements, Data Logging, Audio-Video system'),

          SectionHeader(text: 'Reference Books:'),
          SubSection(
              text:
                  'Erwin Kreyszig, "Advanced Engineering Mathematics", John Wiley and Sons Inc'),
          SubSection(
              text:
                  'Thomas, Finney, "Calculus and Analytical Geometry", Addison-Wesley'),
          SubSection(
              text:
                  'M. B. Singh, B. C. Bajracharya, "Differential Calculus", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text:
                  'M. B. Singh, B. C. Bajracharya, "A Textbook of Vectors", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text: 'M. B. Singh, S. P. Shrestha, "Applied Mathematics"'),
          SubSection(
              text:
                  'G.D. Pant, G. S. Shrestha, "Integral Calculus and Differential Equations", Sunila Prakashan, Nepal'),
          SubSection(
              text:
                  'Y. R. Sthapit, B. C. Bajracharya, "A Textbook of Three-Dimensional Geometry", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text:
                  'Santosh Man Maskey, "Calculus", Ratna Pustak Bhandar, Nepal')
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
