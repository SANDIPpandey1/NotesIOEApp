import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringMath2 extends StatelessWidget {
  final int initialTabIndex;
  EngineeringMath2({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Math II',
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
          SectionHeader(text: 'Calculus of Two or More Variables (6 hours)'),
          SubSection(text: 'Introduction: Limit and Continuity'),
          SubSection(text: 'Partial Derivatives'),
          SubSection(
              text:
                  'Homogeneous Function, Euler’s Theorem for the Function of Two and Three Variables'),
          SubSection(text: 'Total Derivatives'),
          SubSection(
              text:
                  'Extrema of Functions of Two and Three Variables: Lagrange’s Multiplier'),

          SectionHeader(text: 'Multiple Integrals (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text:
                  'Double Integrals in Cartesian and Polar Form: Change of Order of Integration'),
          SubSection(
              text:
                  'Triple Integrals in Cartesian, Cylindrical and Spherical Coordinates'),
          SubSection(text: 'Area and Volume by Double and Triple Integrals'),

          SectionHeader(text: 'Three-Dimensional Solid Geometry (11 hours)'),
          SubSection(text: 'The Straight Line; Symmetric and General Form'),
          SubSection(text: 'Coplanar Lines'),
          SubSection(text: 'Shortest Distance'),
          SubSection(text: 'Sphere'),
          SubSection(text: 'Plane Section of a Sphere by Planes'),
          SubSection(text: 'Tangent Planes and Lines to the Spheres'),
          SubSection(text: 'Right Circular Cone'),
          SubSection(text: 'Right Circular Cylinder'),

          SectionHeader(
              text:
                  'Solution of Differential Equations in Series and Special Functions (9 hours)'),
          SubSection(
              text: 'Solution of Differential Equation by Power Series Method'),
          SubSection(text: 'Legendre’s Equation'),
          SubSection(
              text:
                  'Legendre\'s Polynomial Function: Properties and Applications'),
          SubSection(text: 'Bessel’s Equation'),
          SubSection(
              text:
                  'Bessel’s Function of First and Second Kind: Properties and Applications'),

          SectionHeader(text: 'Vector Algebra and Calculus (8 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Two and Three Dimensional Vectors'),
          SubSection(text: 'Scalar Products and Vector Products'),
          SubSection(text: 'Reciprocal System of Vectors'),
          SubSection(text: 'Application of Vectors: Lines and Planes'),
          SubSection(text: 'Scalar and Vector Fields'),
          SubSection(text: 'Derivatives– Velocity and Acceleration'),
          SubSection(text: 'Directional Derivatives'),

          SectionHeader(text: 'Infinite Series (5 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Series with Positive Terms'),
          SubSection(text: 'Convergence and Divergence'),
          SubSection(text: 'Alternating Series: Absolute Convergence'),
          SubSection(text: 'Radius and Interval of Convergence'),

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
              text:
                  'M. B. Singh, B. C. Bajracharya, "A Textbook of Vectors", Sukunda Pustak Bhandar, Nepal'),
          SubSection(
              text: 'M. B. Singh, S. P. Shrestha, "Applied Mathematics"'),
          SubSection(
              text:
                  'G.D. Pant, G. S. Shrestha, "Integral Calculus and Differential Equations", Sunila Prakashan, Nepal'),
          SubSection(
              text:
                  'Y. R. Sthapit, B. C. Bajracharya, "A Textbook of Three-Dimensional Geometry", Sukunda Pustak Bhandar, Nepal'),
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
