import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class OperatingSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Operating System',
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('6, 8, 9')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
          SectionHeader(text: 'Introduction (5 hours)'),
    SubSection(text: 'Operating System and Function'),
    SubSection(text: 'Evolution of Operating System'),
    SubSection(text: 'Type of Operating System: Batch, Interactive, Multiprocessing, Time Sharing and Real Time System'),
    SubSection(text: 'Operating System Components'),
    SubSection(text: 'Operating System Structure: Monolithic, Layered, Micro-Kernel, Client-Server, Virtual Machine'),
    SubSection(text: 'Operating System Services'),
    SubSection(text: 'System calls'),
    SubSection(text: 'Shell commands'),
    SubSection(text: 'Shell programming'),
    SubSection(text: 'Examples of O. S.: UNIX, Linux, MS-Windows, Handheld OS.'),

SectionHeader(text: 'Process Management (6 hours)'),
    SubSection(text: 'Introduction to Process'),
    SubSection(text: 'Process description'),
    SubSection(text: 'Process states'),
    SubSection(text: 'Process control'),
    SubSection(text: 'Threads'),
    SubSection(text: 'Processes and Threads'),
    SubSection(text: 'Scheduling'),
    SubSection(text: 'Types of scheduling'),
    SubSection(text: 'Scheduling in batch system'),
    SubSection(text: 'Scheduling in Interactive System'),
    SubSection(text: 'Scheduling in Real Time System'),
    SubSection(text: 'Thread Scheduling'),
    SubSection(text: 'Multiprocessor Scheduling concept'),

SectionHeader(text: 'Process Communication and Synchronization (5 hours)'),
    SubSection(text: 'Principles of Concurrency'),
    SubSection(text: 'Critical Region'),
    SubSection(text: 'Race Condition'),
    SubSection(text: 'Mutual Exclusion'),
    SubSection(text: 'Semaphores and Mutex'),
    SubSection(text: 'Message Passing'),
    SubSection(text: 'Monitors'),
    SubSection(text: 'Classical Problems of Synchronization: Readers-Writers Problem, Producer Consumer Problem, Dining Philosopher problem'),

SectionHeader(text: 'Memory Management (6 hours)'),
    SubSection(text: 'Memory address, Swapping and Managing Free Memory Space'),
    SubSection(text: 'Resident Monitor'),
    SubSection(text: 'Multiprogramming with Fixed Partition'),
    SubSection(text: 'Multiprogramming With Variable Partition'),
    SubSection(text: 'Multiple Base Register'),
    SubSection(text: 'Virtual Memory Management'),
    SubSection(text: 'Paging'),
    SubSection(text: 'Segmentation'),
    SubSection(text: 'Paged Segmentation'),
    SubSection(text: 'Demand Paging'),
    SubSection(text: 'Performance'),
    SubSection(text: 'Page Replacement Algorithms'),
    SubSection(text: 'Allocation of Frames'),
    SubSection(text: 'Thrashing'),

SectionHeader(text: 'File Systems (6 hours)'),
    SubSection(text: 'File: Name, Structure, Types, Access, Attribute, Operations'),
    SubSection(text: 'Directory and File Paths'),
    SubSection(text: 'File System Implementation'),
    SubSection(text: 'Selecting Block Size'),
    SubSection(text: 'Impact of Block Size Selection'),
    SubSection(text: 'Implementing File: Contiguous Allocation, Link List Allocation, Link List Allocation with Table, Inode'),
    SubSection(text: 'Implementing Directory'),
    SubSection(text: 'Impact of Allocation Policy on Fragmentation'),
    SubSection(text: 'Mapping File Blocks on The Disk Platter'),
    SubSection(text: 'File System Performance'),
    SubSection(text: 'Example File Systems: CD ROM file system, MS-DOS file system, Unix File system'),

SectionHeader(text: 'I/O Management & Disk Scheduling (4 hours)'),
    SubSection(text: 'Principles of I/O Hardware'),
    SubSection(text: 'Principles of I/O software'),
    SubSection(text: 'I/O software Layer'),
    SubSection(text: 'Disk'),
    SubSection(text: 'Hardware'),
    SubSection(text: 'Formatting'),
    SubSection(text: 'Arm scheduling'),
    SubSection(text: 'Error handling'),
    SubSection(text: 'Stable Storage'),

SectionHeader(text: 'Deadlock (5 hours)'),
    SubSection(text: 'Principles of deadlock'),
    SubSection(text: 'Deadlock Prevention'),
    SubSection(text: 'Deadlock Avoidance'),
    SubSection(text: 'Deadlock Detection'),
    SubSection(text: 'Recovery from deadlock'),
    SubSection(text: 'An Integrated Deadlock Strategies'),
    SubSection(text: 'Other Issues: Two phase locking, Communication Deadlock, Livelock, Starvation'),

SectionHeader(text: 'Security (4 hours)'),
    SubSection(text: 'Security breaches'),
    SubSection(text: 'Types of Attacks'),
    SubSection(text: 'Security Policy and Access Control'),
    SubSection(text: 'Basics of Cryptography'),
    SubSection(text: 'Protection Mechanisms'),
    SubSection(text: 'Authentication'),
    SubSection(text: 'OS Design Considerations For Security'),
    SubSection(text: 'Access Control Lists And OS Support'),

SectionHeader(text: 'System administration (4 hours)'),
    SubSection(text: 'Administration Tasks'),
    SubSection(text: 'User Account Management'),
    SubSection(text: 'Start And Shutdown Procedures'),
    SubSection(text: 'Setting up Operational Environment for a New User'),
    SubSection(text: 'AWK tool, Search, Sort tools, Shell scripts, Make tool'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'Shell commands, shell programming: write simple functions, basic tests, loops, patterns, expansions, substitutions'),
    SubSection(text: 'Programs using the following system calls of UNIX operating system: fork, exec, getpid, exit, wait, close, stat, opendir, readdir'),
    SubSection(text: 'Programs using the I/O system calls of UNIX operating system'),
    SubSection(text: 'Implement the Producer – Consumer problem using semaphores.'),
    SubSection(text: 'Implement some memory management schemes'),

SectionHeader(text: 'Reference Books:'),
    SubSection(text: 'Andrew S. Tanenbaum, “Modern Operating Systems”, 3rd Edition, PHI'),
    SubSection(text: 'Stalling William, “Operating Systems”, 6th Edition, Pearson Education'),
    SubSection(text: 'Silberschatz A.,Galvin P., Gagne G., “Operating System Concepts”, 8th Edition, John Wiley and Sons,'),
    SubSection(text: 'Milan Milenkovic, “Operating Systems Concepts and Design”, TMGH'),
    SubSection(text: 'Das Sumitabha, “Unix Concepts and Applications”, 3rd Edition, Tata McGraw Hill, 2003'),
    SubSection(text: 'M. J. Bach, “The Design of The Unix Operating System”, PHI.'),
    SubSection(text: 'Charles Crowley, “Operating Systems: A Design-oriented Approach”, TMH.')

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