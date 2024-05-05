import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EmbeddedSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Embedded System',
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('3')),
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
          SectionHeader(text: 'Introduction to Embedded System [3 Hours]'),
    SubSection(text: 'Embedded Systems overview'),
    SubSection(text: 'Classification of Embedded Systems'),
    SubSection(text: 'Hardware and Software in a system'),
    SubSection(text: 'Purpose and Application of Embedded Systems'),

SectionHeader(text: 'Hardware Design Issues [4 Hours]'),
    SubSection(text: 'Combination Logic'),
    SubSection(text: 'Sequential Logic'),
    SubSection(text: 'Custom Single-Purpose Processor Design'),
    SubSection(text: 'Optimizing Custom Single-Purpose Processors'),

SectionHeader(text: 'Software Design Issues [6 Hours]'),
    SubSection(text: 'Basic Architecture'),
    SubSection(text: 'Operation'),
    SubSection(text: 'Programmer’s View'),
    SubSection(text: 'Development Environment'),
    SubSection(text: 'Application-Specific Instruction-Set Processors'),
    SubSection(text: 'Selecting a Microprocessor'),
    SubSection(text: 'General-Purpose Processor Design'),

SectionHeader(text: 'Memory [5 Hours]'),
    SubSection(text: 'Memory Write Ability and Storage Permanence'),
    SubSection(text: 'Types of Memory'),
    SubSection(text: 'Composing Memory'),
    SubSection(text: 'Memory Hierarchy and Cache'),

SectionHeader(text: 'Interfacing [6 Hours]'),
    SubSection(text: 'Communication Basics'),
    SubSection(text: 'Microprocessor Interfacing: I/O Addressing, Interrupts, DMA'),
    SubSection(text: 'Arbitration'),
    SubSection(text: 'Multilevel Bus Architectures'),
    SubSection(text: 'Advanced Communication Principles'),

SectionHeader(text: 'Real-Time Operating System (RTOS) [8 Hours]'),
    SubSection(text: 'Operating System Basics'),
    SubSection(text: 'Task, Process, and Threads'),
    SubSection(text: 'Multiprocessing and Multitasking'),
    SubSection(text: 'Task Scheduling'),
    SubSection(text: 'Task Synchronization'),
    SubSection(text: 'Device Drivers'),

SectionHeader(text: 'Control System [3 Hours]'),
    SubSection(text: 'Open-loop and Close-Loop control System overview'),
    SubSection(text: 'Control System and PID Controllers'),
    SubSection(text: 'Software coding of a PID Controller'),
    SubSection(text: 'PID Tuning'),

SectionHeader(text: 'IC Technology [3 Hours]'),
    SubSection(text: 'Full-Custom (VLSI) IC Technology'),
    SubSection(text: 'Semi-Custom (ASIC) IC Technology'),
    SubSection(text: 'Programming Logic Device (PLD) IC Technology'),

SectionHeader(text: 'Microcontrollers in Embedded Systems [3 Hours]'),
    SubSection(text: 'Intel 8051 microcontroller family, its architecture and instruction sets'),
    SubSection(text: 'Programming in Assembly Language'),
    SubSection(text: 'A simple interfacing example with 7 segment display'),

SectionHeader(text: 'VHDL [4 Hours]'),
    SubSection(text: 'VHDL overview'),
    SubSection(text: 'Finite state machine design with VHDL'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'Student should be complete project work related to this subject.'),

SectionHeader(text: 'Reference Books:'),
    SubSection(text: 'David E. Simon, “An Embedded Software Primer”, Addison-Wesley, 2005'),
    SubSection(text: 'Muhammad Ali Mazidi, “8051 Microcontroller and Embedded Systems”, Prentice Hall, 2006'),
    SubSection(text: 'Frank Vahid, Tony Givargis, “Embedded System Design”, John Wiley & Sons, 2008'),
    SubSection(text: 'Douglas L. Perry, “VHDL Programming by example”, McGraw Hill, 2002')

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