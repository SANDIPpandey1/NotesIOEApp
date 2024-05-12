import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ConcreteTechnologyandMasonryStructure extends StatelessWidget {
  final int initialTabIndex;
  ConcreteTechnologyandMasonryStructure({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Concrete Technology and Masonry Structure',
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
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Part I: Concrete Technology'),

          SubSection(
              text:
                  'Introduction to concrete and concrete materials [4 hours]'),
          SubSection(
              text: 'Use of concrete in structure and types of concrete'),
          SubSection(
              text:
                  'Concrete materials - Role of different materials (Aggregates, Cement, Water and Admixtures)'),
          SubSection(
              text:
                  'Aggregates - Properties of aggregates and their gradation'),
          SubSection(
              text:
                  'Cement - Manufacturing of cement, Compound composition of Portland Cement, Structure and reactivity of compounds'),
          SubSection(text: 'Introduction to special types of cement'),
          SubSection(text: 'Use of water in concrete'),
          SubSection(
              text:
                  'Admixtures - Classification of admixtures, Introduction to commonly used admixtures (Super-plasticizer, Water proofing agent and Retarders), Use of Mineral admixtures in concrete'),

          SectionHeader(text: 'Structure of concrete [3 hours]'),
          SubSection(text: 'Concrete as three phase system'),
          SubSection(text: 'Structure of aggregate phase'),
          SubSection(text: 'Structure of the hydrated cement paste phase'),
          SubSection(text: 'Transition zone in concrete'),

          SectionHeader(
              text:
                  'Mix design of concrete and property of green concrete [6 hours]'),
          SubSection(text: 'Workability and its test'),
          SubSection(text: 'W/C ratio in concrete'),
          SubSection(text: 'Introduction to nominal mix'),
          SubSection(text: 'Probabilistic concept in mix design approach'),
          SubSection(text: 'Concrete mix design by DOE, ACI and IS Method'),
          SubSection(text: 'Segregation and bleeding'),
          SubSection(
              text:
                  'Quality control in site: Mixing, handling, placing, compaction and curing'),
          SubSection(text: 'Concrete in extreme temperatures'),

          SectionHeader(text: 'Properties of hardened concrete [3 hours]'),
          SubSection(
              text: 'Deformation of hardened concrete, Moduli of elasticity'),
          SubSection(text: 'Shrinkage and creep'),
          SubSection(text: 'Fatigue, impact and dynamic loading'),
          SubSection(
              text:
                  'Effect of porosity, water-cement ratio and aggregate size'),
          SubSection(text: 'Effect of gel/space ratio'),

          SectionHeader(
              text: 'Testing of concrete and quality control [6 hours]'),
          SubSection(
              text:
                  'Various strength of concrete: Tensile, Compressive, Shear and Bond'),
          SubSection(text: 'Compressive strength test'),
          SubSection(text: 'Tensile strength test'),
          SubSection(
              text: 'Variability of concrete strength and acceptance criteria'),
          SubSection(text: 'Non-destructing testing of concrete'),

          SectionHeader(text: 'Concrete durability [3 hours]'),
          SubSection(
              text: 'Effect of water and permeability on concrete durability'),
          SubSection(
              text: 'Physical and chemical causes of concrete deterioration'),
          SubSection(text: 'Carbonation'),
          SubSection(text: 'Corrosion of steel in concrete'),

          SectionHeader(text: 'Part II: Masonry Structures'),

          SubSection(text: 'Introduction to masonry structures [4 hours]'),
          SubSection(text: 'Use of masonry structures'),
          SubSection(
              text:
                  'Construction technology - English bond, Flemish bond, Rat-trap bond'),
          SubSection(text: 'Hollow block and compressed earth block'),
          SubSection(text: 'Masonry as infill walls'),
          SubSection(text: 'Reinforced and un-reinforced masonry'),

          SectionHeader(
              text: 'Design of masonry walls for gravity loads [8 hours]'),
          SubSection(text: 'Introduction to codal provisions'),
          SubSection(
              text:
                  'Design example for gravity loads Solid wall, wall with openings, walls with eccentric loadings and walls acting as columns'),

          SectionHeader(
              text: 'Masonry structures under lateral loads [5 hours]'),
          SubSection(
              text: 'Performance of masonry structures in lateral loads'),
          SubSection(
              text: 'Failure behavior of masonry structures in lateral loads'),
          SubSection(
              text: 'In-plane and out-of-plane behavior of masonry structures'),
          SubSection(
              text:
                  'Ductile behavior of reinforced and unreinforced masonry structures'),
          SubSection(text: 'Calculation of stresses for lateral loads'),
          SubSection(text: 'Elements of lateral load resisting masonry system'),

          SectionHeader(text: 'Testing of masonry elements [3 hours]'),
          SubSection(text: 'Compressive strength of bricks and walls'),
          SubSection(text: 'Diagonal shear test'),
          SubSection(
              text:
                  'Non-destructive tests - Elastic wave tomography, Flat-jack, Push shear test and others'),

          SectionHeader(text: 'Laboratories'),

          SubSection(text: 'Part I: Concrete Technology'),
          SubSection(text: 'Gradation/Properties of aggregates'),
          SubSection(
              text: 'Concrete Mix design: Nominal mix, DoE, ACI and IS Method'),
          SubSection(text: 'Test of concrete cubes, cylinders, prisms'),
          SubSection(text: 'Non-destructive testing'),

          SubSection(text: 'Part II: Masonry Structures'),
          SubSection(text: 'Test of bricks on Compression'),
          SubSection(text: 'Test of wall on Compression'),
          SubSection(text: 'Demonstration of Non-destructive test'),

          SectionHeader(text: 'References'),

          SubSection(
              text:
                  'A.M. Neville, J.J. Brook, Concrete Technology, International Students\' Edition'),
          SubSection(
              text:
                  'M. S. Shetty, Concrete Technology: Theory and Practice, S. Chand, New Delhi, 2005'),
          SubSection(
              text:
                  'P.K. Mehta, Paulo j. M. Monteiro, Concrete, Microstructure, Properties and Materials, University of California, Berkley (Indian Edition)'),
          SubSection(
              text:
                  'A.S. Arya, Masonry and Timber Structures including earthquake resistant Design, Nem Chandra and Bros, Roorkee, 1987'),
          SubSection(
              text:
                  'A.W. handry, B.P. Sinha, S.R. Davies, An Introduction to Load Bearing Brick Design, University of Edinburgh, 1981'),
          SubSection(
              text:
                  'P. Dayaratnam, Brick and Reifnorced Brick Structures, Oxford and IBH Publishing Co. Pvt. Ltd. 1987'),
          SubSection(text: 'IS 456, 2000'),
          SubSection(text: 'IS 383, 1970'),
          SubSection(text: 'IS 1905/ SP 20'),
          SubSection(text: 'Nepal National Building Code (NBC) 109, 1994')

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
