import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class AppliedMechanicsDynamics extends StatelessWidget {
  final int initialTabIndex;
  AppliedMechanicsDynamics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Applied Mechanics Dynamics',
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
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
          SectionHeader(text: 'Curvilinear Motion of Particles (4 hours)'),
          SubSection(text: 'Position vector, velocity and acceleration'),
          SubSection(text: 'Derivatives of vector functions'),
          SubSection(
              text: 'Rectangular component of velocity and acceleration'),
          SubSection(text: 'Motion relative to frame in translation'),
          SubSection(text: 'Tangential and normal components'),
          SubSection(text: 'Radial and transverse components'),

          SectionHeader(
              text:
                  'Kinetics of particles: Energy and Momentum Methods (5 hours)'),
          SubSection(text: 'Work done by a force'),
          SubSection(text: 'Potential and kinetic energy of particles'),
          SubSection(text: 'Principles of work and energy: applications'),
          SubSection(text: 'Power and efficiency'),
          SubSection(text: 'Conservation of energy'),
          SubSection(text: 'Principle of impulse and momentum'),
          SubSection(text: 'Impulsive motion and impact'),
          SubSection(text: 'Direct central and oblique impact'),

          SectionHeader(text: 'System of particles (5 hours)'),
          SubSection(text: 'Newton’s laws and a system of particles'),
          SubSection(
              text: 'Linear and angular moment for a system of particles'),
          SubSection(text: 'Motion of the mass centre'),
          SubSection(text: 'Conservation of momentum'),
          SubSection(text: 'Kinetic energy of system of particles'),
          SubSection(
              text:
                  'Work energy principles; Conservation of energy for a system of particles'),
          SubSection(
              text:
                  'Principles of impulse and momentum for a system of particles'),
          SubSection(text: 'Steady stream of particles'),
          SubSection(text: 'System with variable mass'),

          SectionHeader(text: 'Kinematics of Rigid Bodies (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Translation and rotation'),
          SubSection(text: 'General plane motion'),
          SubSection(text: 'Absolute and relative velocity in plane motion'),
          SubSection(text: 'Instantaneous centre of rotation'),
          SubSection(
              text:
                  'Absolute and relative frame; Coriolis acceleration in plane motion'),
          SubSection(
              text:
                  'Rate of change of a general vector with respect to a rotating frame; Coriolis acceleration'),
          SubSection(text: 'Motion about a fixed point'),
          SubSection(text: 'General motion'),
          SubSection(
              text:
                  'Three-dimensional motion of a particle relative to a rotating frame; coriolis acceleration'),

          SectionHeader(
              text:
                  'Plane Motion of Rigid Bodies: Forces, Moments, and Accelerations(4 hours)'),
          SubSection(text: 'Definitions: rigid bodies'),
          SubSection(
              text: 'Equation of motion for a rigid Body in plane motion'),
          SubSection(text: 'Angular momentum of a rigid body in plane motion'),
          SubSection(
              text: 'Plane motion of rigid body: D’Alembert’s principle'),
          SubSection(text: 'Application of rigid body motion in the plane'),
          SubSection(text: 'Constrained motion in the plane'),

          SectionHeader(
              text:
                  'Plane motion of rigid bodies: energy and momentum methods (6 hours)'),
          SubSection(text: 'Principle of work and energy for a rigid body'),
          SubSection(text: 'Work done by external forces'),
          SubSection(text: 'Kinetic energy for a system'),
          SubSection(text: 'Conservative and non-conservative systems'),
          SubSection(text: 'Work – energy applications'),
          SubSection(text: 'Impulse and momentum for systems for rigid bodies'),
          SubSection(text: 'Conservation of angular and linear momentum'),
          SubSection(text: 'Impulsive motion and eccentric impact'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: '6 tutorials, 2 mini projects'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Hibbler, R.C. “Engineering Mechanics” (Statics and Dynamics)”,'),
          SubSection(
              text:
                  'Beer F.P. and E.R. Johnson “Vector Mechanics for Engineers”, , 2nd Edition, Tata McGraw Hill Publishing Co. Ltd., 1998'),
          SubSection(
              text:
                  'Shames, I.H “Engineering Mechanics – Statics and Dynamics”., 3rd Edition, New Delhi, Prentice Hall of India, 1990'),
          SubSection(
              text:
                  'Egor .P. Popov “Engineering Mechanics of Solids”, , 2nd Edition, New Delhi, Prentice Hall of India, 1996')

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
                    'https://notesioe.com/wp-content/uploads/2024/05/Applied-Mechanics-Dynamic.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
