import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DSA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Structure and Algorithm',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
         SectionHeader(text: 'Concept of data structure (2 hours)'),
    SubSection(text: 'Introduction: data types, data structures and abstract data types'),
    SubSection(text: 'Introduction to algorithms'),

SectionHeader(text: 'The Stack and Queue (6 hours)'),
    SubSection(text: 'Stack operation'),
    SubSection(text: 'Stack application: Evaluation of Infix, Postfix and Prefix expressions'),
    SubSection(text: 'Operations in queue, Enqueue and Dequeue'),
    SubSection(text: 'Linear and circular queue'),
    SubSection(text: 'Priority queue'),

SectionHeader(text: 'List (3 hours)'),
    SubSection(text: 'Definition'),
    SubSection(text: 'Static and dynamic list structure'),
    SubSection(text: 'Array implementation of lists'),
    SubSection(text: 'Queues as list'),

SectionHeader(text: 'Linked lists (5 hours)'),
    SubSection(text: 'Dynamic implementation'),
    SubSection(text: 'Operations in linked list'),
    SubSection(text: 'Linked stacks and queues'),
    SubSection(text: 'Doubly linked lists and its applications'),

SectionHeader(text: 'Recursion (4 hours)'),
    SubSection(text: 'Principle of recursion'),
    SubSection(text: 'TOH and Fibonacci sequence'),
    SubSection(text: 'Applications of recursion'),

SectionHeader(text: 'Trees (7 hours)'),
    SubSection(text: 'Concept'),
    SubSection(text: 'Operation in Binary tree'),
    SubSection(text: 'Tree search, insertion/deletions'),
    SubSection(text: 'Tree traversals (pre-order, post-order and in-order)'),
    SubSection(text: 'Height, level and depth of a tree'),
    SubSection(text: 'AVL balanced trees and Balancing algorithm'),
    SubSection(text: 'The Huffman algorithm'),
    SubSection(text: 'B-Tree'),
    SubSection(text: 'Red Black Tree'),

SectionHeader(text: 'Sorting (5 hours)'),
    SubSection(text: 'Types of sorting: internal and external'),
    SubSection(text: 'Insertion and selection sort'),
    SubSection(text: 'Exchange sort'),
    SubSection(text: 'Merge and Redix sort'),
    SubSection(text: 'Shell sort'),
    SubSection(text: 'Heap sort as a priority queue'),
    SubSection(text: 'Big ‘O’ notation and Efficiency of sorting'),

SectionHeader(text: 'Searching (5 hours)'),
    SubSection(text: 'Search technique'),
    SubSection(text: 'Sequential, Binary and Tree search'),
    SubSection(text: 'General search tree'),
    SubSection(text: 'Hashing'),
    SubSection(text: 'Hash function and hash tables'),
    SubSection(text: 'Collision resolution technique'),

SectionHeader(text: 'Growth Functions (2 hours)'),
    SubSection(text: 'Asymptotic notations: notations and their properties'),

SectionHeader(text: 'Graphs (6 hours)'),
    SubSection(text: 'Representation and applications'),
    SubSection(text: 'Transitive closure'),
    SubSection(text: 'Warshall’s algorithm'),
    SubSection(text: 'Graphs type'),
    SubSection(text: 'Graph traversal and Spanning forests'),
    SubSection(text: 'Depth First Traversal and Breadth First Traversal'),
    SubSection(text: 'Topological sorting: Depth first, Breadth first topological sorting'),
    SubSection(text: 'Minimum spanning trees, Prim’s, Kruskal’s and Round-Robin algorithms'),
    SubSection(text: 'Shortest-path algorithm'),
    SubSection(text: 'Greedy algorithm'),
    SubSection(text: 'Dijkstra’s Algorithm'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'There shall be 10 to 12 lab exercises based on C or C++'),
    SubSection(text: 'Implementation of stack'),
    SubSection(text: 'Implementations of linear and circular queues'),
    SubSection(text: 'Solutions of TOH and Fibonacci sequence by Recursion'),
    SubSection(text: 'Implementations of linked list: singly and doubly linked list'),
    SubSection(text: 'Implementation of trees: AVL trees, and balancing'),
    SubSection(text: 'Implementation of Merge sort'),
    SubSection(text: 'Implementation of search: sequential, Binary and Tree search'),
    SubSection(text: 'Implementation of Graphs: Graph Traversals'),
    SubSection(text: 'Implementation of hashing'),
    SubSection(text: 'Implementation of Heap'),

SectionHeader(text: 'References'),
    SubSection(text: 'Y. Langsam, M. J. Augenstein and A. M Tenenbaum, “Data Structures using C and C++”, PHI'),
    SubSection(text: 'T. H. Cormen, C. E. Leiserson, R. L. Rivest, C. Stein, “Introduction to Algorithms”, PHI'),
    SubSection(text: 'G.W. Rowe, “Introduction to Data Structure and Algorithms with C and C++”, PHI'),
    SubSection(text: 'R. L. Kruse, B. P. Leung, C. L. Tondo, “Data Structure and Program design in C”, PHI'),
    SubSection(text: 'G. Brassard and P. Bratley, “Fundamentals of Algorithms”, PHI')

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