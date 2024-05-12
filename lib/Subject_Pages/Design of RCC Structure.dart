import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class DesignofRCCStructure extends StatelessWidget {
  final int initialTabIndex;
  DesignofRCCStructure({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Design of RCC Structure',
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
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5, 6, 7')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('12')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
          SectionHeader(
              text: 'Concrete Structures and Design Methods [3 hours]'),
          SubSection(text: 'Introduction to Reinforced Concrete Structures'),
          SubSection(text: 'Design methods of Reinforced Concrete Structures'),
          SubSection(text: 'Characteristic strengths and loads'),
          SubSection(text: 'Design process and basis for design'),

          SectionHeader(text: 'Working Stress Method of Design [4 hours]'),
          SubSection(text: 'Basic assumption in working stress design'),
          SubSection(
              text:
                  'Working load and permissible stresses in concrete and steel'),
          SubSection(text: 'Behavior of beam under loading'),
          SubSection(
              text:
                  'Types of reinforced concrete beam and different RC sections'),
          SubSection(text: 'Design of singly reinforced rectangular beam'),

          SectionHeader(text: 'Limit State Method of design [5 hours]'),
          SubSection(
              text:
                  'Safety and serviceability requirements and different limit states of structure'),
          SubSection(text: 'Design strength of materials and design loads'),
          SubSection(
              text: 'Idealized stress-strain diagram of concrete and steel'),
          SubSection(
              text:
                  'Limit state of collapse in flexure, shear, torsion and compression'),
          SubSection(
              text:
                  'Limit state of serviceability in deflection and in cracking'),

          SectionHeader(text: 'Design of beams: Behavior in Flexure [6 hours]'),
          SubSection(text: 'Flexural behavior of reinforced concrete'),
          SubSection(text: 'Design of Rectangular beams'),
          SubSection(text: 'Design of flanged beam sections'),

          SectionHeader(text: 'Design for Shear and Torsion [4 hours]'),
          SubSection(text: 'Shear stress in beams'),
          SubSection(text: 'Behavior of concrete under shear'),
          SubSection(text: 'Behavior and design strength in Torsion'),

          SectionHeader(
              text: 'Design for bond and development length [2 hours]'),
          SubSection(text: 'Development length'),
          SubSection(text: 'Anchorage bond'),
          SubSection(text: 'Flexural bond'),

          SectionHeader(
              text: 'Reinforcement detailing: Codal Provisions [4 hours]'),
          SubSection(text: 'Requirements for good detailing'),
          SubSection(text: 'Nominal cover'),
          SubSection(text: 'Curtailment of Flexural Reinforcement'),
          SubSection(text: 'Shear reinforcement'),
          SubSection(text: 'Splicing of reinforcement'),
          SubSection(text: 'Anchorage'),
          SubSection(text: 'Bar bending schedule'),

          SectionHeader(
              text:
                  'Limit States of Serviceability: Deflection and Cracking [6 hours]'),
          SubSection(
              text:
                  'Elastic theory: Cracked, uncracked and partially cracked sections'),
          SubSection(text: 'Short-term and long-term deflections'),
          SubSection(text: 'Control of deflection in design'),
          SubSection(text: 'Control of cracking in design'),

          SectionHeader(text: 'Design of slabs and staircase [6 hours]'),
          SubSection(text: 'Design of one-way and two-way slabs'),
          SubSection(text: 'Detailing of one-way and two-way slabs'),
          SubSection(
              text: 'Design and detailing of longitudinally loaded stairs'),

          SectionHeader(
              text: 'Design of compression members: Columns [8 hours]'),
          SubSection(text: 'Effective length of columns'),
          SubSection(text: 'Design of short columns'),
          SubSection(text: 'Design of long columns'),
          SubSection(text: 'Reinforcement detailing'),

          SectionHeader(text: 'Design of Footings [6 hours]'),
          SubSection(text: 'Design of spread footing'),
          SubSection(text: 'Design of isolated footings'),
          SubSection(text: 'Design of combined footings'),
          SubSection(text: 'Design of mat foundation'),

          SectionHeader(
              text:
                  'Introduction to Earthquake Resistant Design and Provisions for Ductile Detailing [6 hours]'),
          SubSection(text: 'Damage to RCC structures in earthquake'),
          SubSection(
              text:
                  'Philosophy of design of structures in earthquake prone region'),
          SubSection(text: 'Design for strength and ductility'),
          SubSection(text: 'Provision of ductility in building codes'),
          SubSection(text: 'Ductility requirement for beam, column and joints'),

          SectionHeader(text: 'Tutorials'),
          SubSection(
              text:
                  'Design and detailing of rectangular and flanged beams [4 hours]'),
          SubSection(text: 'Flexure [4 hours]'),
          SubSection(text: 'Shear/ Tortion [4 hours]'),
          SubSection(text: 'Bending [2 hours]'),
          SubSection(text: 'Serviceability [4 hours]'),
          SubSection(
              text: 'Design and detailing of slabs and staircase [4 hours]'),
          SubSection(text: 'Design and detailing of columns [4 hours]'),
          SubSection(text: 'Design and detailing of footings [4 hours]'),
          SubSection(text: 'Ductile Detailing [4 hours]'),

          SectionHeader(text: 'Project work'),
          SubSection(
              text:
                  'Individual project to and design elements of a low rise building'),

          SectionHeader(text: 'Practical'),
          SubSection(text: 'Test a beam in pure bending failure'),
          SubSection(text: 'Test a beam in pure shear failure'),
          SubSection(text: 'Test a beam in combined bending shear failure'),
          SubSection(
              text:
                  'Practical work on making skeleton of beam-column connection'),
          SubSection(text: 'Practical work on making skeleton of beam-slab'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Jain, A.K. 2002. Reinforced Concrete Limit State Design, Nem Chand and Bros, Roorkee, India (Reprint 2009)'),
          SubSection(
              text:
                  'Pillai, S.U., Menon, D. 2011. Reinforced Concrete Design, Tata McGraw Hill Education Private Limited, New Delhi'),
          SubSection(
              text:
                  'Kong, F.K., Evans, R.H. 1987. Reinforced and Pre-stressed Concrete, ELBS, London'),
          SubSection(
              text:
                  'Agrawal, P., Shrikhande, M. 2006. Earthquake Resistant Design of Structures, PHI Learning Private Limited, New Delhi (Reprint 2008)'),
          SubSection(
              text:
                  'Dayaratnam, P. Design of Reinforced Concrete Structures, Oxford and IBH Publishing Company')

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
