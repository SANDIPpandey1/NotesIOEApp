import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class IrrigationandDrainageEngineering extends StatelessWidget {
  final int initialTabIndex;
  IrrigationandDrainageEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Irrigation and Drainage Engineering',
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Introduction [4 hours]'),
          SubSection(
              text: 'Definition, advantages and disadvantages of irrigation'),
          SubSection(
              text: 'Status and need of irrigation development in Nepal'),
          SubSection(
              text:
                  'Crops, their seasons and periods (Cropping pattern & intensity)'),
          SubSection(text: 'Commanded areas and Irrigation intensity'),
          SubSection(text: 'Methods of field irrigation and their suitability'),
          SubSection(text: 'Planning of irrigation projects'),

          SectionHeader(text: 'Irrigation Water Requirements [4 hours]'),
          SubSection(text: 'Relation between Duty, Delta and crop periods'),
          SubSection(text: 'Crop Water Requirements (Penman’s method)'),
          SubSection(text: 'Operational water requirements'),
          SubSection(text: 'Water losses due to seepage and evaporation'),
          SubSection(text: 'Effective Rainfall'),
          SubSection(text: 'Irrigation Water Requirements'),
          SubSection(text: 'Soil-Moisture-Irrigation Relationship'),
          SubSection(text: 'Depth and Frequency of Irrigation'),
          SubSection(text: 'Irrigation efficiencies'),
          SubSection(text: 'Design discharges for canals'),

          SectionHeader(text: 'Canal Irrigation System [3 hours]'),
          SubSection(text: 'Classification of canals'),
          SubSection(text: 'Components of a canal irrigation system'),
          SubSection(text: 'Alignment of canals'),
          SubSection(text: 'Alluvial and Non-alluvial canals'),
          SubSection(text: 'Canal standards and Balancing canal depth'),
          SubSection(text: 'Canal distribution system'),

          SectionHeader(text: 'Design of Canals [6 hours]'),
          SubSection(text: 'Design capacity of canals'),
          SubSection(text: 'Sediment transport in canals'),
          SubSection(text: 'Tractive Force approach of canal design'),
          SubSection(text: 'Design of stable canals'),
          SubSection(
              text: 'Design of Alluvial canals (Kennedy’s & Lacey’s Theory)'),
          SubSection(text: 'Design of lined canals with economic analysis'),

          SectionHeader(text: 'Diversion Headworks [8 hours]'),
          SubSection(text: 'Component parts of Weir/Barrage (Detail drawing)'),
          SubSection(text: 'Bligh’s, Lane’s and Khosla’s seepage theory'),
          SubSection(
              text:
                  'Design of sloping glacies weir bay (crest, length & thickness of impervious floor)'),
          SubSection(text: 'Design of Undersluice and Silt excluder'),
          SubSection(text: 'Design of Silt ejector'),
          SubSection(
              text:
                  'Design of Head Regulator (Crest, length & thickness of impervious floor)'),

          SectionHeader(text: 'River Training Works [4 hours]'),
          SubSection(text: 'River stages and Need of river training'),
          SubSection(text: 'Types of river training works'),
          SubSection(text: 'Design of Guide bunds and Launching apron'),
          SubSection(
              text:
                  'Design of Spurs (Layout geometry, length, spacing and cross-section)'),

          SectionHeader(text: 'Regulating Structures [6 hours]'),
          SubSection(text: 'Alignment of the off-taking channels'),
          SubSection(
              text:
                  'Function of Head regulator, Cross regulator, Outlet, Drop and Escapes'),
          SubSection(
              text:
                  'Design of Regulators & Escapes (Crest, length and thickness of impervious floor)'),
          SubSection(
              text:
                  'Types of Outlet, Design of pipe outlet (free and submerged)'),
          SubSection(
              text:
                  'Types of Drop, Design of Vertical drop (Crest, length and thickness of impervious floor)'),

          SectionHeader(text: 'Cross-Drainage structures [4 hours]'),
          SubSection(text: 'Types (Drawing and Selection)'),
          SubSection(
              text:
                  'Design of Siphon Aqueduct (Detail drawing, Drainage waterway & barrel, Canal waterway & Transition, Length & thickness of impervious floor and Protection works)'),

          SectionHeader(text: 'Water Logging and Drainage [6 hours]'),
          SubSection(
              text: 'Causes, effects and preventive measures of water logging'),
          SubSection(text: 'Water logging and drainage of irrigated land'),
          SubSection(text: 'Surface drainage systems and their design'),
          SubSection(text: 'Layout planning for Drainage'),
          SubSection(text: 'Internal drainage of Bunded fields'),
          SubSection(text: 'External drainage'),
          SubSection(
              text:
                  'Drain design (water level, maximum & minimum slopes and cross-sections)'),
          SubSection(text: 'Remodeling of existing natural drains'),
          SubSection(text: 'Subsurface drainage systems and their design'),
          SubSection(text: 'Layout of subsurface drainage system'),
          SubSection(
              text:
                  'Flow of ground water to drains and spacing of tile drains'),

          SectionHeader(text: 'Tutorials: [30 hours]'),
          SubSection(text: 'Duty, Delta and Period Relation (1 hour)'),
          SubSection(text: 'Irrigation Water Requirements (2 hours)'),
          SubSection(
              text:
                  'Soil-Moisture-Irrigation Relation and Irrigation Interval (2 hours)'),
          SubSection(text: 'Balancing depth for excavating canals (1 hour)'),
          SubSection(text: 'Design of stable canals (1 hour)'),
          SubSection(text: 'Design of Alluvial canals (2 hours)'),
          SubSection(text: 'Design of lined canals (1 hour)'),
          SubSection(
              text: 'Design of Guide Bunds and Launching Apron (2 hours)'),
          SubSection(
              text:
                  'Design of hydraulic structures using Khosla’s Seepage Theory (4 hours)'),
          SubSection(text: 'Design of sloping glacies Weir bay (2 hours)'),
          SubSection(text: 'Design of Cross & Head Regulators (3 hours)'),
          SubSection(text: 'Design of pipe outlet (1 hour)'),
          SubSection(text: 'Design of Vertical Drop (2 hours)'),
          SubSection(text: 'Design of Siphon Aqueduct (4 hours)'),
          SubSection(
              text: 'Design of surface and sub-surface drains (2 hours)'),

          SectionHeader(text: 'Assignments & Field Visit:'),
          SubSection(
              text:
                  'Individual assignment on Irrigation Water Requirement using CROPWAT Software'),
          SubSection(
              text:
                  'Field visit of an Irrigation System, group presentation and submission of individual report'),

          SectionHeader(text: 'Reference books:'),
          SubSection(
              text:
                  '“Theory and design of irrigation structures”, volume I and II, R S Varshney, S C Gupta and R L Gupta, Nem Chand and Bros., Roorkee, 1979'),
          SubSection(
              text:
                  'Irrigation Engineering and Hydraulic Structures, S K Garg, Delhi, 1983'),
          SubSection(text: 'Irrigation Engineering, Gurcharan Singh'),
          SubSection(
              text:
                  'Design Manuals for Irrigation projects in Nepal, PDSP Manuals, M.9 Drainage Manual, 1990'),
          SubSection(
              text: 'Hydraulic Structures, P. Novak et.al., SPON PRESS, 2001')

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
