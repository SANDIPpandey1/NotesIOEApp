import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class BuildingTechnology extends StatelessWidget {
  final int initialTabIndex;
  BuildingTechnology({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Building Technology',
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('3, 4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5, 6')),
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
                      child: Center(child: Text('7, 8')),
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
                      child: Center(child: Text('9, 10')),
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
                      child: Center(child: Text('11, 12')),
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
          SectionHeader(text: 'Functional Requirements of Buildings (7 hours)'),
          SubSection(text: 'Buildings and their types'),
          SubSection(
              text:
                  'Heat phenomena in Building (thermal performance of building components, thermal comfort, thermal design)'),
          SubSection(
              text:
                  'Ventilation (requirements, standards, design) & air conditioning'),
          SubSection(
              text:
                  'Lighting (illumination requirements, daylight, artificial lighting)'),
          SubSection(
              text:
                  'Sound and Acoustics (sound & noise, acoustic defects, sound insulation)'),
          SubSection(
              text:
                  'Orientation & planning of buildings (principles, site-selection, economy, setting-out)'),
          SubSection(
              text:
                  'Moisture & its movement through building components and damp proofing'),

          SectionHeader(text: 'Foundations (5 hours)'),
          SubSection(
              text:
                  'Soil exploration (methods, improving bearing capacity, load test)'),
          SubSection(text: 'Foundation and its types (deep, shallow)'),
          SubSection(
              text:
                  'Earthwork excavation of foundations (soft soil, hard rock, wet excavation)'),
          SubSection(
              text:
                  'Excavation of trenches for pipes, cables etc. and refilling works'),
          SubSection(text: 'Some common problems with existing foundations'),

          SectionHeader(text: 'Mortars & Masonry works (4 hours)'),
          SubSection(
              text:
                  'Mortars ( Types, properties, preparation process, Estimating mortar requirement)'),
          SubSection(text: 'Brick masonry (types, specifications)'),
          SubSection(
              text: 'Stone masonry (random rubble, course rubble, ashlar)'),
          SubSection(
              text: 'Walls: retaining walls, cavity walls, parapet walls'),

          SectionHeader(text: 'Roofs (4 hours)'),
          SubSection(text: 'Roofs & their types'),
          SubSection(
              text: 'Timber roofs (Single/double/ multiple timber roofs)'),
          SubSection(
              text:
                  'Steel trusses and their components (Angle & tubular truss)'),
          SubSection(text: 'Roof coverings'),

          SectionHeader(text: 'Stair, lifts and escalators (3 hours)'),
          SubSection(text: 'Stair and its Elements'),
          SubSection(text: 'Essential requirements & Types of stair'),
          SubSection(text: 'Ladders, ramps, Lifts & Escalators'),

          SectionHeader(text: 'Doors and windows (2 hours)'),
          SubSection(text: 'Doors: frames, shutters and their fixing details'),
          SubSection(
              text: 'Windows & ventilators: types and their fixing details'),

          SectionHeader(text: 'Flooring (3 hours)'),
          SubSection(text: 'Flooring and its types'),
          SubSection(text: 'Special types of floor finishing'),
          SubSection(text: 'Floor and wall ties'),

          SectionHeader(text: 'Temporary construction (4 hours)'),
          SubSection(text: 'Scaffolding and its types'),
          SubSection(
              text:
                  'Formwork for excavations & trenches and Formworks for RCC construction'),
          SubSection(text: 'Shoring and its types'),
          SubSection(text: 'Underpinning and its procedures'),

          SectionHeader(text: 'Finishing works (4 hours)'),
          SubSection(text: 'Cladding (types, fixing process)'),
          SubSection(text: 'Partitions & Suspended ceilings'),
          SubSection(
              text: 'Plastering & Pointing (types and process of application)'),
          SubSection(
              text: 'Painting works in wooden, metal and masonry surfaces'),

          SectionHeader(
              text: 'Causes and prevention of cracks in buildings (2 hours)'),
          SubSection(
              text:
                  'Cracks in different components of buildings (walls, roofs, floors, plasters, windows, RCC, joints etc.)'),
          SubSection(text: 'Causes of cracks and Remedial measures to cracks'),

          SectionHeader(
              text:
                  'Earthquake protection & Retrofitting in building (3 hours)'),
          SubSection(text: 'Earthquake Protection of Buildings'),
          SubSection(
              text: 'Techniques of Retrofitting  and Retrofitting materials'),
          SubSection(
              text: 'Destructive and non-destructive tests in buildings'),

          SectionHeader(text: 'Other services in building (4 hours)'),
          SubSection(text: 'Water supply & sanitation'),
          SubSection(text: 'Electrification, CCTV and Telephone network'),
          SubSection(text: 'Fire Protection'),
          SubSection(text: 'Rainwater harvesting'),

          SectionHeader(text: 'Assignments: [10 marks]'),
          SubSection(
              text:
                  'Drawings of site plan, foundation trench plan, section and timbering of foundation trench.'),
          SubSection(
              text:
                  'Detailed drawings of foundation structures. Bonding details of junction of walls.'),
          SubSection(
              text:
                  'Detailed drawings of important building components (foundation, plinth, and superstructure).'),
          SubSection(
              text: 'Detailing of frames and shutters of doors and windows;'),
          SubSection(
              text: 'Drawing plan and section of dog legged stair case.'),
          SubSection(
              text:
                  'Isometric view, plan and sections of scaffolding, shoring and    underpinning.'),
          SubSection(
              text: 'Septic tank, soak pit and isometric view of pipe layout.'),
          SubSection(
              text:
                  'Layout drawing of power, light circuit and other networks.'),
          SubSection(
              text:
                  'Tutorial:  1 hour/week. In tutorial class students will be taught to design a residential/office building and prepare complete working drawings with essential details.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text: 'WB Mckay, ELBS Publication "Building Construction"'),
          SubSection(
              text:
                  'Goyal, M. M.,"Handbook of Building Construction: The essential source of standard construction practices", 2004, Thomson Press'),
          SubSection(
              text:
                  'Chudey & Greeno, Butterworth & Heinemann, "Building Construction Handbook", 1998'),
          SubSection(text: 'Reid E.,"Understanding Buildings", , MIT press'),
          SubSection(
              text:
                  'Pahari, B., "Passive Building: Concept & Design", 2002, ISBN: 99933-34-24-3'),
          SubSection(text: 'Building code(NS, IS)'),
          SubSection(text: 'S.C.Rangawala, "Building Construction"'),
          SubSection(text: 'Ching, FDK, "Building construction Illustrated"')

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
