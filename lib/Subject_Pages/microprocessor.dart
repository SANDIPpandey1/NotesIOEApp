import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Microprocessor extends StatelessWidget {
  final int initialTabIndex;
  Microprocessor({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Microprocessor',
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
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('1, 2, 3, 4, 5, 6')),
                    ),
                    TableCell(
                      child: Center(child: Text('-')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
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
          SectionHeader(text: 'Introduction(4 hours)'),
          SubSection(text: 'Introduction and History of Microprocessors'),
          SubSection(text: 'Basic Block Diagram of a Computer'),
          SubSection(text: 'Organization of Microprocessor Based System'),
          SubSection(text: 'Bus Organization'),
          SubSection(text: 'Stored program Concept and Von Neumann Machine'),
          SubSection(text: 'Processing Cycle of a Stored Program Computer'),
          SubSection(
              text:
                  'Microinstructions and Hardwired/Microprogrammed Control Unit'),
          SubSection(text: 'Introduction to Register Transfer Language'),

          SectionHeader(text: 'Programming with 8085 Microprocessor(10 hours)'),
          SubSection(
              text:
                  'Internal Architecture and Features of 8085 microprocessor'),
          SubSection(text: 'Instruction Format and Data Format'),
          SubSection(text: 'Addressing Modes of 8085'),
          SubSection(text: 'Intel 8085 Instruction Set'),
          SubSection(text: 'Various Programs in 8085'),
          SubSection(
              text: 'Simple Programs with Arithmetic and Logical Operations'),
          SubSection(text: 'Conditions and Loops'),
          SubSection(text: 'Array and Table Processing'),
          SubSection(text: 'Decimal BCD Conversion'),
          SubSection(text: 'Multiplication and Division'),

          SectionHeader(text: 'Programming with 8086 Microprocessor(12 hours)'),
          SubSection(
              text:
                  'Internal Architecture and Features of 8086 Microprocessor'),
          SubSection(text: 'BIU and Components'),
          SubSection(text: 'EU and Components'),
          SubSection(text: 'EU and BIU Operations'),
          SubSection(text: 'Segment and Offset Address'),
          SubSection(text: 'Addressing Modes of 8086'),
          SubSection(text: 'Assembly Language Programming'),
          SubSection(text: 'High Level versus Low Level Programming'),
          SubSection(text: 'Assembly Language Syntax'),
          SubSection(text: 'Comments'),
          SubSection(text: 'Reserved words'),
          SubSection(text: 'Identifiers'),
          SubSection(text: 'Statements'),
          SubSection(text: 'Directives'),
          SubSection(text: 'Operators'),
          SubSection(text: 'Instructions'),
          SubSection(text: 'EXE and COM programs'),
          SubSection(text: 'Assembling, Linking and Executing'),
          SubSection(text: 'One Pass and Two Pass Assemblers'),
          SubSection(text: 'Keyboard and Video Services'),
          SubSection(text: 'Various Programs in 8086'),
          SubSection(
              text:
                  'Simple Programs for Arithmetic, Logical, String Input/Output'),
          SubSection(text: 'Conditions and Loops'),
          SubSection(text: 'Array and String Processing'),
          SubSection(text: 'Read and Display ASCII and Decimal Numbers'),
          SubSection(
              text: 'Displaying Numbers in Binary and Hexadecimal Formats'),

          SectionHeader(text: 'Microprocessor System(10 hours)'),
          SubSection(
              text: 'Pin Configuration of 8085 and 8086 Microprocessors'),
          SubSection(text: 'Bus Structure'),
          SubSection(text: 'Synchronous Bus'),
          SubSection(text: 'Asynchronous Bus'),
          SubSection(
              text:
                  'Read and Write Bus Timing of 8085 and 8086 Microprocessors'),
          SubSection(text: 'Memory Device Classification and Hierarchy'),
          SubSection(text: 'Interfacing I/O and Memory'),
          SubSection(text: 'Address Decoding'),
          SubSection(text: 'Unique and Non Unique Address Decoding'),
          SubSection(text: 'I/O Mapped I/O and Memory Mapped I/O'),
          SubSection(text: 'Serial and Parallel Interfaces'),
          SubSection(
              text:
                  'I/O Address Decoding with NAND and Block Decoders (8085, 8086)'),
          SubSection(
              text:
                  'Memory Address Decoding with NAND, Block and PROM Decoders (8085, 8086)'),
          SubSection(text: 'Parallel Interface'),
          SubSection(
              text:
                  'Modes: Simple, Wait, Single Handshaking and Double Handshaking'),
          SubSection(
              text: 'Introduction to Programmable Peripheral Interface (PPI)'),
          SubSection(text: 'Serial Interface'),
          SubSection(text: 'Synchronous and Asynchronous Transmission'),
          SubSection(
              text: 'Serial Interface Standards: RS232, RS423, RS422, USB'),
          SubSection(text: 'Introduction to USART'),
          SubSection(
              text:
                  'Introduction to Direct Memory Access (DMA) and DMA Controllers'),

          SectionHeader(text: 'Interrupt Operations(5 hours)'),
          SubSection(text: 'Polling versus Interrupt'),
          SubSection(text: 'Interrupt Processing Sequence'),
          SubSection(text: 'Interrupt Service Routine'),
          SubSection(text: 'Interrupt Processing in 8085'),
          SubSection(text: 'Interrupt Pins and Priorities'),
          SubSection(text: 'Using Programmable Interrupt Controllers (PIC)'),
          SubSection(text: 'Interrupt Instructions'),
          SubSection(text: 'Interrupt Processing in 8086'),
          SubSection(text: 'Interrupt Pins'),
          SubSection(text: 'Interrupt Vector Table and its Organization'),
          SubSection(text: 'Software and Hardware Interrupts'),
          SubSection(text: 'Interrupt Priorities'),

          SectionHeader(text: 'Advanced Topics(4 hours)'),
          SubSection(text: 'Multiprocessing Systems'),
          SubSection(text: 'Real and Pseudo-Parallelism'),
          SubSection(text: 'Flynn’s Classification'),
          SubSection(
              text:
                  'Instruction Level, Thread Level and Process Level Parallelism'),
          SubSection(
              text:
                  'Interprocess Communication, Resource Allocation and Deadlock'),
          SubSection(text: 'Features of Typical Operating System'),
          SubSection(text: 'Different Microprocessor Architectures'),
          SubSection(text: 'Register Based and Accumulator Based Architecture'),
          SubSection(text: 'RISC and CISC Architectures'),
          SubSection(text: 'Digital Signal Processors'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'There will be about 12 lab exercises to program 8085 and 8086 microprocessors.'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'Ramesh S. Gaonkar, “Microprocessor Architecture, Programming and Application with 8085”, 5th Edition 2002, Prentice Hall'),
          SubSection(
              text:
                  'Peter Abel, “IBM PC Assembly Language and Programming”, 5th Edition 2001, Pearson Education Inc.'),
          SubSection(
              text:
                  'D. V. Hall, “Microprocessor and Interfacing, Programming and Hardware”, 2nd Edition 1999, Tata McGraw Hill'),
          SubSection(
              text:
                  'John Uffenbeck, “Microcomputers and Microprocessors, The 8080, 8085 and Z-80 Programming, Interfacing and Troubleshooting” 3rd Edition 1999, Prentice Hall'),
          SubSection(
              text:
                  'Walter A. Triebel and Avtar Singh, “The 8088 and 8086 Microprocessors, Programming, Interfacing, Software, Hardware and Applications”, 4th Edition 2003, Prentice Hall'),
          SubSection(
              text:
                  'William Stalling, “Computer Organization and Architecture”, 8th Edition 2009, Prentice Hall')
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
