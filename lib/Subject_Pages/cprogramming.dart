import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class CProgramming extends StatelessWidget {
  final int initialTabIndex;
  CProgramming({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'C Programming',
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
                      child: Center(child: Text('1, 2')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3, 4')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: '1. Computer Software & Programming Languages'),
          SubSection(text: 'System Software'),
          SubSection(text: 'Application Software'),
          SubSection(text: 'General Software Features and Recent Trends'),
          SubSection(text: 'Generation of Programming Languages'),
          SubSection(text: 'Categorization of High-Level Languages'),

          SectionHeader(text: '2. Problem Solving using Computer'),
          SubSection(text: 'Problem Analysis'),
          SubSection(text: 'Algorithm Development and Flowchart'),
          SubSection(text: 'Compilation and Execution'),
          SubSection(text: 'Debugging and Testing'),
          SubSection(text: 'Programming Documentation'),

          SectionHeader(text: '3. Introduction to ‘C’ Programming'),
          SubSection(text: 'Character Set, Keywords, and Data Types'),
          SubSection(text: 'Preprocessor Directives'),
          SubSection(text: 'Constants and Variables'),
          SubSection(text: 'Operators and Statements'),

          SectionHeader(text: '4. Input and Output'),
          SubSection(text: 'Formatted Input/Output'),
          SubSection(text: 'Character Input/Output'),
          SubSection(text: 'Programs using Input/Output Statements'),

          SectionHeader(text: '5. Control Statements'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'The goto, if, if … else, switch statements'),
          SubSection(text: 'The while, do … while, for statements'),

          SectionHeader(text: '6. User-Defined Functions'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Function Definition and Return Statement'),
          SubSection(text: 'Function Prototypes'),
          SubSection(
              text:
                  'Function Invocation, Call by Value and Call by Reference, Recursive Functions'),

          SectionHeader(text: '7. Arrays and Strings'),
          SubSection(text: 'Defining an Array'),
          SubSection(text: 'One-dimensional Arrays'),
          SubSection(text: 'Multi-dimensional Arrays'),
          SubSection(text: 'Strings and String Manipulation'),
          SubSection(text: 'Passing Array and String to Function'),

          SectionHeader(text: '8. Structures'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Processing a Structure'),
          SubSection(text: 'Arrays of Structures'),
          SubSection(text: 'Arrays within Structures'),
          SubSection(text: 'Structures and Function'),

          SectionHeader(text: '9. Pointers'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Pointer Declaration'),
          SubSection(text: 'Pointer Arithmetic'),
          SubSection(text: 'Pointer and Array'),
          SubSection(text: 'Passing Pointers to a Function'),
          SubSection(text: 'Pointers and Structures'),

          SectionHeader(text: '10. Data Files'),
          SubSection(text: 'Defining Opening and Closing a File'),
          SubSection(text: 'Input/Output Operations on Files'),
          SubSection(text: 'Error Handling during Input/Output Operations'),

          SectionHeader(text: '11. Programming Language: FORTRAN'),
          SubSection(text: 'Character Set'),
          SubSection(text: 'Data Types, Constants and Variables'),
          SubSection(text: 'Arithmetic Operations, Library Functions'),
          SubSection(text: 'Structure of a Fortran Program'),
          SubSection(text: 'Formatted and Unformatted Input/Output Statements'),
          SubSection(
              text:
                  'Control Structures: Goto, Logical IF, Arithmetic IF, Do Loops'),
          SubSection(text: 'Arrays: One-dimensional and Two-dimensional'),

          SectionHeader(text: 'Laboratory:'),
          SubSection(
              text:
                  'Minimum 6 sets of computer programs in C (from Unit 4 to Unit 10) and 2 sets in FORTRAN (from Unit 11) should be done individually. (30 marks out of 50 marks)'),
          SubSection(
              text:
                  'Students (maximum 4 persons in a group) should submit a mini-project at the end of the course. (20 marks out of 50 marks)'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'Kelly & Pohl, “A Book on C”, Benjamin/Cummings'),
          SubSection(
              text:
                  'Brian W. Kernighan & Dennis M. Ritchie, “The ‘C’ Programming Language”, PHI'),
          SubSection(text: 'Byron S. Gottfried, “Programming with C”, TMH'),
          SubSection(text: 'Yashavant Kanetkar, “Let Us C”, BPB'),
          SubSection(
              text:
                  'D. M. Etter, “Structured Fortran & for Engineers and Scientist”, The Benjamin/Cummings Publishing Company, Inc.'),
          SubSection(
              text:
                  'Rama N. Reddy and Carol A. Ziegler, “FORTRAN 77 with Applications for Scientists and Engineers”, Jaico Publishing House'),
          SubSection(
              text:
                  'Alexis Leon, Mathews Leon, “Fundamentals of Information Technology”, Leon Press and Vikas Publishing House')

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
                    'https://notesioe.com/wp-content/uploads/2023/10/Computer-Programming.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
