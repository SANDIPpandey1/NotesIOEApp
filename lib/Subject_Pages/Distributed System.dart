import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DistributedSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Distributed System',
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('3, 4, 10')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
         SectionHeader(text: 'Introduction (4 hours)'),
    SubSection(text: 'Introduction to Distributed Systems'),
    SubSection(text: 'Examples of Distributed Systems'),
    SubSection(text: 'Main Characteristics'),
    SubSection(text: 'Advantages and Disadvantages of Distributed System'),
    SubSection(text: 'Design Goals'),
    SubSection(text: 'Main Problems'),
    SubSection(text: 'Models of Distributed System'),
    SubSection(text: 'Resource Sharing and the Web Challenges'),
    SubSection(text: 'Types of Distributed System: Grid, Cluster, Cloud'),

SectionHeader(text: 'Distributed Objects and File System (7 hours)'),
    SubSection(text: 'Introduction'),
    SubSection(text: 'Communication between distributed objects'),
    SubSection(text: 'Remote Procedure Call'),
    SubSection(text: 'Events And Notifications'),
    SubSection(text: 'Java RMI Case Study'),
    SubSection(text: 'Introduction to DFS'),
    SubSection(text: 'File Service Architecture'),
    SubSection(text: 'Sun Network File System'),
    SubSection(text: 'Introduction to Name Services'),
    SubSection(text: 'Name Services and DNS'),
    SubSection(text: 'Directory and Discovery Services'),
    SubSection(text: 'Comparison of Different Distributed File Systems'),

SectionHeader(text: 'Operating System Support (3 hours)'),
    SubSection(text: 'The operating system layer'),
    SubSection(text: 'Protection'),
    SubSection(text: 'Process and threads'),
    SubSection(text: 'Communication and invocation'),
    SubSection(text: 'Operating system architecture'),

SectionHeader(text: 'Distributed Heterogeneous Applications and CORBA (3 hours)'),
    SubSection(text: 'Heterogeneity in Distributed Systems'),
    SubSection(text: 'Middleware'),
    SubSection(text: 'Objects in Distributed Systems'),
    SubSection(text: 'The CORBA approach'),
    SubSection(text: 'CORBA services'),

SectionHeader(text: 'Time and State in Distributed Systems (5 hours)'),
    SubSection(text: 'Time in Distributed Systems'),
    SubSection(text: 'Physical Clocks'),
    SubSection(text: 'Logical Clocks'),
    SubSection(text: 'Vector Clocks'),
    SubSection(text: 'Clock Synchronization'),
    SubSection(text: 'Causal Ordering of Messages'),
    SubSection(text: 'Global State and State Recording'),
    SubSection(text: 'Distributed debugging'),

SectionHeader(text: 'Coordination and Agreement (4 hours)'),
    SubSection(text: 'Mutual Exclusion in Distributed Systems'),
    SubSection(text: 'Algorithms for Mutual Exclusion'),
    SubSection(text: 'Distributed Elections'),
    SubSection(text: 'Multicast communication'),
    SubSection(text: 'Consensus'),

SectionHeader(text: 'Replication (4 hours)'),
    SubSection(text: 'Reasons for Replication'),
    SubSection(text: 'Object Replication'),
    SubSection(text: 'Replication as Scaling Technique'),
    SubSection(text: 'Fault Tolerant Services'),
    SubSection(text: 'High Available Services'),
    SubSection(text: 'Transaction with Replicated Data'),

SectionHeader(text: 'Transaction and Concurrency Control (6 hours)'),
    SubSection(text: 'Transactions'),
    SubSection(text: 'Nested Transaction'),
    SubSection(text: 'Locks'),
    SubSection(text: 'Optimistic Concurrency Control'),
    SubSection(text: 'Timestamp Ordering'),
    SubSection(text: 'Comparison of Methods For Concurrency Control'),
    SubSection(text: 'Introduction to Distributed Transactions'),
    SubSection(text: 'Flat and Nested Distributed Transactions'),
    SubSection(text: 'Atomic Commit Protocols'),
    SubSection(text: 'Concurrency Control in Distributed Transactions'),
    SubSection(text: 'Distributed Deadlocks'),
    SubSection(text: 'Transaction Recovery'),

SectionHeader(text: 'Fault Tolerance (4 hours)'),
    SubSection(text: 'Introduction to Fault Tolerance'),
    SubSection(text: 'Process Resilience'),
    SubSection(text: 'Reliable Client Server Communication'),
    SubSection(text: 'Distributed Commit'),
    SubSection(text: 'Recovery'),

SectionHeader(text: 'Case Studies (5 hours)'),
    SubSection(text: 'CORBA'),
    SubSection(text: 'Mach'),
    SubSection(text: 'JINI'),
    SubSection(text: 'TIB/Rendezvous'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'Implementation of Election Algorithm.'),
    SubSection(text: 'Simulation for Clock Synchronization in Distributed System using Lamport’s Algorithm.'),
    SubSection(text: 'Implementation of Banker’s Algorithm for avoiding Deadlock'),
    SubSection(text: 'Experiment on DFS'),
    SubSection(text: 'Case Study – CORBA,JINI, Mach, TIB/Rendezvous'),

SectionHeader(text: 'Reference:'),
    SubSection(text: 'George Coulouris, Jean Dollimore, Tim Kindberg, “Distributed Systems Concepts and Design”, Third Edition, Pearson Education.'),
    SubSection(text: 'A.S. Tanenbaum, M. VanSteen, “Distributed Systems”, Pearson Education.'),
    SubSection(text: 'Mukesh Singhal, “Advanced Concepts in Operating Systems”, McGraw-Hill Series in Computer Science.')

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