import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ComputerOrginzationAndArchitecture extends StatelessWidget {
  final int initialTabIndex;
  ComputerOrginzationAndArchitecture({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Computer Organization and Architecture',
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
            text: 'Compiled Note',
            icon: Icons.arrow_forward,
            onTap: () {
              openPDF(context,
                  'https://notesioe.com/wp-content/uploads/2024/05/COA-notes.pdf');
            }),
        SizedBox(height: 10),
        InsideButtons(
            text: 'Chapter 2 - CPU',
            icon: Icons.arrow_forward,
            onTap: () {
              openPDF(context,
                  'https://notesioe.com/wp-content/uploads/2024/05/Chapter_2-Central-Processing-Unit.pdf');
            }),
        SizedBox(height: 10),
        InsideButtons(
            text: 'Chapter 4 - Pipeline and Vector',
            icon: Icons.arrow_forward,
            onTap: () {
              openPDF(context,
                  'https://notesioe.com/wp-content/uploads/2024/05/Chapter-4-Pipeline-and-Vector-Processing.pdf');
            }),
        SizedBox(height: 10),
        InsideButtons(
            text: 'Chapter 5 - Computer Arhiteture',
            icon: Icons.arrow_forward,
            onTap: () {
              openPDF(context,
                  'https://notesioe.com/wp-content/uploads/2024/05/Chapter-5-Computer-Arithmatic.pdf');
            })

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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('8')),
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
          SubSection(text: 'Computer organization and architecture'),
          SubSection(text: 'Structure and function'),
          SubSection(text: 'Designing for performance'),
          SubSection(text: 'Computer components'),
          SubSection(text: 'Computer Function'),
          SubSection(text: 'Interconnection structures'),
          SubSection(text: 'Bus interconnection'),
          SubSection(text: 'PCI'),

          SectionHeader(text: 'Central processing Unit (10 hours)'),
          SubSection(text: 'CPU Structure and Function'),
          SubSection(text: 'Arithmetic and logic Unit'),
          SubSection(text: 'Instruction formats'),
          SubSection(text: 'Addressing modes'),
          SubSection(text: 'Data transfer and manipulation'),
          SubSection(text: 'RISC and CISC'),
          SubSection(text: '64-Bit Processor'),

          SectionHeader(text: 'Control Unit (6 hours)'),
          SubSection(text: 'Control Memory'),
          SubSection(text: 'Addressing sequencing'),
          SubSection(text: 'Computer configuration'),
          SubSection(text: 'Microinstruction Format'),
          SubSection(text: 'Symbolic Microinstructions'),
          SubSection(text: 'Symbolic Micro program'),
          SubSection(text: 'Control Unit Operation'),
          SubSection(text: 'Design of control unit'),

          SectionHeader(text: 'Pipeline and Vector processing (5 hours)'),
          SubSection(text: 'Pipelining'),
          SubSection(text: 'Parallel processing'),
          SubSection(text: 'Arithmetic Pipeline'),
          SubSection(text: 'Instruction Pipeline'),
          SubSection(text: 'RISC pipeline'),
          SubSection(text: 'Vector processing'),
          SubSection(text: 'Array processing'),

          SectionHeader(text: 'Computer Arithmetic (8 hours)'),
          SubSection(text: 'Addition algorithm'),
          SubSection(text: 'Subtraction algorithm'),
          SubSection(text: 'Multiplication algorithm'),
          SubSection(text: 'Division algorithms'),
          SubSection(text: 'Logical operation'),

          SectionHeader(text: 'Memory system (5 hours)'),
          SubSection(text: 'Microcomputer Memory'),
          SubSection(text: 'Characteristics of memory systems'),
          SubSection(text: 'The Memory Hierarchy'),
          SubSection(text: 'Internal and External memory'),
          SubSection(text: 'Cache memory principles'),
          SubSection(text: 'Elements of Cache design'),
          SubSection(text: 'Cache size'),
          SubSection(text: 'Mapping function'),
          SubSection(text: 'Replacement algorithm'),
          SubSection(text: 'Write policy'),
          SubSection(text: 'Number of caches'),

          SectionHeader(text: 'Input-Output organization (6 hours)'),
          SubSection(text: 'Peripheral devices'),
          SubSection(text: 'I/O modules'),
          SubSection(text: 'Input-output interface'),
          SubSection(text: 'Modes of transfer'),
          SubSection(text: 'Programmed I/O'),
          SubSection(text: 'Interrupt-driven I/O'),
          SubSection(text: 'Direct Memory access'),
          SubSection(text: 'I/O processor'),
          SubSection(text: 'Data Communication processor'),

          SectionHeader(text: 'Multiprocessors (2 hours)'),
          SubSection(text: 'Characteristics of multiprocessors'),
          SubSection(text: 'Interconnection Structures'),
          SubSection(text: 'Interprocessor Communication and synchronization'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Add of two unsigned Integer binary number'),
          SubSection(
              text:
                  'Multiplication of two unsigned Integer Binary numbers by Partial-Product Method'),
          SubSection(text: 'Subtraction of two unsigned integer binary number'),
          SubSection(text: 'Division using Restoring'),
          SubSection(text: 'Division using non-restoring methods'),
          SubSection(text: 'To simulate a direct mapping cache'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'M. Morris Mano: Computer System Architecture, Latest Edition'),
          SubSection(
              text:
                  'William Stalling: Computer organization and architecture, Latest Edition'),
          SubSection(
              text:
                  'John P. Hayes: Computer Architecture and Organization, Latest Edition'),
          SubSection(
              text:
                  'V.P. Heuring, H.F. Jordan: Computer System design and architecture, Latest Edition'),
          SubSection(
              text: 'S. Shakya: Lab Manual on Computer Architecture and design')
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
              fileSize: '0.5',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Computer-Orginization-and-Architecture.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
