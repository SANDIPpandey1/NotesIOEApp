import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class FoundationEngineering extends StatelessWidget {
  final int initialTabIndex;
  FoundationEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Foundation Engineering',
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Introduction'),

          SubSection(text: 'Foundation Engineering, Importance and purpose'),
          SubSection(text: 'Classification and general requirement'),
          SubSection(text: 'Factors influencing the choice of a foundation'),
          SubSection(text: 'Selection of the type'),

          SectionHeader(text: 'Soil Exploration'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Methods of exploration'),
          SubSection(text: 'Planning the exploration programme'),
          SubSection(text: 'Method of boring'),
          SubSection(text: 'Soil sampling and soil samplers'),
          SubSection(text: 'Vertical and lateral extent of borings'),
          SubSection(
              text:
                  'Field tests like Penetration test( Standard Penetration Test, Static Cone Penetration Test, Dynamic Cone Penetration Test) Pressure meter tests, dialatometer test and field Vane shear test.'),
          SubSection(text: 'Ground water observations'),
          SubSection(text: 'Borehole logs'),
          SubSection(text: 'Site investigation reports'),

          SectionHeader(
              text: 'Lateral Earth Pressure Theories and Retaining Walls'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Effect of wall movement on Earth pressure'),
          SubSection(text: 'Earth pressure at Rest'),
          SubSection(text: 'Classical Earth Pressure Theories'),
          SubSection(text: 'Rankine’s theory'),
          SubSection(text: 'Coulomb’s theory'),
          SubSection(text: 'Yielding of wall of limited height'),
          SubSection(text: 'Graphical solution for coulomb’s earth pressure'),
          SubSection(text: 'Trial wedge method for earth pressure'),
          SubSection(text: 'Proportioning of retaining walls'),
          SubSection(text: 'Stability of retaining walls'),

          SectionHeader(text: 'Arching in Soils and Braced Cuts'),

          SubSection(text: 'Arching in soils'),
          SubSection(text: 'Braced excavations'),
          SubSection(text: 'Earth pressure against bracings in cuts'),
          SubSection(text: 'Heave of the bottom of cut in soft clays'),
          SubSection(text: 'Strut loads'),
          SubSection(text: 'Deep cuts in sand'),
          SubSection(text: 'Deep cut in saturated, soft to medium clays'),

          SectionHeader(text: 'Flexible Retaining Structures and Coffer Dams'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Cantilever sheet pile wall'),
          SubSection(text: 'Anchored wall'),
          SubSection(text: 'Coffer dams'),

          SectionHeader(
              text: 'Bearing Capacity and Settlement of Shallow Foundations'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Basic Definitions and their relationship.'),
          SubSection(text: 'Principle modes of soil failure'),
          SubSection(
              text:
                  'Bearing capacity by classical Earth pressure theory of Rankine'),
          SubSection(
              text: 'Pauker and Bell‘s bearing capacity theory of failure'),
          SubSection(text: 'Prandtl’s theory of failure'),
          SubSection(
              text:
                  'Terzaghi’s method of determining bearing capacity of soil'),
          SubSection(text: 'Effect of water table on bearing capacity'),
          SubSection(text: 'Extension of Terzaghis bearing capacity theory'),
          SubSection(text: 'Recent bearing capacity theories'),
          SubSection(
              text: 'Bearing capacity from In-situ tests (Plate load test)'),
          SubSection(text: 'Types of settlement and their relationships.'),
          SubSection(
              text: 'Allowable settlement and allowable bearing pressure'),
          SubSection(text: 'Steps involved in the proportion of footings'),

          SectionHeader(text: 'Mat Foundations'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Common types of mat foundation'),
          SubSection(
              text: 'Bearing capacity and settlement of mat foundations'),
          SubSection(text: 'Compensated foundation'),
          SubSection(text: 'Analysis of mat foundation'),

          SectionHeader(text: 'Pile Foundations'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Types and uses of piles'),
          SubSection(text: 'Construction of piles'),
          SubSection(text: 'Selection of pile type'),
          SubSection(text: 'Types of foundations to suit subsoil conditions'),
          SubSection(text: 'Pile driving formula'),
          SubSection(text: 'Static pile load formulae'),
          SubSection(text: 'Load test on piles'),
          SubSection(text: 'Dynamics pile formulae'),
          SubSection(text: 'Pile capacity from in-situ tests.'),
          SubSection(text: 'Group action of piles'),
          SubSection(text: 'Negative skin friction'),
          SubSection(text: 'Laterally load piles'),
          SubSection(text: 'Piles subjected to uplift loads'),

          SectionHeader(text: 'Well Foundations'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Types of wells or caissons'),
          SubSection(text: 'Components of a well foundation'),
          SubSection(text: 'Shapes of wells'),
          SubSection(text: 'Depth of a well foundation'),
          SubSection(text: 'Forces acting on well foundation'),
          SubSection(text: 'Lateral stability of well foundation'),
          SubSection(text: 'Construction and sinking of a well'),

          SectionHeader(text: 'Foundation Soil Improvements'),

          SubSection(text: 'Introduction'),
          SubSection(text: 'Mechanical compaction.'),
          SubSection(text: 'Dynamic compaction.'),
          SubSection(text: 'Preloading'),
          SubSection(text: 'Sand compaction piles and stone columns'),
          SubSection(text: 'Soil stabilisation by use of admixtures'),
          SubSection(
              text: 'Soil stabilisation by injection of suitable grouts'),

          SectionHeader(text: 'Tutorials'),

          SubSection(
              text:
                  'Introduction (0.5 hour): Theory; definition and concept type questions.'),
          SubSection(
              text:
                  'Soil Exploration (2.0 hours) : Theory; definition, numerical examples types of questions.'),
          SubSection(
              text:
                  'Lateral Earth Pressure Theories and Retaining Walls  (3.0 hours) : Concept type; practical examples and numerical type questions. :: There can be tutorials for each sub-section'),
          SubSection(
              text:
                  'Arching in Soils and Braced Cuts (1.0 hours) : Definition type; Practical example type and numerical type questions'),
          SubSection(
              text:
                  'Flexible Retaining Structures and Coffer Dams (1.0 hour) : Definition type; Practical example type and numerical type questions.'),
          SubSection(
              text:
                  'Bearing Capacity and Settlement of Shallow Foundations (2.5 hours): Concept type; definition type; Practical example type numerical examples type with diagrams questions. :: There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Mat Foundations (1.0 hour) : Concept type; definition type; Practical example type questions. :: There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Pile Foundations  (2.0 hour) : Definition type; numerical examples type questions. Practical example type questions. :: There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Well Foundations (1.0 hours) : Concept type; definition type; numerical examples and Practical type questions. :: There can be tutorials for each sub-section.'),
          SubSection(
              text:
                  'Foundations Soil Improvements   (1.0 hours) : Concept type; definition type and Practical type questions. :: There can be tutorials for each sub-section.'),

          SectionHeader(text: 'Laboratories'),

          SubSection(text: 'Field tests on penetration test.'),
          SubSection(
              text:
                  'One observation tour of a site investigation projects and each student should prepare a brief report on the basis of prescribed data-format.'),

          SectionHeader(text: 'References'),

          SubSection(
              text:
                  '“Foundation Analysis and Design” Joseph E.Bowels. McGraw-Hill International Editions, Fifth Edition, 1997'),
          SubSection(
              text:
                  '“Principles of Foundation Engineering” Braja M. Das, Fifth Edition, 2003. Thomson/Brookscole'),
          SubSection(
              text:
                  '“Basic and Applied soil mechanics “Gopal Ranjan and ASR Rao, Second Edition New Age International publishers,2000'),
          SubSection(
              text:
                  '“Soil mechanics and Foundation Engineering” K. R. Arora Standard Publisher Distribution 1997'),
          SubSection(
              text:
                  '“A Text Book of Soil Mechanics and Foundation Engineering in SI units “V.N.S. Murthy UBS Publishers Distributors Ltd.Fourth Edition 1993.'),
          SubSection(
              text:
                  '”A Text Book of Foundation Engineering”, Dr. R.K.Poudel and R.Neupane, 1st Edition, 2006.'),
          SubSection(
              text:
                  '“Pile Foundation Analysis and Design” H.G.Poulos and E.H.Davis, John Wiley and Sons, 1980')

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
