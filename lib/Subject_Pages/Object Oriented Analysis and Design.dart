import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ObjectOrientedAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Object Oriented Analysis and Design',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('21')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
                    ),
                    TableCell(
                      child: Center(child: Text('27')),
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
          SectionHeader(text: 'Object Oriented Fundamentals (10 hours)'),
    SubSection(text: 'Introduction'),
    SubSection(text: 'Object Oriented Analysis and Design'),
    SubSection(text: 'Defining Models'),
    SubSection(text: 'Case Study'),
    SubSection(text: 'Requirement Process'),
    SubSection(text: 'Use Cases'),
    SubSection(text: 'Object Oriented Development Cycle'),
    SubSection(text: 'Overview of the Unified Modeling Language: UML Fundamentals and Notations'),

SectionHeader(text: 'Object Oriented Analysis (8 hours)'),
    SubSection(text: 'Building Conceptual Model'),
    SubSection(text: 'Adding Associations and Attributes'),
    SubSection(text: 'Representation of System Behavior'),

SectionHeader(text: 'Object Oriented Design (12 hours)'),
    SubSection(text: 'Analysis to Design'),
    SubSection(text: 'Describing and Elaborating Use Cases'),
    SubSection(text: 'Collaboration Diagram'),
    SubSection(text: 'Objects and Patterns'),
    SubSection(text: 'Determining Visibility'),
    SubSection(text: 'Class Diagram'),

SectionHeader(text: 'Implementation (15 hours)'),
    SubSection(text: 'Programming and Development Process'),
    SubSection(text: 'Mapping Design to Code'),
    SubSection(text: 'Creating Class Definitions from Design Class Diagrams'),
    SubSection(text: 'Creating Methods from Collaboration Diagram'),
    SubSection(text: 'Updating Class Definitions'),
    SubSection(text: 'Classes in Code'),
    SubSection(text: 'Exception and Error Handling'),
    SubSection(text: 'Practical: Laboratory Exercise will include handling an object oriented design and modeling activity in an ACSE Environment. UML pattern design and modeling will be taken up with the help of UML Software.'),

SectionHeader(text: 'Reference Books:'),
    SubSection(text: 'Larman, C., Applying UML and Patterns, Pearson Education Asia, 2008.'),
    SubSection(text: 'Stevens, P., Pooley, R., Using UML: Software Engineering with Objects and Components, Addison-Wesley, 2009.'),
    SubSection(text: 'Fowler, M., Scott, K., UML Distilled: Applying the Standard Object Modeling Language, Addison-Wesley, 2007.'),
    SubSection(text: 'Booch, G., Jacobson, I., Rumbaugh, J., The Unified Software Development Process, Addison-Wesley, 2009.'),
    SubSection(text: 'Booch, G., Jacobson, I., Rumbaugh, J., The Unified Modeling Language User Guide, Addison-Wesley, 2008.'),
    SubSection(text: 'Jacobson I., Object-Oriented Software Engineering – A Use Case Driven Approach, Addison-Wesley, 2009.')

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