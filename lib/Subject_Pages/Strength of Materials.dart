import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class StrengthOfMaterials extends StatelessWidget {
  final int initialTabIndex;
  StrengthOfMaterials({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Strength Of Materials',
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
        InsideButtons(
          text: 'Beam And Frame',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Kinetics And Kinematics',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Truss',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/Polarization.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Centroid',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/एक-चिहान-उपन्यास-.pdf');
          },
        ),
        SizedBox(height: 10),
        InsideButtons(
          text: 'Friction',
          icon: Icons.arrow_forward,
          onTap: () async {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2023/11/matrix.pdf');
          },
        ),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('6')),
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
          SectionHeader(
              text:
                  'Axial Forces, Shearing Forces and Bending Moments (8 hours)'),
          SubSection(
              text:
                  'Plotting shearing force, bending moment and axial force diagrams for determinate structures (beams and frames)'),
          SubSection(
              text:
                  'Concept of superposition for shear forces, bending moments and axial forces due to various combinations of loads'),
          SubSection(
              text:
                  'Maximum shear force and bending moments and their positions'),
          SubSection(
              text: 'Relationship between loads, shear forces, bending moment'),

          SectionHeader(text: 'Geometrical Properties of Sections (7 hours)'),
          SubSection(text: 'Axes of symmetry'),
          SubSection(text: 'Centre of gravity of built-up plane figures'),
          SubSection(
              text: 'Centre of gravity of built-up standard steel sections'),
          SubSection(
              text: 'Moment of inertia of standard and built-up sections'),
          SubSection(text: 'Polar moment of inertia'),
          SubSection(text: 'Radius of gyration'),
          SubSection(text: 'Product of inertia'),
          SubSection(text: 'Principle moment and principle axes of inertia'),
          SubSection(text: 'Mohr’s circle for moment of inertia'),

          SectionHeader(text: 'Simple Stress and Strain (8 hours)'),
          SubSection(
              text:
                  'Definitions: deformable Bodies, internal forces, stress, strain'),
          SubSection(text: 'Analysis of Internal forces'),
          SubSection(text: 'Simple stress and strain'),
          SubSection(
              text:
                  'Hook’s law: axial and typical stress strain diagram for characteristics of mild steel'),
          SubSection(text: 'Poisson’s ratio'),
          SubSection(text: 'Stress-strain diagram'),
          SubSection(text: 'Axial stress and strain'),
          SubSection(text: 'Shear stress and strain'),
          SubSection(text: 'Shear deformation and shear angle'),
          SubSection(text: 'Hook’s law for shearing deformations'),
          SubSection(text: 'Allowable stresses and factor of safety'),
          SubSection(text: 'Stress concentrations'),
          SubSection(text: 'Relationships between elastic constants'),

          SectionHeader(text: 'Stress and Strain Analysis (6 hours)'),
          SubSection(
              text: 'Stresses in inclined plane: normal and shear stress'),
          SubSection(text: 'Principle stresses and principle planes'),
          SubSection(text: 'Relationships between normal and shear stress'),
          SubSection(text: 'Maximum shear stress and corresponding plane'),
          SubSection(text: 'Mohr’s circle for stress'),

          SectionHeader(text: 'Thin Walled Vessels (3 hours)'),
          SubSection(
              text: 'Definition and characteristics of thin walled vessels'),
          SubSection(text: 'Types of stresses in thin walled vessels'),
          SubSection(text: 'Calculation of stresses in thin walled vessels'),

          SectionHeader(text: 'Torsion (4 hours)'),
          SubSection(text: 'Introduction and assumptions'),
          SubSection(text: 'Derivation of torsion formulas'),
          SubSection(text: 'Torsional moments in shaft'),
          SubSection(text: 'Torsional stress in shaft'),
          SubSection(text: 'Angle of twist'),

          SectionHeader(text: 'Theory of Flexure (5 hours)'),
          SubSection(text: 'Coplanar and pure bending'),
          SubSection(text: 'Elastic curve'),
          SubSection(text: 'Angle of rotation'),
          SubSection(text: 'Radius of curvature, flexural stiffness'),
          SubSection(text: 'Small deflection theory'),
          SubSection(text: 'Bending stress'),
          SubSection(
              text:
                  'Flexural formula, differential equation of deflected shape'),
          SubSection(text: 'Introduction to deflection'),

          SectionHeader(text: 'Column Theory (4 hours)'),
          SubSection(text: 'Theory of columns according to support systems'),
          SubSection(text: 'Critical load'),
          SubSection(text: 'Long column by Euler’s formula'),
          SubSection(text: 'Limitations of Euler’s formula'),
          SubSection(text: 'Intermediate columns; empirical formulas'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Stress-Strain Curve in tension'),
          SubSection(text: 'Torsion test to determine modules of rigidity'),
          SubSection(text: 'Column behavior due to buckling'),
          SubSection(text: 'Deflection of simple beam'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: '8 tutorials, 2 mini projects'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'Timoshenko and Gere ‘Mechanics of Materials’'),
          SubSection(
              text: 'Beer F.P. and E.R. Johnston “Mechanics of Material”'),
          SubSection(
              text:
                  'E.P. Popov “Mechanics of Material”, , 2nd Edition, New Delhi, Prentice Hall of India'),
          SubSection(
              text:
                  'A.Pytel, F.L. Singer ‘Strength of Materials”, 4th Edition, Harper Collins, India, 1998')

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
              fileSize: '1',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Strength-Of-Material.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
