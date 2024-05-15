import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ComputationalTechniquesinCivilEngineering extends StatelessWidget {
  final int initialTabIndex;
  ComputationalTechniquesinCivilEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Computational Techniques in Civil Engineering',
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
          SubSection(
              text:
                  'History of numerical computations of civil engineering problems'),
          SubSection(text: 'Brief description of solution techniques'),
          SubSection(text: 'Finite element method'),
          SubSection(text: 'Finite difference method'),
          SubSection(text: 'Boundary element method'),
          SubSection(text: 'Discrete element method'),
          SubSection(text: 'Smoothed particle hydrodynamics'),
          SubSection(
              text: 'Review of programming methods: (C or FORTRAN or Matlab)'),

          SectionHeader(text: 'Solutions of linear equations (6 hours)'),
          SubSection(text: 'System of linear equations'),
          SubSection(text: 'Banded matrices'),
          SubSection(text: 'Data storage and memory optimization'),
          SubSection(text: 'Conjugate gradient method'),
          SubSection(text: 'Fourier Integral'),
          SubSection(text: 'Discrete Fourier Transform'),
          SubSection(text: 'Fast Fourier Transform'),

          SectionHeader(text: 'Elasticity in solids (6 hours)'),
          SubSection(text: 'Stress displacement relationship'),
          SubSection(text: 'Stress-strain (constitutive) relations'),
          SubSection(text: '3D state of solid, Lame constants'),
          SubSection(text: 'Plane stress and plane strain condition'),
          SubSection(text: 'Axi-symmetric stresses'),
          SubSection(text: 'Equilibrium equations'),

          SectionHeader(text: 'Finite element method (14 hours)'),
          SubSection(text: 'Direct stiffness method'),
          SubSection(
              text:
                  'Stiffness matrices for bar, truss and beam element matrices'),
          SubSection(
              text: 'Transformation matrices for 2D and 3D cases and assembly'),
          SubSection(text: 'Example of a truss'),
          SubSection(text: 'Coordinate system - local, global, natural'),
          SubSection(text: 'Interpolation functions'),
          SubSection(text: 'Pascal triangle'),
          SubSection(text: 'Polynomial function'),
          SubSection(text: 'Lagragian element'),
          SubSection(text: 'Hermite interpolation for beam element'),
          SubSection(text: 'Serendipidity element'),
          SubSection(text: 'Application in solid and frames'),
          SubSection(
              text:
                  'Formulation of stiffness matrices for bars, truss, beams and area (triangle) elements'),
          SubSection(
              text:
                  'Isoparametric formulation (linear displacement field only) – 2D triangle and quadrilateral'),
          SubSection(
              text:
                  'Example of dam: Calculate stresses giving pressure loads using computer programs'),
          SubSection(
              text:
                  'Example on wall: Calculate stresses giving vertical loads using computer programs'),
          SubSection(text: 'General introduction to pre and post processing'),

          SectionHeader(text: 'Finite difference method (7 hours)'),
          SubSection(text: 'Finite differences'),
          SubSection(text: 'Explicit scheme and Implicit Scheme'),
          SubSection(
              text:
                  'Governing equations of movement of fluid( Momemtum and continuity equations)'),
          SubSection(
              text:
                  'Discretization of Kinematic wave Equation (linear and non linear)'),
          SubSection(
              text: 'Order of accuracy of the scheme and its applications'),
          SubSection(
              text: 'Numerical diffusion, dispersion and stability of scheme'),
          SubSection(
              text: 'Applications of the schemes in hydraulic channel routing'),
          SubSection(text: 'Implicit dynamic wave model'),
          SubSection(
              text: 'Finite difference scheme for Saint-Venant equations'),

          SectionHeader(text: 'Method of Characteristics (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Characteristics'),
          SubSection(text: 'Initial and boundary conditions'),
          SubSection(text: 'Solution to unsteady flow in pipes'),

          SectionHeader(text: 'Simulation of Ground water flow (4 hours)'),
          SubSection(text: 'Steady state flow nets and finite difference grid'),
          SubSection(text: 'Simulation of seepage under a dam'),
          SubSection(text: 'One dimensional Implicit Model'),
          SubSection(text: 'Application in river-Groundwater system'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Introduction (2 hrs)'),
          SubSection(text: '   Theory, definition and concept type questions'),
          SubSection(
              text:
                  '   Practical: Home work to make programs in C or FORTRAN or Matlab languages'),
          SubSection(text: 'Solutions of linear equations (6 hrs)'),
          SubSection(text: '   Theory, definition and concept type questions'),
          SubSection(
              text:
                  '   Practical examples, and numerical examples types questions'),
          SubSection(
              text:
                  '   Write algorithm and computer programs to solve the problems'),
          SubSection(text: 'Elasticity in solid (2 hrs)'),
          SubSection(text: '   Theory, definition and concept type questions'),
          SubSection(
              text: '   Practical examples of various conditions of stresses'),
          SubSection(text: 'Finite element method (FEM)  (10 hrs)'),
          SubSection(text: '   Theory, definition and concept type questions'),
          SubSection(
              text:
                  '   Practical examples, numerical examples and derivation type questions'),
          SubSection(text: '   Analyze beams and simple frames'),
          SubSection(text: 'Finite difference method (4 hours)'),
          SubSection(text: '   Theory, definition and concept type questions'),
          SubSection(
              text:
                  '   Practical examples, numerical examples and derivation type questions, excercises on Hydraulic channel routing'),
          SubSection(text: 'Method of Characteristics (2 hours)'),
          SubSection(
              text:
                  '   Theory, definition and concept type questions, Solution of unsteady flow'),
          SubSection(text: 'Simulation of Ground water flow  (4 hours)'),
          SubSection(
              text:
                  '   Theory, definition and concept type questions , excercises on Seepage under dam and River stage –Water table evaluation'),

          SectionHeader(text: 'Assignments'),
          SubSection(
              text:
                  'Analyze a 2D dam to find stresses giving water pressure and surcharge'),
          SubSection(
              text:
                  'Analyze a 2D wall panel to find stresses giving vertical loads'),
          SubSection(
              text:
                  'Analyze 2 storey 2 bay frame and draw bending moments and shear force diagrams'),
          SubSection(
              text:
                  'Write source codes to solve Saint-Venant equations marks distribution.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'P. Karasudhi, Foundation of Solid Mechanics, Kluwer Acedemic Publishers, 1991.'),
          SubSection(
              text:
                  'O. C. Zienkiewicz, R. L. Taylor, Finite Element for Structural, Vol. 1, 2 & 3, Elsevier, 2000.'),
          SubSection(
              text:
                  'D. V. Huttan, Fundamentals of Finite Element Analysis, TATA McGRAW-HILL, 2004.'),
          SubSection(
              text:
                  'T. R. Chandrapatla and A. D. Belegundu, Introduction to Finite Elements in Engineering, PHI, 2000.'),
          SubSection(
              text:
                  'W. H. Press, S. A. Teukolsky, W. T. Vetterling, B. P. Flannery, Numerical Recipes in C, The Art of Scientific Computing, Second Edition, Cambridge University Press.'),
          SubSection(
              text:
                  'W. H. Press, S. A. Teukolsky, W. T. Vetterling, B. P. Flannery, Numerical Recipes in Fortran, The Art of Scientific Computing, Second Edition, Cambridge University Press.'),
          SubSection(
              text:
                  'Ralph A.Wurbs, Wesley p.James, Water Resources Engineering, Prentice-Hall India.'),
          SubSection(
              text:
                  'M. Hanif Chaudhry, Open Channel Flow, Prentice-Hall India.'),
          SubSection(
              text:
                  'Ven Te Chow, D.R. Maidment, L.W. Mays, Applied Hydrology, McGraw-Hill'),

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
