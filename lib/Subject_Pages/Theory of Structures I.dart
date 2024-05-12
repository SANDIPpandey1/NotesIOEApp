import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class TheoryofStructuresI extends StatelessWidget {
  final int initialTabIndex;
  TheoryofStructuresI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Theory of Structures I',
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
                      child: Center(child: Text('15')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
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
          SectionHeader(text: 'Introduction (4 hours)'),
          SubSection(text: 'Types of Structures Based on Material Used'),
          SubSection(text: 'Structural Mechanics'),
          SubSection(text: 'Two Basic Approaches of Structural Analysis'),
          SubSection(text: 'Linearly Elastic Structures'),
          SubSection(text: 'Non-linearity in Structural Analysis'),
          SubSection(text: 'Computer Based Methods'),
          SubSection(text: 'Principle of Superposition'),

          SectionHeader(text: 'Analysis by the Strain Energy Method (4 hours)'),
          SubSection(text: 'Strain Energy and Complementary Strain'),
          SubSection(
              text:
                  'Strain Energy due to Gradually and Suddenly Applied Direct Load: Dynamic Multipliers'),
          SubSection(text: 'Strain Energy due to Bending, shear and Torsion'),

          SectionHeader(text: 'Analysis by the Virtual Work Method (6 hours)'),
          SubSection(text: 'Work and Complementary Work'),
          SubSection(
              text: 'Displacement of Beams and Frames by Method of Real Work'),
          SubSection(text: 'Calculation of Real Work from Bending'),
          SubSection(text: 'Limitations of the Method of Real Work'),
          SubSection(text: 'Displacements by the Methods of Virtual Work'),
          SubSection(text: 'Direct Axial and Bending Effects'),
          SubSection(text: 'Displacements in Beams due to Temperature Effects'),
          SubSection(
              text:
                  'Adjustments and Misfits in Truss Elements and Temperature Effects'),
          SubSection(text: 'Combination of Different Effects'),

          SectionHeader(text: 'Deflection of Beams (7 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Differential Equation of Flexure'),
          SubSection(text: 'Double Integration method'),
          SubSection(text: 'Theorems on Area Moment Method'),
          SubSection(text: 'Macaulay’s Method'),
          SubSection(text: 'Deflection of Cantilever beams'),
          SubSection(text: 'Deflections in Simply Supported Beams'),
          SubSection(text: 'Mid-span Deflections'),
          SubSection(text: 'Conjugate-Beam Method'),
          SubSection(text: 'Deflections by the Method of Superposition'),
          SubSection(text: 'Influence Lines for Simple Structures'),

          SectionHeader(
              text: 'Influence Lines for Simple Structures (10 hours)'),
          SubSection(text: 'Moving Static Loads and Influence Lines'),
          SubSection(
              text: 'Influence Lines for Statically Determinate structures'),
          SubSection(text: 'Moving Loads on Statically Determinate Beams'),
          SubSection(
              text: 'Influence Lines for Statically Determinate Trusses'),
          SubSection(
              text:
                  'Influence Line Diagrams for the Case of Indirect Load Applications (Panel Loadings)'),
          SubSection(text: 'Influence Lines for Support Reactions'),
          SubSection(text: 'Influence Lines for support Moment'),
          SubSection(text: 'Influence Lines for Shear Force'),
          SubSection(text: 'Influence Lines for bending Moment'),
          SubSection(
              text:
                  'Determination of Reactions, bending Moments and Shear Forces from Influence Line Diagrams due to different loadings: Point Load, Distributed Load, Couple'),
          SubSection(
              text:
                  'Loading of Influence Line Diagrams using Standard Load Trains'),
          SubSection(text: 'Most Critical Position of a Load on a Beam Span'),

          SectionHeader(text: 'Statically Determinate Arches (7 hours)'),
          SubSection(text: 'Types of Arches'),
          SubSection(
              text:
                  'Three-Hinged Structures with Support at Same and different Level'),
          SubSection(
              text:
                  'Determination of Support reactions, Shearing Forces, Normal Forces and Bending Moments by Numerical Methods'),
          SubSection(
              text: 'Analysis of Three-Hinged Arches by the Graphical Method'),
          SubSection(
              text:
                  'Influence Line Diagrams for Reactions, Bending Moments, Shearing Forces and Normal Forces in Three-Hinged Arches'),

          SectionHeader(text: 'Suspension Cable Systems (7 hours)'),
          SubSection(
              text: 'Theory of Suspended Structures with Un-stiffened Cables'),
          SubSection(text: 'Catenary and Parabolic Cables'),
          SubSection(text: 'General Cases of Parabolic Cables'),
          SubSection(text: 'Elements of a Simple suspension Bridges'),
          SubSection(
              text: 'Stress Determination in Three-Hinged Stiffening Girder'),
          SubSection(text: 'Influence Line Diagrams'),
          SubSection(
              text:
                  'Tower structures, Wind Cables and Ties (Introduction only)'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Measurement of reactions in three-hinged arches under different loading arrangements'),
          SubSection(text: 'Deflection of Beam'),
          SubSection(text: 'Experimental analysis of suspension bridges'),
          SubSection(
              text: 'Simulation of Influence lines for beams and girders'),
          SubSection(
              text:
                  'Simulation of displacement measurement in statically determinate plane frame'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: '12 assignments, 2 seminar presentations'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'C.H. Norris, J.B. Wilbur and S.Utku “Elementary structural Analysis”, 3rd Edition, New York: McGraw-Hill Book Co., 1977'),
          SubSection(
              text:
                  'Wong Y. Yang “Applied Numerical Methods using MATLAB”, , et.Al., John Willey & Sons, 2005'),
          SubSection(
              text:
                  'William Weaver, JR., james M. Gere “Matrix Analysis of Frames Structures”, , 2nd Edition, CBS Publishers and Distributers, India'),
          SubSection(
              text:
                  'A. Darkov and Kuznetsov “Structural Mechanics”, , Mir Publishers')

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
                    'https://notesioe.com/wp-content/uploads/2024/04/AppliedMechanicsOldQues.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
