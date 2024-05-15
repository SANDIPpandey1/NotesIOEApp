import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class HydropowerEngineering extends StatelessWidget {
  final int initialTabIndex;
  HydropowerEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hydropower Engineering',
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
                      child: Center(child: Text('1, 2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4, 6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('18')),
                    ),
                    TableCell(
                      child: Center(child: Text('24')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7, 8')),
                    ),
                    TableCell(
                      child: Center(child: Text('6, 2')),
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
          SectionHeader(text: 'Introduction [4 hours]'),
          SubSection(
              text: 'Historical Background of Power development in Nepal'),
          SubSection(
              text:
                  'Power Potential in Nepal and World, Gross, technical and economic potentials'),
          SubSection(text: 'Hydropower Development Policy of Nepal'),

          SectionHeader(text: 'Planning of Hydropower Projects [6 hours]'),
          SubSection(
              text:
                  'Types of Hydropower plants based on head, storage capacity and layout'),
          SubSection(
              text:
                  'Stages of hydropower development: Reconnaissance, Pre-feasibility, Feasibility studies and detailed Engineering design'),
          SubSection(
              text:
                  'Layout of run-of-river and storage hydropower Projects, Components of Run-of River, Peaking Run-of River and Storage type projects.'),

          SectionHeader(text: 'Power and Energy Potential study [6 hours]'),
          SubSection(
              text:
                  'Processing of hydrological data, Use of extreme and long term hydrological data, mass and elevation volume curves, flow duration curves'),
          SubSection(text: 'Gross and net head and estimation'),
          SubSection(
              text:
                  'Reservoirs and their regulation, need for flow regulation, Source of sediment, sediment yield in Rivers, sediment handing in reservoirs, life of the reservoirs'),
          SubSection(
              text:
                  'Methods of fixing installed capacity of a hydropower plant'),
          SubSection(text: 'Estimation of Power and energy potential'),
          SubSection(
              text:
                  'Mean and peak load, load curve, load factor, utilization and diversity factors'),

          SectionHeader(text: 'Headworks of Storage Plants [18 hours]'),
          SubSection(
              text:
                  'General Arrangement of components in a typical storage power plant: Spillways, bottom outlets or undersluices, intakes with examples.'),
          SubSection(text: 'Dam Engineering'),
          SubSection(
              text: 'Classification based on materials, function and head'),
          SubSection(
              text: 'Principal variants of concrete and embankment dams'),
          SubSection(text: 'Dam site evaluation and selection of type of dam'),
          SubSection(text: 'Loads on dams and their combinations'),
          SubSection(
              text:
                  'Failure modes of concrete and embankment dams and their remedies'),
          SubSection(
              text:
                  'Gravity (concrete) dam analysis, stability (overturning, sliding), stress and material failure'),
          SubSection(
              text:
                  'Seepage Control and foundation treatment in Dams : Types of grouting and drainage and their necessity, Embankment Dam Analysis-phreatic line and seepage analysis.'),
          SubSection(text: 'Intakes'),
          SubSection(
              text:
                  'General arrangement of Intakes for storage plants, Location, Hydraulics of intake'),
          SubSection(text: 'Spillways and Energy Dissipaters'),
          SubSection(
              text:
                  'Purpose of spillways, general arrangement, types, and hydraulics (sizing) of spillways, Cavitation in spillways, preventive measures'),
          SubSection(
              text:
                  'Methods of dissipating energy below a dam, stilling basin, ski-jump and flip buckets, their suitability, hydraulics of stilling basin, the role of tail-water in energy dissipation'),
          SubSection(text: 'Types of gates and their location.'),

          SectionHeader(
              text: 'Headworks of Run-of-River (RoR) Plants [10 hours]'),
          SubSection(
              text:
                  'General Arrangement of components of a typical RoR plant: Spillways, undersluices, intakes with examples'),
          SubSection(
              text: 'General requirements of a functional RoR headworks'),
          SubSection(
              text:
                  'Intakes of RoR headworks: Location, Non pressure and pressurized intakes, General arrangement of intake, Control of bed load and floating debris in RoR intakes'),
          SubSection(
              text:
                  'Sediment Handling measures: Methods of bed load and suspended load handling in RoR headworks, Design of settling basin (Particle and concentration approach), Estimation of sediment volume in Settling basin, Flushing of deposited sediment, estimation of frequency of flushing'),

          SectionHeader(text: 'Water Conveyance Structures [8 hours]'),
          SubSection(
              text:
                  'Hydraulic Tunnels, Geometrical shapes, hydraulic design (velocities, sizing), tunneling method, supports in tunnels, lining of tunnels'),
          SubSection(
              text:
                  'Forebay and Surge Tanks: importance, general arrangement, condition of their application, hydraulic design'),
          SubSection(
              text:
                  'Penstocks and Pressure shaft: importance, conditions of their application, general arrangement, hydraulic transients (water hammer), Computation of hydrodynamic pressure, sizing of penstock /pressure shaft and estimation of thickness of steel in penstock/pressure shaft'),

          SectionHeader(text: 'Hydro-electric Machines [6 hours]'),
          SubSection(text: 'Hydro-mechanical Equipment'),
          SubSection(text: 'Hydro-mechanical installation in powerhouse'),
          SubSection(
              text:
                  'Type of turbines, Pelton, Francis, Kaplan and Bulb turbines and their performance characteristics'),
          SubSection(
              text:
                  'Selection of turbines and their specific speed, Turbine setting'),
          SubSection(text: 'Preliminary design of francis and pelton turbines'),
          SubSection(text: 'Scroll case and draft tubes, their importance'),
          SubSection(text: 'Electro-mechanical installation'),
          SubSection(text: 'Generators and their types, Rating of generators'),
          SubSection(text: 'Purpose and working principle of Governors'),
          SubSection(text: 'Pumps'),
          SubSection(
              text:
                  'Introduction to Centrifugal and reciprocating pumps, their performance characteristics'),

          SectionHeader(text: 'Powerhouse [2 hours]'),
          SubSection(
              text:
                  'Powerhouse types, general arrangement, dimension of powerhouse'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(
              text:
                  'Chapter 2: (3 hours): Preparation of alternative layouts of ROR plant on a given topographical map and assessing the most favorable'),
          SubSection(
              text:
                  'Chapter 3: (3 hours): For the given plan and Profile (ACAD drawing or a hard copy drawing), estimation of power and energy based on the given flow and topographical data'),
          SubSection(
              text:
                  'Chapter 4: (8 hours): Gravity dam analysis, Stability analysis of Earth dams: Seepage Analysis in Earthen dams Design of intake of a storage hydropower plant with neat sketch: Hydraulic Design of Spillways and stilling basin with neat sketch'),
          SubSection(
              text:
                  'Chapter 5: (4 hours): Preparation of general arrangement of a headworks of a RoR Project: Design of intake of a hydropower plant with neat sketch: Design of settling basin of a hydropower plant with neat sketch'),
          SubSection(
              text:
                  'Chapter 6: (6 hours): Hydraulic Design of Forebay and preparation of plan and longitudinal sections: Hydraulic Design of Surge Tank and preparation of plan and vertical sections: Estimation of hydrodynamic pressure and steel thickness of penstock'),
          SubSection(
              text:
                  'Chapter 7: (4 hours): Selection of turbines based on head and discharge characteristics: Preliminary dimensioning of turbines and accessories, spiral case, draft tubes and preparation of neat sketch'),
          SubSection(
              text:
                  'Chapter 8: (2 hours): Computation of power house dimension based on hydro-mechanical equipment designed in Ch. 7: Arrangement of equipment and accessories with neat sketch (plan and section)'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Performance characteristics of a Pelton Turbine'),
          SubSection(text: 'Performance characteristics of a Francis Turbine'),
          SubSection(
              text:
                  'Working principle of centrifugal pump and its characteristics'),
          SubSection(
              text:
                  'Working principle of reciprocating pump and its characteristics'),

          SectionHeader(text: 'Excursion:'),
          SubSection(
              text:
                  'One day observation trip to a hydropower plant in the vicinity followed by a brief report.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Water Power Engineering, Dandekar and Sharma, Vikas Publishin house, New Delhi'),
          SubSection(
              text:
                  'Hydraulic Structures, Novak, P. et al., Taylor and Francis, London'),
          SubSection(
              text:
                  'Water Power Development, Volume 1: Low-head Hydropower Plants, Mosonyi, E., Academia Kiado, Budapest'),
          SubSection(
              text:
                  'Water Power Development, Volume 2: High-head Hydropower Plants, Mosonyi, E., Academia Kiado, Budapest'),
          SubSection(
              text:
                  'Hydropower Engineering, Warnick CC et al., Prentice Hall, Inc, Englewood Cliffs, NJ'),
          SubSection(
              text:
                  'Irrigation Engineering and Hydraulic Structures, Garg ,SK, Khanna Publishers, New Delhi'),
          SubSection(
              text:
                  'Hydropower Development- Series (17 Volumes), Vol. 8, 9, 10, 12,13, 14, Norwegian Universty of Science and Technology (NTNU), Norway')

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
