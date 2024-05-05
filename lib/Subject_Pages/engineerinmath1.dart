import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringMath1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Math I',
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
                      child: Center(child: Text('14')),
                    ),
                    TableCell(
                      child: Center(child: Text('25')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
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
          //SizedBox(height: 20),
          SectionHeader(text: 'Derivatives and Their Applications (14 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Higher Order Derivatives'),
          SubSection(text: 'Mean Value Theorem'),
          SubSection(text: 'Rolle’s Theorem'),
          SubSection(text: 'Lagrange’s Mean Value Theorem'),
          SubSection(text: 'Cauchy’s Mean Value Theorem'),
          SubSection(text: 'Power Series of Single-Valued Function'),
          SubSection(text: 'Taylor’s Series'),
          SubSection(text: 'Maclaurin’s Series'),
          SubSection(text: 'Indeterminate Forms: L’Hospital Rule'),
          SubSection(text: 'Asymptotes to Cartesian and Polar Curves'),
          SubSection(
              text:
                  'Pedal Equations to Cartesian and Polar Curves: Curvature and Radius of Curvature'),

          SectionHeader(text: 'Integration and Its Applications (11 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Definite Integrals and Their Properties'),
          SubSection(text: 'Improper Integrals'),
          SubSection(text: 'Differentiation Under Integral Sign'),
          SubSection(text: 'Reduction Formula: Beta Gamma Functions'),
          SubSection(
              text:
                  'Application of Integrals for Finding Areas, Arc Length, Surface and Solid of Revolution in the Plane for Cartesian and Polar Curves'),

          SectionHeader(text: 'Plane Analytic Geometry (8 hours)'),
          SubSection(
              text: 'Transformation of Coordinates: Translation and Rotation'),
          SubSection(
              text:
                  'Ellipse and Hyperbola: Standard Forms, Tangent, and Normal'),
          SubSection(
              text: 'General Equation of Conics in Cartesian and Polar Forms'),

          SectionHeader(
              text:
                  'Ordinary Differential Equations and Their Applications (12 hours)'),
          SubSection(
              text: 'First Order and First Degree Differential Equations'),
          SubSection(text: 'Homogeneous Differential Equations'),
          SubSection(text: 'Linear Differential Equations'),
          SubSection(
              text:
                  'Equations Reducible to Linear Differential Equations: Bernoulli’s Equation'),
          SubSection(
              text:
                  'First Order and Higher Degree Differential Equation: Clairaut’s Equation'),
          SubSection(
              text:
                  'Second Order and First Degree Linear Differential Equations with Constant Coefficients'),
          SubSection(
              text:
                  'Second Order and First Degree Linear Differential Equations with Variable Coefficients: Cauchy’s Equations'),
          SubSection(text: 'Applications in Engineering Field'),

          SectionHeader(text: 'Reference Books:'),
          SubSection(
              text:
                  'Erwin Kreyszig, "Advanced Engineering Mathematics", John Wiley and Sons Inc'),
          SubSection(
              text:
                  'Thomas, Finney, "Calculus and Analytical Geometry", Addison-Wesley'),
          SubSection(
              text:
                  'M. B. Singh, B. C. Bajracharya, "Differential Calculus", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text: 'M. B. Singh, S. P. Shrestha, "Applied Mathematics"'),
          SubSection(
              text:
                  'G.D. Pant, G. S. Shrestha, "Integral Calculus and Differential Equations", Sunila Prakashan, Nepal'),
          SubSection(
              text:
                  'M. R. Joshi, "Analytical Geometry", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text:
                  'S. P. Shrestha, H. D. Chaudhary, P. R. Pokharel, "A Textbook of Engineering Mathematics - Vol I"'),
          SubSection(
              text:
                  'Santosh Man Maskey, "Calculus", Ratna Pustak Bhandar, Nepal')

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
