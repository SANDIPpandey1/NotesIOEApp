import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Hydraulics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hydraulics',
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('60')),
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
          SectionHeader(text: 'Pipe Flow (9 hours)'),
          SubSection(
              text:
                  'Introduction to pipe flow, distinguish between pipe and open channel flow. Reynolds experiment and flow based on Reynolds’s number'),
          SubSection(
              text:
                  'Laminar flow (Steady uniform incompressible flow in a circular pipe, shear stress, and velocity distribution)'),
          SubSection(text: 'Head loss, Hagen Poisseuille equation'),
          SubSection(
              text:
                  'Turbulent flow. Shear stress development, Prandtl’s mixing length theory, velocity Distribution, Darcy-Weisbach equation, Nikuradse’s experiments'),
          SubSection(
              text:
                  'Resistance for commercial pipes, variation of friction factor with Reynold number, Colebrook-White equation, Moody’s diagram'),
          SubSection(
              text:
                  'Minor head losses in pipes (losses in sudden enlargement, sudden contraction, Exit loss, entry loss, losses in bends and losses due to different fittings)'),
          SubSection(text: 'HGL and TEL lines for several cases'),
          SubSection(text: 'Simple pipe flow problems and solution (5 hours)'),
          SubSection(
              text:
                  'Three types of simple pipe flow problems and their solution'),
          SubSection(
              text:
                  'Pipe is series, Dupuit equation. Concept of equivalent pipe length'),
          SubSection(
              text:
                  'Pipe in parallel. Different kind of problems and their solution'),
          SubSection(text: 'Siphons and its application'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(
              text: 'Three Reservoirs Problem and Pipe Networks (6 hours)'),
          SubSection(text: 'Introduction to three reservoir problems'),
          SubSection(text: 'Solution procedures for possible different cases'),
          SubSection(
              text: 'Introduction to pipe network problems and application'),
          SubSection(
              text: 'Hardy-Cross method of solving of pipe networks problems'),
          SubSection(
              text:
                  'Solution procedure by Hardy-Cross method for single and double loops of pipe networks with examples'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Unsteady Flow in Pipes (5 hours)'),
          SubSection(
              text:
                  'Basic equations for unsteady flow: celerity, Euler’s Equation and continuity equation'),
          SubSection(text: 'Water hammer and its effects'),
          SubSection(
              text: 'Propagation of elastic wave in rigid and elastic pipe'),
          SubSection(
              text:
                  'Pressure variation due to gradual and sudden closure of pipe. Pressure variation at given point due to sudden closure of pipe'),
          SubSection(
              text:
                  'Brief information about the relief devices against water hammer effects as surge tanks'),

          SectionHeader(text: 'Basics of Open Channel Flow (3 hours)'),
          SubSection(
              text:
                  'Introduction to open channel flow and its practical application, differences between open and pipe flows'),
          SubSection(
              text:
                  'Classification (natural and artificial channel, prismatic and non-prismatic channel, rigid boundary and mobile boundary channel)'),
          SubSection(
              text:
                  'Geometric properties (depth of flow, area of flow, top width, wetted perimeter, hydraulic radius, hydraulic depth, bed or longitudinal slope, hydraulic slope, energy slope)'),
          SubSection(
              text:
                  'Classification of open channel flow (Steady unsteady; uniform non-uniform; laminar turbulent; sub-critical, super critical, critical and super critical flow; gradually varied, rapidly varied and spatially varied flow)'),

          SectionHeader(text: 'Uniform Flow in Open Channel (7 hours)'),
          SubSection(
              text:
                  'Condition of uniform flow, expression for the shear stress on the boundary of channel'),
          SubSection(
              text:
                  'Flow resistance equations. Darcy-Weisbach, Chezy and Manning equations and their relationship'),
          SubSection(
              text:
                  'Determination and factors affecting manning’s roughness coefficient'),
          SubSection(
              text:
                  'Velocity profile for laminar and turbulent flow, velocity distribution'),
          SubSection(
              text: 'Velocity distribution coefficients and their application'),
          SubSection(
              text:
                  'Conveyance, section factor, normal depth and hydraulic exponent for uniform flow computation'),
          SubSection(text: 'Problems of uniform flow computation'),
          SubSection(
              text:
                  'Best Hydraulic channel sections and determination of section dimensions (rectangular, triangular, trapezoidal and circular section)'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(
              text:
                  'Energy and Momentum Principles in Open Channel Flow (11 hours)'),
          SubSection(
              text:
                  'Energy principle, specific energy, specific energy curve, criteria for critical flow'),
          SubSection(
              text:
                  'Critical depth computations for all kind of channel sections (prismatic as well as non prismatic) and criteria for critical state of flow'),
          SubSection(text: 'Discharge depth relationship'),
          SubSection(
              text:
                  'Application of energy principle and concepts of critical depth concepts (channel width reduction, rise in channel bed, venture flume and broad crested weir)'),
          SubSection(
              text:
                  'Momentum principle, specific force, specific force curve, criteria for critical state of flow, conjugate depth'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Non-uniform Gradually Varied Flow (6 hours)'),
          SubSection(
              text:
                  'Introduction to GVF. Basic assumptions, Dynamic equation and its physical meaning'),
          SubSection(
              text:
                  'Characteristics bed slopes (mild, critical, steep, horizontal and adverse)'),
          SubSection(text: 'Characteristics and analysis of flow profiles'),
          SubSection(
              text:
                  'Computation of GVF in prismatic channels by (graphical integration, direct integration and direct step and standard step methods)'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Non-uniform Rapidly Varied Flow (4 hours)'),
          SubSection(
              text:
                  'Characteristics of RVF. Hydraulic jump as an energy dissipater'),
          SubSection(
              text:
                  'Hydraulic jump in a horizontal rectangular channel. Relationship between hydraulic jump variables (conjugate depth, height of the jump, efficiency jump, length of the jump)'),
          SubSection(text: 'Energy loss in jump'),
          SubSection(
              text:
                  'Classification of the jump based on the tail water level and Froude number'),
          SubSection(
              text:
                  'Practical application of jump at spillway toe, falls etc.'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Flow in Mobile Boundary Channel (4 hours)'),
          SubSection(text: 'Introduction to rigid and mobile boundary channel'),
          SubSection(
              text:
                  'Rigid boundary channel and its design principle (minimum permissible velocity approach)'),
          SubSection(
              text:
                  'Definition of alluvial channel. Shear stress distribution on the channel boundary'),
          SubSection(text: 'Incipient motion condition'),
          SubSection(
              text:
                  'Design of MBC by three approaches (the permissible velocity, tractive force and regime theory approaches)'),
          SubSection(
              text:
                  'Introduction to Shield diagram and its application for designing MBC'),
          SubSection(text: 'Formation of river beds based on the shear stress'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Ven Te Chow “Open channel hydraulic” McGraw-Hill book company limited, 1973'),
          SubSection(
              text:
                  'K G Ranga Raju “Flow through open channel” Tata McGraw-Hill Publishing Company Limited, New Delhi, Second Edition,1993'),
          SubSection(
              text:
                  'D.S. Kumar “Fluid Mechanics and Fluid power Engineering” S.K. Kataria and Sons, sixth edition, 2005'),
          SubSection(
              text:
                  'K. L. Kumar “Engineering Fluid Mechanics” Eurasia Publishing house (P) Ltd. Ram Nagar New Delhi, 2000'),
          SubSection(
              text:
                  'S Ramamrutham “Hydraulics fluid mechanics and fluid machines”, Dhanpat Rai Publishing Company (P) Ltd. New Delhi Seventh Edition 2006'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Head loss in Pipe'),
          SubSection(
              text:
                  "Determination of manning's coefficient for different surfaces"),
          SubSection(text: 'Flow through open sluice gate'),
          SubSection(text: 'Hump and constricted flow analysis'),
          SubSection(text: 'Hydraulic jump analysis'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Pipe flow (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation. There will be tutorial for each sub-section'),
          SubSection(text: 'Simple pipe flow problem and solution (2 hours)'),
          SubSection(
              text: 'Practical examples, numerical examples and derivation'),
          SubSection(
              text: 'Three reservoir problems and pipe networks (4 hours)'),
          SubSection(
              text:
                  'Practical examples, and numerical examples. Use of computer programme(studied in I/I) for solving exercises'),
          SubSection(text: 'Unsteady flow in pipes (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation. There will be tutorial for each sub-section'),
          SubSection(text: 'Basics of open channel flow (1 hour)'),
          SubSection(text: 'Uniform Flow (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation. There will be tutorial for each sub-section. Use of computer programme (studied in I/I) to solve some problems'),
          SubSection(
              text:
                  'Energy and momentum principles in open channel flow (4 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation. There will be tutorial for each sub-section. Use of computer programme (studied in I/I) to solve some problems'),
          SubSection(text: 'Non-uniform Gradually varied flow (4 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation :: Drawings for flow profiles. There will be tutorial for each sub-section :: Use of computer programme (studied in I/I) to solve some problems'),
          SubSection(text: 'Non-uniform Rapidly Varied flow (2 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation. There will be tutorial for each sub-section'),
          SubSection(text: 'Flow in mobile boundary channel (2 hours)'),
          SubSection(
              text: 'Practical examples, numerical examples and derivation')

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
