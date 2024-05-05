import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';

import '../screens/components/syllabuscontent.dart';

class EngineeringMath3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Math III',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
          SectionHeader(text: 'Determinants and Matrices (11 hours)'),
          SubSection(text: 'Determinant and Its Properties'),
          SubSection(text: 'Solution of System of Linear Equations'),
          SubSection(text: 'Algebra of Matrices'),
          SubSection(text: 'Complex Matrices'),
          SubSection(text: 'Rank of Matrices'),
          SubSection(text: 'System of Linear Equations'),
          SubSection(text: 'Vector Spaces'),
          SubSection(text: 'Linear Transformations'),
          SubSection(text: 'Eigenvalue and Eigenvectors'),
          SubSection(text: 'The Cayley-Hamilton Theorem and Its Uses'),
          SubSection(text: 'Diagonalization of Matrices and Its Applications'),

          SectionHeader(text: 'Line, Surface, and Volume Integrals (12 hours)'),
          SubSection(text: 'Line Integrals'),
          SubSection(text: 'Evaluation of Line Integrals'),
          SubSection(text: 'Line Integrals Independent of Path'),
          SubSection(text: 'Surfaces and Surface Integrals'),
          SubSection(text: 'Green’s Theorem in the Plane and Its Applications'),
          SubSection(
              text: 'Stoke’s Theorem (Without Proof) and Its Applications'),
          SubSection(
              text:
                  'Volume Integrals; Divergence Theorem of Gauss (Without Proof) and Its Applications'),

          SectionHeader(text: 'Laplace Transform (8 hours)'),
          SubSection(text: 'Definitions and Properties of Laplace Transform'),
          SubSection(
              text: 'Derivations of Basic Formulas of Laplace Transform'),
          SubSection(
              text:
                  'Inverse Laplace Transform: Definition and Standard Formulas of Inverse Laplace Transform'),
          SubSection(text: 'Theorems on Laplace Transform and Its Inverse'),
          SubSection(text: 'Convolution and Related Problems'),
          SubSection(
              text:
                  'Applications of Laplace Transform to Ordinary Differential Equations'),

          SectionHeader(text: 'Fourier Series (5 hours)'),
          SubSection(text: 'Fourier Series'),
          SubSection(text: 'Periodic Functions'),
          SubSection(text: 'Odd and Even Functions'),
          SubSection(text: 'Fourier Series for Arbitrary Range'),
          SubSection(text: 'Half-Range Fourier Series'),

          SectionHeader(text: 'Linear Programming (9 hours)'),
          SubSection(text: 'System of Linear Inequalities in Two Variables'),
          SubSection(
              text:
                  'Linear Programming in Two Dimensions: A Geometrical Approach'),
          SubSection(text: 'A Geometric Introduction to the Simplex Method'),
          SubSection(
              text:
                  'The Simplex Method: Maximization with Problem Constraints of the Form “≤”'),
          SubSection(
              text:
                  'The Dual: Maximization with Problem Constraints of the Form “≥”'),
          SubSection(
              text:
                  'Maximization and Minimization with Mixed Constraints. The Two-Phase Method (An Alternative to the Big M Method)'),

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
