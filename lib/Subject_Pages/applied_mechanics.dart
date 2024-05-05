import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class AppliedMechanics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Applied Mechanics',
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
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('12')),
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
          SectionHeader(text: '1. Introduction'),
          SubSection(text: 'Definitions and scope of Applied Mechanics'),
          SubSection(text: 'Concept of Rigid and Deformed Bodies'),
          SubSection(
              text:
                  'Fundamental concepts and principles of mechanics: Newtonian Mechanics'),
          SectionHeader(
              text: '2. Basic Concept in Statics and Static Equilibrium'),
          SubSection(text: 'Concept of Particles and Free Body Diagram'),
          SubSection(
              text:
                  'Physical meaning of Equilibrium and its essence in structural application'),
          SubSection(text: 'Equation of Equilibrium in Two Dimension'),
          SectionHeader(text: '3. Forces acting on particle and rigid body'),
          SubSection(
              text:
                  'Different types of Forces: Point, Surface Traction and Body Forces -Translational Force and Rotational Force: Relevant Examples'),
          SubSection(
              text: 'Resolution and Composition of Forces: Relevant Examples'),
          SubSection(
              text:
                  'Principle of Transmissibility and Equivalent Forces: Relevant Examples'),
          SubSection(text: 'Moments and couples: Relevant Examples'),
          SubSection(
              text:
                  'Resolution of a Force into Forces and a Couple: Relevant Examples'),
          SubSection(
              text:
                  'Resultant of Force and Moment for a System of Force: Examples'),
          SectionHeader(
              text: '5. Center of Gravity, Centroid and Moment of Inertia'),
          SubSection(
              text:
                  'Concepts and Calculation of Centre of Gravity and Centroid: Examples'),
          SubSection(
              text:
                  'Calculation of Second Moment of Area / Moment of Inertia and Radius of Gyration and Relevant usages'),
          SubSection(text: 'Use of Parallel axis Theorem: Relevant Examples'),
          SectionHeader(text: '6. Friction'),
          SubSection(
              text:
                  'Laws of Friction, Static and Dynamic Coefficient of Friction, Angle of Friction: Engineering Examples of usage of friction'),
          SubSection(
              text:
                  'Calculations involving friction in structures: Example as High Tension Friction Grip bolts and its free body diagram'),
          SectionHeader(text: '7. Analysis of Beams and Frames'),
          SubSection(
              text: 'Introduction to Structures: Discrete and Continuum'),
          SubSection(
              text:
                  'Concept of Load Estimating and Support Idealizations: Examples and Standard symbols'),
          SubSection(
              text:
                  'Use of beams/frames in engineering: Concept of rigid joints/distribute loads in beams/frames.'),
          SubSection(
              text:
                  'Concept of Statically/Kinematically Determinate and Indeterminate Beams and Frames: Relevant Examples'),
          SubSection(
              text:
                  'Calculation of Axial Force, Shear Force and Bending Moment for Determinate Beams and Frames'),
          SubSection(
              text:
                  'Axial Force, Shear Force and Bending Moment Diagrams and Examples for drawing it.'),
          SectionHeader(text: '8. Analysis of Plane Trusses'),
          SubSection(
              text:
                  'Use of trusses in engineering: Concept of pin joints/joint loads in trusses.'),
          SubSection(
              text:
                  'Calculation of Member Forces of Truss by method of joints: Simple Examples'),
          SubSection(
              text:
                  'Calculation of Member Forces of Truss by method of sections: Simple Examples'),
          SectionHeader(text: '6. Kinematics of Particles and Rigid Body'),
          SubSection(text: 'Rectilinear Kinematics: Continuous Motion'),
          SubSection(
              text:
                  'Position, Velocity and Acceleration of a Particle and Rigid Body'),
          SubSection(
              text: 'Determination of Motion of Particle and Rigid Body'),
          SubSection(text: 'Uniform Rectilinear Motion of Particles'),
          SubSection(
              text: 'Uniformly Accelerated Rectilinear Motion of Particles'),
          SubSection(
              text:
                  'Curvilinear Motion: Rectangular Components with Examples of Particles'),
          SectionHeader(
              text:
                  '9. Kinetics of Particles and Rigid Body: Force and Acceleration'),
          SubSection(text: 'Newton’s Second Law of Motion and momentum'),
          SubSection(
              text:
                  'Equation of Motion and Dynamic Equilibrium: Relevant Examples'),
          SubSection(text: 'Angular Momentum and Rate of Change'),
          SubSection(text: 'Equation of Motion-Rectilinear and Curvilinear'),
          SubSection(
              text:
                  'Rectangular: Tangential and Normal Components and Polar Coordinates: Radial and Transverse Components'),
          SizedBox(height: 20),
          SectionHeader(text: 'Tutorials:'),
          SubSection(
              text:
                  'There shall be related tutorials exercised in class and given as regular homework exercises. Tutorials can be as following for each specified chapters.'),
          SubSection(
              text:
                  'Introduction (1 hour): Theory; definition and concept type questions.'),
          SubSection(
              text:
                  'Basic Concept in Statics and Static Equilibrium (2 hours): Theory; definition and concept type questions.'),
          SubSection(
              text:
                  'Concept of Force acting on structures (3 hours): Practical examples; numerical examples and derivation types of questions.There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Center of Gravity, Centroid and Moment of Inertia (4 hours): Concept type; numerical examples and practical examples type questions.'),
          SubSection(
              text:
                  'Friction (2 hours): Definition type; Practical example type and numerical type questions.'),
          SubSection(
              text:
                  'Analysis of Beam and Frame (5 hours): Concept type; definition type; numerical examples type with diagrams questions.There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Analysis of Plane Trusses (5 hours): Concept type; definition type; numerical examples type questions.There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Kinematics of Particles and Rigid Body (4 hours): Definition type; numerical examples type questions. There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Kinetics of Particles and Rigid Body Force and Acceleration (4 hours): Concept type; definition type; numerical examples type questions. There can be tutorials for each sub-section.'),
          SizedBox(height: 20),
          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '“Mechanics of Engineers- Statics and Dynamics”, F.P. Beer and E.R.Johnston, Jr. 4th Edition, Mc Graw-Hill, 1987.'),
          SubSection(
              text:
                  '“Engineering Mechanics-Statics and Dynamics”, R.C. Hibbeler, Ashok Gupta. 11th edition., New Delhi, Pearson, 2009.'),
          SubSection(
              text:
                  '“Engineering Mechanics- Statics and Dynamics”, I.C. Jong and B.G. Rogers'),
          SubSection(
              text:
                  '“Engineering Mechanics- Statics and Dynamics”, D.K. Anand and P.F. Cunnif'),
          SubSection(
              text: '“A Text Book of Engineering Mechanics”, R.S. Khurmi'),
          SubSection(
              text:
                  '“Applied Mechanics and Strength of Materials”, R.S.Khurmi'),
          SubSection(text: '“A Text Book of Applied Mechanics”, I.B.Prasad'),
          SubSection(
              text:
                  '“Engineering Mechanics-Statics and Dynamics”, Shame, I.H. 3rd ed., New Delhi, Prentice Hall of India, 1990.'),
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
