import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class InstrumentationII extends StatelessWidget {
  final int initialTabIndex;
  InstrumentationII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Instrumentation II',
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
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
          SectionHeader(
              text: 'Microprocessor Based Instrumentation System(4 hours)'),
          SubSection(text: 'Basic Features of Microprocessor Based System'),
          SubSection(
              text: 'Open Loop and Closed Loop Microprocessor Based System'),
          SubSection(text: 'Benefits of Microprocessor Based System'),
          SubSection(text: 'Microcomputer on Instrumentation Design'),
          SubSection(text: 'Interfacing With Microprocessor'),
          SubSection(text: 'PC Interfacing Techniques'),
          SubSection(text: 'Review of Address Decoding'),
          SubSection(text: 'Memory Interfacing'),
          SubSection(
              text:
                  'Programmed I/O, Interrupt Driven I/O and Direct Memory Access (DMA)'),

          SectionHeader(
              text:
                  'Parallel Interfacing With Microprocessor Based System(4 hours)'),
          SubSection(
              text:
                  'Methods of Parallel Data Transfer : Simple Input and Output, Strobe I/O, Single Handshake I/O, & Double Handshake I/O'),
          SubSection(
              text:
                  '8255 as General Purpose Programmable I/O Device and its interfacing examples'),
          SubSection(text: 'Parallel Interfacing with ISA and PCI bus'),

          SectionHeader(
              text:
                  'Serial  Interfacing With Microprocessor Based System(6 hours)'),
          SubSection(text: 'Advantages of Serial Data Transfer Over Parallel'),
          SubSection(text: 'Synchronous and Asynchronous Data Transfer'),
          SubSection(text: 'Errors in Serial Data Transfer'),
          SubSection(
              text: 'Simplex, Half Duplex and Full Duplex Data Communication'),
          SubSection(text: 'Parity and Baud Rates'),
          SubSection(text: 'Introduction Serial Standards RS232, RS423, RS422'),
          SubSection(text: 'Universal Serial Bus'),
          SubSection(text: 'The Standards: - USB 1.1 and USB 2.0'),
          SubSection(text: 'Signals, Throughput & Protocol'),
          SubSection(text: 'Devices, Hosts And On-The-Go'),
          SubSection(text: 'Interface Chips:- USB Device And USB Host'),

          SectionHeader(text: 'Interfacing A/D And D/A Converters(4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'General Terms Involved in A/D and D/A Converters'),
          SubSection(text: 'Examples of A/D and D/A Interfacing'),
          SubSection(
              text:
                  'Selection of A/D and D/A Converters Based on Design Requirements'),

          SectionHeader(text: 'Data Acquisition And Transmission(5 hours)'),
          SubSection(text: 'Analog and Digital Transmission'),
          SubSection(text: 'Transmission Schemes'),
          SubSection(text: 'Fiber Optics'),
          SubSection(text: 'Satellite'),
          SubSection(text: 'Bluetooth Devices'),
          SubSection(text: 'Data Acquisition System'),
          SubSection(text: 'Data Loggers'),
          SubSection(text: 'Data Archiving and Storage'),

          SectionHeader(text: 'Grounding And Shielding(3 hours)'),
          SubSection(text: 'Outline for Grounding and Shielding'),
          SubSection(text: 'Noise, Noise Coupling Mechanism and Prevention'),
          SubSection(text: 'Single Point Grounding and Ground Loop'),
          SubSection(text: 'Filtering and Smoothing'),
          SubSection(text: 'Decoupling Capacitors and Ferrite Beads'),
          SubSection(text: 'Line Filters, Isolators and Transient Suppressors'),
          SubSection(text: 'Different Kinds of Shielding Mechanism'),
          SubSection(text: 'Protecting Against Electrostatic Discharge'),
          SubSection(text: 'General Rules For Design'),

          SectionHeader(text: 'Circuit Design(3 hours)'),
          SubSection(text: 'Converting Requirements into Design'),
          SubSection(text: 'Reliability and Fault Tolerance'),
          SubSection(text: 'High Speed Design'),
          SubSection(
              text:
                  'Bandwidth, Decoupling, Ground Bounce, Crosstalk, Impedance Matching, and Timing'),
          SubSection(text: 'Low Power Design'),
          SubSection(
              text: 'Reset and Power Failure Detection  and interface Unit'),

          SectionHeader(text: 'Circuit Layout(3 hours)'),
          SubSection(text: 'Circuits Boards and PCBs'),
          SubSection(text: 'Component Placement'),
          SubSection(text: 'Routing Signal Tracks'),
          SubSection(
              text:
                  'Trace Density, Common Impedance, Distribution of Signals and Return, Transmission Line Concerns, Trace Impedance and Matching, and Avoiding Crosstalk.'),
          SubSection(text: 'Ground ,Returns and Shields'),
          SubSection(text: 'Cables and Connectors'),
          SubSection(text: 'Testing and Maintenance'),

          SectionHeader(
              text:
                  'Software For Instrumentation And Control Applications(4 hours)'),
          SubSection(text: 'Types of Software, Selection and Purchase'),
          SubSection(text: 'Software Models and Their Limitations'),
          SubSection(text: 'Software Reliability'),
          SubSection(text: 'Fault Tolerance'),
          SubSection(text: 'Software Bugs and Testing'),
          SubSection(text: 'Good Programming Practice'),
          SubSection(text: 'User Interface'),
          SubSection(text: 'Embedded and Real Time Software'),

          SectionHeader(text: 'Case Study(9 hours)'),
          SubSection(
              text:
                  'Examples chosen from local industrial situations with particular attention paid to the basic measurement requirements, accuracy, and specific hardware employed environmental conditions under which the instruments must operate, signal processing and transmission, output devices:'),
          SubSection(
              text:
                  'Instrumentation for a power station including all electrical and non-electrical parameters.'),
          SubSection(
              text:
                  'Instrumentation for a wire and cable manufacturing and bottling plant.'),
          SubSection(
              text:
                  'Instrumentation for a beverage manufacturing and bottling plant.'),
          SubSection(
              text:
                  'Instrumentation for a complete textile plant; for example, a cotton mill from raw cotton through to finished dyed fabric.'),
          SubSection(
              text:
                  'Instrumentation for a process; for example, an oil seed processing plant from raw seeds through to packaged edible oil product.'),
          SubSection(
              text:
                  'Instruments required for a biomedical application such as a medical clinic or hospital.'),
          SubSection(
              text:
                  'Other industries can be selected with the consent of the Subject teacher.'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'The laboratory exercises deal interfacing techniques using microprocessor or microcontrollers. There will be about six lab sessions which should cover at least following:'),
          SubSection(text: 'Simple and Handshake data transfer using PPI.'),
          SubSection(
              text:
                  'Basic I/O device interfacing like keyboard, seven segments, motors etc'),
          SubSection(text: 'Analog to Digital interfacing'),
          SubSection(text: 'Digital to Analog interfacing'),
          SubSection(text: 'Design exercise (small group project)'),
          SubSection(
              text:
                  'Study in detail the instrumentation requirements of a particular proposed or existing industrial plant and design an instrumentation and data collection system for that particular industrial plant. The final report should present the instrumentation requirements in terms of engineering specifications, the hardware solution suggested, a listing of the particular devices chosen to satisfy the requirements, appropriate system flow diagrams, wiring diagrams, etc. to show how the system would be connected and operated.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'D. V. Hall, “Microprocessor and Interfacing, Programming and Hardware” Revised 2nd Edition 2006, Tata McGraw Hill'),
          SubSection(
              text:
                  'K.R. Fowler, “Electronic Instrument Design: Architecting for the Life Cycle”, Oxford University Press, Inc. 1996'),
          SubSection(
              text:
                  'Ramesh S. Gaonkar, “Microprocessor Architecture, Programming and Application with 8085”, 5th Edition 2002, Prentice Hall'),
          SubSection(
              text:
                  'A.K. Ray & K.M. Bhurchandi, “Advanced Microprocessors And Peripherals”, 2nd Edition 2006, Tata McGraw Hill'),
          SubSection(
              text:
                  'E.O. Duebelin, “Measurement System Application And Design”,5th Edition, Tata McGraw Hills'),
          SubSection(text: 'John Hyde, "USB Design By Example", Intel Press'),
          SubSection(text: 'PCI bus, USB, 8255,Bluetooth datasheets'),
          SubSection(
              text:
                  'D. M. Consodine, "Process Instruments and Controls Handbook", 3rd Edition, McGraw-Hill,New York, 1985.'),
          SubSection(
              text:
                  'S. Wolf and R. F. Smith, "Student Reference Manual for Electronic InstrumentationLaboratories", Prentice Hall, Englewood Cliffs, New Jersey, 1990.'),
          SubSection(
              text:
                  'S. E. Derenzo, "Interfacing: A Laboratory Approach Using the Microcomputer forInstrumentation, Data Analysis, and Control", Prentice Hall, Englewood Cliffs, New Jersey, 1990.')
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
