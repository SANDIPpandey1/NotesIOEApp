import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class CivilEngineeringMaterial extends StatelessWidget {
  final int initialTabIndex;
  CivilEngineeringMaterial({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Civil Engineering Materials',
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
              text: 'Introduction to Civil Engineering Material (2 hours)'),
          SubSection(text: 'Scope of the Subject'),
          SubSection(text: 'Selection Criteria of Construction Material'),
          SubSection(text: 'Classification of Civil Engineering Material'),
          SubSection(text: 'Properties of Civil Engineering Material'),

          SectionHeader(text: 'Building Stones (3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Characteristics of good building stones'),
          SubSection(text: 'Selection and use of stone'),
          SubSection(text: 'Deterioration and preservation of stone'),
          SubSection(text: 'Natural bed of stone'),
          SubSection(text: 'Dressing of stone'),

          SectionHeader(text: 'Clay Products (3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Constituents of brick earth'),
          SubSection(text: 'Manufacture of bricks'),
          SubSection(text: 'Good qualities of bricks'),
          SubSection(text: 'Classification of bricks'),
          SubSection(text: 'Standard test for bricks'),
          SubSection(text: 'Tiles and their type'),
          SubSection(text: 'Earthen ware and Glazing'),

          SectionHeader(text: 'Lime (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Type, Properties and Uses of lime'),
          SubSection(text: 'Properties and uses of Pozzolanic material'),

          SectionHeader(text: 'Cement (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Type, Properties and Uses of cement'),
          SubSection(text: 'Ingredients of cement'),
          SubSection(text: 'Manufacture of cement (Flow Diagram)'),
          SubSection(text: 'Composition and function of cement clinker'),
          SubSection(text: 'Standard test of cement'),
          SubSection(text: 'Cement water Proofers'),
          SubSection(text: 'Admixtures'),

          SectionHeader(text: 'Mortar (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Classification of mortar'),
          SubSection(text: 'Function of mortar'),
          SubSection(text: 'Selection of mortar for civil engineering works'),

          SectionHeader(text: 'Timber (3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Growth and structure of tree'),
          SubSection(text: 'Classification of tree'),
          SubSection(text: 'Characteristics of good timber'),
          SubSection(text: 'Defect of timber'),
          SubSection(text: 'Seasoning of timber'),
          SubSection(text: 'Deterioration and Preservation of timber'),
          SubSection(text: 'Commercial product of Timber'),

          SectionHeader(text: 'Metals and Alloys (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Type, Properties and Uses of iron'),
          SubSection(text: 'Composition and Properties of steel'),
          SubSection(text: 'Heat Treatment Process'),
          SubSection(text: 'Alloy of Steel'),
          SubSection(text: 'Non ferrous Metals'),
          SubSection(text: 'Commercial product of Metals'),

          SectionHeader(text: 'Paint and Varnishes (3 hours)'),
          SubSection(
              text:
                  'Function, ingredient, Type and Uses of Paint and Varnishes'),
          SubSection(text: 'Distemper'),
          SubSection(text: 'Anti – termite treatment'),

          SectionHeader(
              text:
                  'Asphalt, Bitumen, Tar and Miscellaneous Materials (4 hours)'),
          SubSection(
              text: 'Type, Properties and Uses of Asphalt, Bitumen and Tar'),
          SubSection(text: 'Type, Properties and Uses of glass'),
          SubSection(text: 'Plastic Materials'),
          SubSection(text: 'Insulating Materials'),
          SubSection(text: 'Gypsum Products'),
          SubSection(text: 'Composite Materials'),
          SubSection(text: 'Practical'),

          SectionHeader(
              text:
                  'Water absorption test and bulk specific gravity test on brick sample'),
          SectionHeader(text: 'Compressive strength test of brick'),
          SectionHeader(text: 'Consistency test of cement'),
          SectionHeader(text: 'Setting time test of cement'),
          SectionHeader(text: 'Soundness test of cement'),
          SectionHeader(text: 'Compressive strength of cement'),

          SectionHeader(text: 'Reference:'),
          SubSection(
              text:
                  'Peter A. Thornton and Vito J. Colangela Prentice “Fundamental of Engineering Materials”, Hall Publishing Company, 1985.'),
          SubSection(
              text:
                  'Parbin Singh “Civil Engineering Material”, , Katson Books,2008.'),
          SubSection(
              text:
                  'R.K.Rajput “Engineering Material”, , S. Chand & Company Ltd,2004.')

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
