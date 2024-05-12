import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class TheoryofStructuresII extends StatelessWidget {
  final int initialTabIndex;
  TheoryofStructuresII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Theory of Structures II',
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
                      child: Center(child: Text('15')),
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
                      child: Center(child: Text('25')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
                    ),
                    TableCell(
                      child: Center(child: Text('25')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
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
          SectionHeader(text: 'Introduction (8 hours)'),
          SubSection(text: 'Formulation of Problems in Theory of Structure'),
          SubSection(
              text:
                  'Conditions and Equations: Static, Compatibility, and Physical'),
          SubSection(text: 'Satisfaction of Conditions'),
          SubSection(text: 'Boundary Conditions, Partial Restraints'),
          SubSection(text: 'Solutions of Equations'),
          SubSection(text: 'Structure Idealization'),
          SubSection(text: 'Indeterminacy of Structural Systems'),
          SubSection(text: 'Degree of Static Indeterminacy'),
          SubSection(text: 'Degree of Kinematic Indeterminacy'),
          SubSection(
              text:
                  'Definitions and Explanations of Force and Displacement for a Structural System'),
          SubSection(text: "Betti's Law and Maxwell's Reciprocal Theorem"),
          SubSection(
              text: 'Two Theorems from Castigliano and Their Applications'),

          SectionHeader(text: 'Force Method (12 hours)'),
          SubSection(text: 'Definitions and Explanations'),
          SubSection(
              text:
                  'Primary Systems with Replacements of Static Indeterminacies'),
          SubSection(
              text:
                  'Compatibility Conditions and Formulation of Equations in Matrix Form'),
          SubSection(text: 'Flexibility Matrix'),
          SubSection(text: 'Applications to Beams and Frames'),
          SubSection(text: 'Applications to Trusses'),
          SubSection(text: 'Applications to Arches'),
          SubSection(
              text: 'Bending Moment, Shear Force, and Normal Thrust Diagrams'),

          SectionHeader(text: 'Displacement Method (15 hours)'),
          SubSection(text: 'Definitions and Explanations'),
          SubSection(text: 'Primary System'),
          SubSection(
              text:
                  'Equilibrium Conditions and Formulation of Equations in Matrix Form'),
          SubSection(text: 'Stiffness Matrix'),
          SubSection(text: 'Applications to Beams and Frames'),
          SubSection(text: 'Applications to Trusses'),
          SubSection(
              text: 'Bending Moment, Shear Force, and Normal Thrust Diagrams'),
          SubSection(text: 'Fixed End Moment, Slope, and Deflection'),
          SubSection(text: 'Equilibrium Conditions of the Joints'),

          SectionHeader(text: 'Influence Line for Continuous Beams (4 hours)'),
          SubSection(text: 'Definitions and Explanations'),
          SubSection(text: 'Neutral Points'),
          SubSection(text: 'Mueller Breslau Principle'),
          SubSection(text: 'Loading of the IL Diagrams'),

          SectionHeader(text: 'Introduction to Plastic Analysis (6 hours)'),
          SubSection(text: 'Definitions and Explanations'),
          SubSection(text: 'Plastic Analysis of Bending Members'),
          SubSection(text: 'Collapse Loads'),
          SubSection(text: 'Experiments (8 hours)'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'Darkov A et al., 1979, Structural Mechanics, Mir Publishers, Moscow'),
          SubSection(
              text:
                  'Ghali A, Neville A M, 1989, Structural Analysis, A Unified Classical and Matrix Approach, Chapman and Hall'),
          SubSection(
              text:
                  'Joshi H R, 1991, Theory of Structure II - Course Manual, Institute of Engineering, Tribhuvan University, Katmandu'),
          SubSection(
              text:
                  'Norris C H, Wilbur J B, Utku S, 1991, Elementary Structural Analysis, McGraw-Hill International Editions, Civil Engineering Series'),
          SubSection(
              text:
                  'Pandit G S, Gupta S P, 1981, Structural Analysis, A Matrix Approach, Tata McGraw-Hill Publishing Company Limited, New Delhi'),
          SubSection(
              text:
                  'Reddy C S, 1981, Basic Structural Analysis, Tata McGraw-Hill Publishing Company Limited, New Delhi'),
          SubSection(
              text:
                  'Wang C K, 1983, Intermediate Structural Analysis, McGraw-Hill International Editions, Civil Engineering Series')

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
