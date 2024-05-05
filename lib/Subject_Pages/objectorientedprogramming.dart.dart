import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Oop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Object Oriented Programming',
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
                      child: Center(child: Text('1, 2, 4')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('7, 9, 10')),
                    ),
                    TableCell(
                      child: Center(child: Text('13')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
              text: 'Introduction to Object Oriented Programming(3 hours)'),
          SubSection(text: 'Issues with Procedure Oriented Programming'),
          SubSection(text: 'Basic of Object Oriented Programming (OOP)'),
          SubSection(
              text: 'Procedure Oriented versus Object Oriented Programming'),
          SubSection(text: 'Concept of Object Oriented Programming'),
          SubSection(text: 'Object'),
          SubSection(text: 'Class'),
          SubSection(text: 'Abstraction'),
          SubSection(text: 'Encapsulation'),
          SubSection(text: 'Inheritance'),
          SubSection(text: 'Polymorphism'),
          SubSection(text: 'Example of Some Object Oriented Languages'),
          SubSection(text: 'Advantages and Disadvantages of OOP'),

          SectionHeader(text: 'Introduction to C++(2 hours)'),
          SubSection(text: 'The Need of C++'),
          SubSection(text: 'Features of C++'),
          SubSection(text: 'C++ Versus C'),
          SubSection(text: 'History of C++'),

          SectionHeader(text: 'C++ Language Constructs(6 hours)'),
          SubSection(text: 'C++ Program Structure'),
          SubSection(text: 'Character Set and Tokens'),
          SubSection(text: 'Keywords'),
          SubSection(text: 'Identifiers'),
          SubSection(text: 'Literals'),
          SubSection(text: 'Operators and Punctuators'),
          SubSection(text: 'Variable Declaration and Expression'),
          SubSection(text: 'Statements'),
          SubSection(text: 'Data Type'),
          SubSection(text: 'Type Conversion and Promotion Rules'),
          SubSection(text: 'Preprocessor Directives'),
          SubSection(text: 'Namespace'),
          SubSection(text: 'User Defined Constant'),
          SubSection(text: 'Input/Output Streams and Manipulators'),
          SubSection(text: 'Dynamic Memory Allocation with new and delete'),
          SubSection(text: 'Condition and Looping'),
          SubSection(text: 'Functions'),
          SubSection(text: 'Function Syntax'),
          SubSection(text: 'Function Overloading'),
          SubSection(text: 'Inline Functions'),
          SubSection(text: 'Default Argument'),
          SubSection(text: 'Pass by Reference'),
          SubSection(text: 'Return by Reference'),
          SubSection(text: 'Array, Pointer and String'),
          SubSection(text: 'Structure, Union and Enumeration'),

          SectionHeader(text: 'Objects and Classes(6 hours)'),
          SubSection(text: 'C++ Classes'),
          SubSection(text: 'Access Specifiers'),
          SubSection(text: 'Objects and the Member Access'),
          SubSection(text: 'Defining Member Function'),
          SubSection(text: 'Constructor'),
          SubSection(text: 'Default Constructor'),
          SubSection(text: 'Parameterized Constructor'),
          SubSection(text: 'Copy Constructor'),
          SubSection(text: 'Destructors'),
          SubSection(text: 'Object as Function Arguments and Return Type'),
          SubSection(text: 'Array of Objects'),
          SubSection(text: 'Pointer to Objects and Member Access'),
          SubSection(
              text: 'Dynamic Memory Allocation for Objects and Object Array'),
          SubSection(text: 'Pointer'),
          SubSection(text: 'Static Data Member and Static Function'),
          SubSection(text: 'Constant Member Functions and Constant Objects'),
          SubSection(text: 'Friend Function and Friend Classes'),

          SectionHeader(text: 'Operator Overloading(5 hours)'),
          SubSection(text: 'Overloadable Operators'),
          SubSection(text: 'Syntax of Operator Overloading'),
          SubSection(text: 'Rules of Operator Overloading'),
          SubSection(text: 'Unary Operator Overloading'),
          SubSection(text: 'Binary Operator Overloading'),
          SubSection(
              text:
                  'Operator Overloading with Member and Non Member Functions'),
          SubSection(
              text:
                  'Data Conversion: Basic–User Defined and User Defined–User Defined'),
          SubSection(text: 'Explicit Constructors'),

          SectionHeader(text: 'Inheritance(5 hours)'),
          SubSection(text: 'Base and Derived Class'),
          SubSection(text: 'protected Access Specifier'),
          SubSection(text: 'Derived Class Declaration'),
          SubSection(text: 'Member Function Overriding'),
          SubSection(
              text:
                  'Forms of Inheritance: Single, Multiple, Multilevel, Hierarchical, Hybrid, Multipath'),
          SubSection(text: 'Multipath Inheritance and Virtual Base Class'),
          SubSection(
              text:
                  'Constructor Invocation in Single and Multiple Inheritances'),
          SubSection(text: 'Destructor in Single and Multiple Inheritances'),

          SectionHeader(text: 'Polymorphism and Dynamic Binding(4 hours)'),
          SubSection(text: 'Need of Virtual Function'),
          SubSection(text: 'Pointer to Derived Class'),
          SubSection(text: 'Definition of Virtual Functions'),
          SubSection(text: 'Array of Pointers to Base Class'),
          SubSection(text: 'Pure Virtual functions and Abstract Class'),
          SubSection(text: 'Virtual Destructor'),
          SubSection(text: 'Reinterpret_cast Operator'),
          SubSection(text: 'Run-Time Type Information'),
          SubSection(text: 'Dynamic_cast Operator'),
          SubSection(text: 'Type_id Operator'),

          SectionHeader(
              text:
                  'Stream Computation for Console and File Input/Output(5 hours)'),
          SubSection(text: 'Stream Class Hierarchy for Console Input/Output'),
          SubSection(text: 'Testing Stream Errors'),
          SubSection(text: 'Unformatted Input/Output'),
          SubSection(
              text:
                  'Formatted Input/Output with IOS Member functions and Flags'),
          SubSection(text: 'Formatting with Manipulators'),
          SubSection(text: 'Stream Operator Overloading'),
          SubSection(text: 'File Input/output with Streams'),
          SubSection(text: 'File Stream Class Hierarchy'),
          SubSection(text: 'Opening and Closing files'),
          SubSection(text: 'Read/Write from File'),
          SubSection(text: 'File Access Pointers and their Manipulators'),
          SubSection(text: 'Sequential and Random Access to File'),
          SubSection(text: 'Testing Errors during File Operations'),

          SectionHeader(text: 'Templates(5 hours)'),
          SubSection(text: 'Function Template'),
          SubSection(text: 'Overloading Function Template'),
          SubSection(text: 'Overloading with Functions'),
          SubSection(text: 'Overloading with other Template'),
          SubSection(text: 'Class Template'),
          SubSection(text: 'Function Definition of Class Template'),
          SubSection(text: 'Non-Template Type Arguments'),
          SubSection(text: 'Default Arguments with Class Template'),
          SubSection(text: 'Derived Class Template'),
          SubSection(text: 'Introduction to Standard Template Library'),
          SubSection(text: 'Containers'),
          SubSection(text: 'Algorithms'),
          SubSection(text: 'Iterators'),

          SectionHeader(text: 'Exception Handling(4 hours)'),
          SubSection(text: 'Error Handling'),
          SubSection(text: 'Exception Handling Constructs (try, catch, throw)'),
          SubSection(text: 'Advantage over Conventional Error Handling'),
          SubSection(text: 'Multiple Exception Handling'),
          SubSection(text: 'Rethrowing Exception'),
          SubSection(text: 'Catching All Exceptions'),
          SubSection(text: 'Exception with Arguments'),
          SubSection(text: 'Exceptions Specification for Function'),
          SubSection(text: 'Handling Uncaught and Unexpected Exceptions'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'There will be about 12 lab exercises covering the course. At the end of the course students must complete a programming project on object oriented programming with C++.'),

          SectionHeader(text: 'References :'),
          SubSection(
              text:
                  'Robert Lafore, “Object Oriented Programming in C++”, 4th Edition 2002, Sams Publication'),
          SubSection(
              text:
                  'Daya Sagar Baral and Diwakar Baral, “The Secrets of Object Oriented Programming in C++”, 1st Edition 2010, Bhundipuran Prakasan'),
          SubSection(
              text:
                  'Harvey M. Deitel and Paul J. Deitel, “C++ How to Program”, 3rd Edition 2001, Pearson Education Inc.'),
          SubSection(
              text:
                  'D. S. Malik, “C++ Programming”, 3rd Edition 2007, Thomson Course Technology'),
          SubSection(
              text:
                  'Herbert Schildt, “C++: The Complete Reference”, 4th Edition 2003, Tata McGraw Hill')
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
