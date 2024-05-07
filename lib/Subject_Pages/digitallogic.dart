import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DigitalLogic extends StatelessWidget {
  final int initialTabIndex;
  DigitalLogic({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Digital Logic',
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('11')),
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
          SectionHeader(text: 'Introduction (3 hours)'),
          SubSection(text: 'Definitions for Digital Signals'),
          SubSection(text: 'Digital Waveforms'),
          SubSection(text: 'Digital Logic'),
          SubSection(text: 'Moving and Storing Digital Information'),
          SubSection(text: 'Digital Operations'),
          SubSection(text: 'Digital Computer'),
          SubSection(text: 'Digital Integrated Circuits'),
          SubSection(text: 'Digital IC Signal Levels'),
          SubSection(text: 'Clock wave form'),
          SubSection(text: 'Coding'),
          SubSection(text: 'ASCII Code'),
          SubSection(text: 'BCD'),
          SubSection(text: 'The Excess – 3 Code'),
          SubSection(text: 'The Gray Code'),

          SectionHeader(text: 'Digital Logic(1 hour)'),
          SubSection(text: 'The Basic Gates: NOT, OR, AND'),
          SubSection(text: 'Universal Logic Gates: NOR, NAND'),
          SubSection(text: 'AND-OR-INVERT Gates'),
          SubSection(text: 'Positive and Negative Logic'),
          SubSection(text: 'Introduction to HDL'),

          SectionHeader(text: 'Combinational Logic Circuits(5 hours)'),
          SubSection(text: 'Boolean Laws and Theorems'),
          SubSection(text: 'Sum-of-Products Method'),
          SubSection(text: 'Truth Table to Karnaugh Map'),
          SubSection(text: 'Pairs, Quads, and Octets'),
          SubSection(text: 'Karnaugh Simplifications'),
          SubSection(text: 'Don’t Care Conditions'),
          SubSection(text: 'Product of Sums Method'),
          SubSection(text: 'Product of Sums Simplification'),
          SubSection(text: 'Hazards and Hazard Covers'),
          SubSection(text: 'HDL Implementation Models'),

          SectionHeader(text: 'Data Processing Circuits(5 hours)'),
          SubSection(text: 'Multiplexetures'),
          SubSection(text: 'Demultiplexetures'),
          SubSection(text: 'Decoder'),
          SubSection(text: 'BCD-to-Decimal Decoders'),
          SubSection(text: 'Seven-Segment Decoders'),
          SubSection(text: 'Encoder'),
          SubSection(text: 'Exclusive-OR Gates'),
          SubSection(text: 'Parity Generators and Checkers'),
          SubSection(text: 'Magnitude Comparator'),
          SubSection(text: 'Read-Only Memory'),
          SubSection(text: 'Programmable Array Logic'),
          SubSection(text: 'Programmable Logic Arrays'),
          SubSection(text: 'Troubleshooting with a Logic Problems'),
          SubSection(text: 'HDL Implementation of Data Processing Circuits'),

          SectionHeader(text: 'Arithmetic Circuits(5 hours)'),
          SubSection(text: 'Binary Addition'),
          SubSection(text: 'Binary Subtraction'),
          SubSection(text: 'Unsigned Binary Numbers'),
          SubSection(text: 'Sign-Magnitude Numbers'),
          SubSection(text: '2’s Complement Representation'),
          SubSection(text: '2’s Complement Arithmetic'),
          SubSection(text: 'Arithmetic Building Blocks'),
          SubSection(text: 'The Adder-Subtracter'),
          SubSection(text: 'Fast Adder'),
          SubSection(text: 'Arithmetic Logic Unit'),
          SubSection(text: 'Binary Multiplication and Division'),
          SubSection(text: 'Arithmetic Circuits Using HDL'),

          SectionHeader(text: 'Flip Flops(5 hours)'),
          SubSection(text: 'RS Flip-Flops'),
          SubSection(text: 'Gated Flip-Flops'),
          SubSection(text: 'Edge-Triggered RS Flip-Flops'),
          SubSection(text: 'Egde Triggered D Flip-Flops'),
          SubSection(text: 'Egde Triggered JK Flip-Flops'),
          SubSection(text: 'Flip-Flop Timing'),
          SubSection(text: 'JK Mater- Slave Flip-Flops'),
          SubSection(text: 'Switch Contacts Bounds Circuits'),
          SubSection(text: 'Various Representation of Flip-Flops'),
          SubSection(text: 'Analysis of Sequencial Circuits'),

          SectionHeader(text: 'Registers(2 hours)'),
          SubSection(text: 'Types of Registers'),
          SubSection(text: 'Serial In–Serial Out'),
          SubSection(text: 'Serial In–Parallel Out'),
          SubSection(text: 'Parallel In–Serial Out'),
          SubSection(text: 'Parallel In–Parallel Out'),
          SubSection(text: 'Applications of Shift Registers'),

          SectionHeader(text: 'Counters(5 hours)'),
          SubSection(text: 'Asynchronous Counters'),
          SubSection(text: 'Decoding Gates'),
          SubSection(text: 'Synchronous Counters'),
          SubSection(text: 'Changing the Counter Modulus'),
          SubSection(text: 'Decade Counters'),
          SubSection(text: 'Presettable Counters'),
          SubSection(text: 'Counter Design as a Synthesis Problem'),
          SubSection(text: 'A Digital Clock'),

          SectionHeader(text: 'Sequential Machines(8 hours)'),
          SubSection(text: 'Synchronous Machines'),
          SubSection(text: 'Clock Driven Models and State Diagrams'),
          SubSection(text: 'Transition tables, Redundant States'),
          SubSection(text: 'Binary Assignment'),
          SubSection(text: 'Use of Flip-Flops in realizing the models'),
          SubSection(text: 'Asynchronous Machines'),
          SubSection(
              text:
                  'Hazards in Asynchronous System and Use of Redundant Branch'),
          SubSection(text: 'Allowable Transitions'),
          SubSection(text: 'Flow tables and Merger Diagrams'),
          SubSection(text: 'Excitation Maps and Realization of the models'),

          SectionHeader(text: 'Digital Integrated Circuits(4 hours)'),
          SubSection(text: 'Switching Circuits'),
          SubSection(text: '7400 TTL'),
          SubSection(text: 'TTL parameters'),
          SubSection(text: 'TTL Overvew'),
          SubSection(text: 'Open Collecter Gates'),
          SubSection(text: 'Three-state TTL Devices'),
          SubSection(text: 'External Drive for TTL Lods'),
          SubSection(text: 'TTL Driving External Loads'),
          SubSection(text: '74C00 CMOS'),
          SubSection(text: 'CMOS Characteristics'),
          SubSection(text: 'TTL-to–CMOS Interface'),
          SubSection(text: 'CMOS-to-TTL Interface'),

          SectionHeader(text: 'Applications(2 hours)'),
          SubSection(text: 'Multiplexing Displays'),
          SubSection(text: 'Frequency Counters'),
          SubSection(text: 'Time Measurement'),
          SubSection(text: 'Practical:'),
          SubSection(
              text:
                  'DeMorgan’s law and it’s familiarization with NAND and NOR gates'),
          SubSection(text: 'Encoder, Decoder, and Multiplexer'),
          SubSection(
              text: 'Familiarization with Binary Addition and Subtraction'),
          SubSection(text: 'Construction of True Complement Generator'),
          SubSection(text: 'Latches, RS, Master-Slave and T type flip flops'),
          SubSection(text: 'D and JK type flip flops'),
          SubSection(text: 'Ripple Counter, Synchronous counter'),
          SubSection(
              text:
                  'Familiarization with computer package for logic circuit design'),
          SubSection(
              text:
                  'Design digital circuits using hardware and software tools'),
          SubSection(text: 'Use of PLAs and PLDs'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Donald P. Leach, Albert Paul Malvino and  Goutam Saha, “ Digital Principles and Applications”, 6th edition , Tata McGraw-Hill, 2006'),
          SubSection(
              text:
                  'David  J Comer “Digital Logic And State Machine Design” 3rd edition, Oxfored University Press, 2002'),
          SubSection(
              text:
                  'William I. Fletcher “An Engineering Approach  to Digital Design” Printice Hall of India, New Delhi 1990'),
          SubSection(
              text:
                  'William H. Gothmann, “Digital Electronics, An Introduction to Theory and Practice”, 2nd edition, PHI, 2009')
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
