import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SoilMechanics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Soil Mechanics',
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
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
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
          SectionHeader(text: 'Introduction (1 hour)'),
          SubSection(
              text:
                  'Preview of Geotechnical Problems in Civil Engineering and Infrastructure Development'),
          SubSection(text: 'Historical Development of Soil Mechanics'),
          SubSection(text: 'Soil Formation and Soil Type'),

          SectionHeader(
              text:
                  'Solids-Water-Air Relations and Index Properties of Soils (5 hours)'),
          SubSection(text: 'Phase Diagram'),
          SubSection(text: 'Simple Definitions and Their Relationships'),
          SubSection(text: 'Index Properties of Soils'),
          SubSection(text: 'Determinations of Various Index Properties'),

          SectionHeader(
              text: 'Soil Identifications and Classification (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Field Identification of Soil'),
          SubSection(
              text:
                  'Soil Classification: Textural, ISSCS, MIT, BSCS, USCS, and AASHTO Soil Classification System'),
          SubSection(text: 'Application of Soil Classification System'),

          SectionHeader(text: 'Soil Structure and Clay Minerals (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Clay Minerals'),
          SubSection(text: 'Clay Particle Interaction'),
          SubSection(text: 'Soil Structure and Fabrics'),

          SectionHeader(text: 'Soil Compaction (3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Laboratory Tests'),
          SubSection(text: 'Factors Affecting Compaction'),
          SubSection(
              text:
                  'Structure and Engineering Behavior of Compacted Cohesive Soils'),
          SubSection(text: 'Compaction Specification and Field Control'),

          SectionHeader(
              text:
                  'Principle of Effective Stress, Capillarity, and Permeability (5 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Principle of Effective Stress'),
          SubSection(text: 'Capillarity in Soils'),
          SubSection(text: 'Permeability of Soils'),
          SubSection(
              text:
                  'Determinations of Coefficient of Permeability: Laboratory and Field Methods'),

          SectionHeader(text: 'Seepage Through Soils (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Two-Dimensional Flow - Laplace\'s Equation'),
          SubSection(text: 'Flow Nets'),
          SubSection(text: 'Unconfined Flow'),
          SubSection(text: 'Seepage in Anisotropic Soil Condition'),

          SectionHeader(
              text: 'Vertical Stresses Below Applied Loads (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Boussinesq Equation and Westergaard’s Equation'),
          SubSection(text: 'Vertical Stress Distribution Diagrams'),
          SubSection(text: 'Vertical Stress Beneath Loaded Areas'),
          SubSection(
              text: 'Approximate Stress Distribution Methods for Loaded Areas'),

          SectionHeader(text: 'Compressibility of Soil (6 hours)'),
          SubSection(text: 'Contact Pressure and Settlement Profile'),
          SubSection(text: 'Fundamentals of Consolidation'),
          SubSection(text: 'One-Dimensional Laboratory Consolidation Test'),
          SubSection(text: 'Void Ratio-Pressure Plots'),
          SubSection(text: 'Normally Consolidated and Over Consolidated Clay'),

          SectionHeader(text: 'Shear Strength of Soil (6 hours)'),
          SubSection(text: 'Mohr-Coulomb Failure Criterion'),
          SubSection(
              text:
                  'Laboratory Tests for Determination of Shear Strength Parameters'),
          SubSection(text: 'Direct Shear Test'),
          SubSection(text: 'Triaxial Shear Test-General'),

          SectionHeader(text: 'Stability of Slopes (5 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Infinite Slopes and Translation Slides'),
          SubSection(text: 'Definition of Factor of Safety'),
          SubSection(text: 'Finite Slopes-Forms of Slip Surface'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Introduction (0.5 hour)'),
          SubSection(
              text:
                  'Solids-Water-Air Relations and Index Properties of Soils (1.5 hours)'),
          SubSection(
              text: 'Soil Identifications and Classification (0.5 hour)'),
          SubSection(text: 'Soil Structure and Clay Minerals (0.5 hour)'),
          SubSection(text: 'Soil Compaction (1 hour)'),
          SubSection(
              text:
                  'Principle of Effective Stress, Capillarity, and Permeability (2 hours)'),
          SubSection(text: 'Seepage Through Soils (2 hours)'),
          SubSection(text: 'Vertical Stresses Below Applied Loads (1 hour)'),
          SubSection(text: 'Compressibility of Soil (2 hours)'),
          SubSection(text: 'Shear Strength of Soil (2 hours)'),
          SubSection(text: 'Stability of Slopes (2 hours)'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Sieve Analysis of Coarse and Fine Grained Soils'),
          SubSection(text: 'Determination of Atterberg Limits of Soils'),
          SubSection(
              text:
                  'Determination of In-situ Density by Sand Replacement Method and Core Cutter Method'),
          SubSection(text: 'Determination of OMC and Maximum Dry Density'),
          SubSection(text: 'Unconfined Compression Test'),
          SubSection(text: 'Direct Shear Test'),
          SubSection(text: 'Constant Head Permeability Test'),
          SubSection(text: 'UU Triaxial Test'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Terzaghi K and Peck.R. B. John Wiley "Soil Mechanics in Engineering Practice", 2nd Edition, New York, 1967'),
          SubSection(
              text:
                  'Braja M. Das "Principles of Geotechnical Engineering", Fifth Edition, Thomson/Brookscole'),
          SubSection(
              text:
                  'Joseph E Bowles "Physical and Geological Properties of Soils", Mc Graw Hill Co. Ltd 2nd Edition 1984'),
          SubSection(
              text:
                  'Gopal Ranjan and ASR Rao "Basic and Applied Soil Mechanics", Second Edition, New Age International Publishers, 2000'),
          SubSection(
              text:
                  'K. R. Arora "Soil Mechanics and Foundation Engineering", Standard Publisher Distribution 1997'),
          SubSection(
              text:
                  'S.R. Kaniraj "Design Aids in Soil Mechanics and Foundation Engineering", Tata Mc Graw Hill Education Limited, 2010'),
          SubSection(
              text:
                  'V.N.S. Murthy "A Text Book of Soil Mechanics and Foundation Engineering in SI units", UBS Publishers Distributors Ltd, Fourth Edition 1993'),
          SubSection(
              text:
                  'Dr. Sehgal "A Text Book of Soil Mechanics", S.B. CBS Publishers and Distributors, New Delhi, 1988')

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
              //test
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
