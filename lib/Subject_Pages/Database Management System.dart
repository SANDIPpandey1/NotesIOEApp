import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DatabaseManagementSystem extends StatelessWidget {
  final int initialTabIndex;
  DatabaseManagementSystem({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Database Management System',
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('6')),
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
          SectionHeader(text: 'Introduction [3 hours]'),
          SubSection(text: 'Concepts and Applications'),
          SubSection(text: 'Objective and Evolution'),
          SubSection(text: 'Data Abstraction and Data Independence'),
          SubSection(text: 'Schema and Instances'),
          SubSection(text: 'Concepts of DDL, DML and DCL'),

          SectionHeader(text: 'Data Models [7 hours]'),
          SubSection(text: 'Logical, Physical and Conceptual'),
          SubSection(text: 'E-R Model'),
          SubSection(text: 'Entities and Entities sets'),
          SubSection(text: 'Relationship and Relationship sets'),
          SubSection(text: 'Strong and Weak Entity Sets'),
          SubSection(text: 'Attributes and Keys'),
          SubSection(text: 'E-R Diagram'),
          SubSection(
              text: 'Alternate Data Model (hierarchical, network, graph)'),

          SectionHeader(
              text: 'Relational Languages and Relational Model [7 hours]'),
          SubSection(text: 'Introduction to SQL'),
          SubSection(text: 'Features of SQL'),
          SubSection(text: 'Queries and Sub-Queries'),
          SubSection(text: 'Set Operations'),
          SubSection(text: 'Relations (Joined, Derived)'),
          SubSection(text: 'Queries under DDL and DML Commands'),
          SubSection(text: 'Embedded SQL'),
          SubSection(text: 'Views'),
          SubSection(text: 'Relational Algebra'),
          SubSection(text: 'Database Modification'),
          SubSection(text: 'QBE and domain relational calculus'),

          SectionHeader(
              text: 'Database Constraints and Normalization [6 hours]'),
          SubSection(text: 'Integrity Constraints and Domain Constraints'),
          SubSection(text: 'Assertions and Triggering'),
          SubSection(text: 'Functional Dependencies'),
          SubSection(text: 'Multi-valued and Joined Dependencies'),
          SubSection(
              text: 'Different Normal Forms (1st, 2nd, 3rd, BCNF, DKNF)'),

          SectionHeader(text: 'Query Processing and Optimization [4 hours]'),
          SubSection(text: 'Query Cost Estimation'),
          SubSection(text: 'Query Operations'),
          SubSection(text: 'Evaluation of Expressions'),
          SubSection(text: 'Query Optimization'),
          SubSection(text: 'Query Decomposition'),
          SubSection(text: 'Performance Tuning'),

          SectionHeader(text: 'File Structure and Hashing [4 hours]'),
          SubSection(text: 'Records Organizations'),
          SubSection(text: 'Disks and Storage'),
          SubSection(text: 'Remote Backup System'),
          SubSection(text: 'Hashing Concepts, Static and Dynamic Hashing'),
          SubSection(text: 'Order Indices'),
          SubSection(text: 'B+ tree index'),

          SectionHeader(
              text:
                  'Transactions processing and Concurrency Control [6 hours]'),
          SubSection(text: 'ACID properties'),
          SubSection(text: 'Concurrent Executions'),
          SubSection(text: 'Serializability Concept'),
          SubSection(text: 'Lock based Protocols'),
          SubSection(text: 'Deadlock handling and Prevention'),

          SectionHeader(text: 'Crash Recovery [4 hours]'),
          SubSection(text: 'Failure Classification'),
          SubSection(text: 'Recovery and Atomicity'),
          SubSection(text: 'Log-based Recovery'),
          SubSection(text: 'Shadow paging'),
          SubSection(text: 'Advanced Recovery Techniques'),

          SectionHeader(text: 'Advanced database Concepts [4 hours]'),
          SubSection(
              text:
                  'Concept of Object-Oriented and Distributed Database Model'),
          SubSection(text: 'Properties of Parallel and Distributed Databases'),
          SubSection(text: 'Concept of Data warehouse Database'),
          SubSection(text: 'Concept of Spatial Database'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Introduction and operations of MS-Access or MySQL or any suitable DBMS'),
          SubSection(
              text:
                  'Database Server Installation and Configuration (MS-SQLServer, Oracle)'),
          SubSection(
              text:
                  'DB Client Installation and Connection to DB Server. Introduction and practice with SELECT Command with the existing DB.'),
          SubSection(text: 'Further Practice with DML Commands'),
          SubSection(
              text:
                  'Practice with DDL Commands. (Create Database and Tables).'),
          SubSection(
              text:
                  'Practice of Procedure/Trigger and DB Administration & other DBs (MySQL, PG-SQL, DB2.)'),
          SubSection(text: 'Group Project Development.'),
          SubSection(text: 'Project Presentation and Viva'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'H. F. Korth and A. Silberschatz, "Database system concepts", McGraw Hill, 2010.'),
          SubSection(
              text:
                  'A. K. Majumdar and P. Bhattacharaya, "Database Management Systems", Tata McGraw Hill, India, 2004.')
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
