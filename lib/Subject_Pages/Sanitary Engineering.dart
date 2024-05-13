import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SanitaryEngineering extends StatelessWidget {
  final int initialTabIndex;
  SanitaryEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sanitary Engineering',
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('24')),
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
                      child: Center(child: Text('3')),
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
          SectionHeader(text: 'Introduction (2 hours)'),
          SubSection(
              text:
                  'Definitions of common terms - Sewage/Wastewater, Domestic sewage, Industrial sewage, Sanitary sewage, Storm water, Sullage, Sewer, Sewerage, Rubbish, Garbage, Refuse/Solid waste'),
          SubSection(
              text: 'Importance of Wastewater and Solid Waste Managements'),
          SubSection(
              text:
                  'Wastewater and Solid waste management methods - Collection, Conveyance, Treatment and Disposal'),
          SubSection(text: 'Objectives of sewage disposal'),
          SubSection(text: 'Sanitation systems'),
          SubSection(text: 'Conservancy system with merits and demerits'),
          SubSection(text: 'Water carriage system with merits and demerits'),
          SubSection(text: 'Sewerage systems and types'),
          SubSection(text: 'Separate system'),
          SubSection(text: 'Combined system'),
          SubSection(text: 'Partially separate system'),
          SubSection(text: 'Comparison between separate and combined systems'),

          SectionHeader(text: 'Quantity of Wastewater (4 hours)'),
          SubSection(text: 'Dry Weather Flow (DWF) and Wet Weather Flow (WWF)'),
          SubSection(text: 'Sources of sanitary sewage'),
          SubSection(text: 'Private and public water supplies'),
          SubSection(text: 'Groundwater infiltration'),
          SubSection(text: 'Unauthorized connections'),
          SubSection(text: 'Factors affecting quantity of sanitary sewage'),
          SubSection(text: 'Population'),
          SubSection(text: 'Rate of water supply'),
          SubSection(
              text:
                  'Determination of quantity of sanitary sewage, peak factor, peak flow'),
          SubSection(text: 'Determination of quantity of storm water'),
          SubSection(text: 'Rational method and its limitation'),
          SubSection(text: 'Overall runoff coefficient'),
          SubSection(
              text:
                  'British ministry of Health formula for intensity of rainfall'),
          SubSection(text: 'Time of concentration'),
          SubSection(
              text:
                  'Numericals on determination of quantity of wastwater for separate, combined and partially separate systems'),

          SectionHeader(text: 'Design and Construction of Sewers (4 hours)'),
          SubSection(text: 'Design criteria of sewers'),
          SubSection(text: 'Specific gravity of wastewater'),
          SubSection(text: 'Design period'),
          SubSection(
              text: 'Minimum and Maximum velocities, Self cleaning velocity'),
          SubSection(text: 'Sewer size range'),
          SubSection(text: 'Sewer gradient'),
          SubSection(
              text:
                  'Hydraulic formulae for design - Manning\'s, Chezy\'s and Hazen Williams formulae'),
          SubSection(
              text: 'Hydraulic elements of sewers for partial flow condition'),
          SubSection(text: 'Partial flow diagrams'),
          SubSection(
              text:
                  'Shapes of sewers - Circular and non-circular sections with merits and demerits'),
          SubSection(text: 'Sewer Materials'),
          SubSection(text: 'Requirements of sewer materials'),
          SubSection(
              text:
                  'Types of sewer materials - salt glazed stoneware, cement concrete, cast iron'),
          SubSection(text: 'Design of sewers of separate and combined systems'),
          SubSection(text: 'Numericals on design of sewers'),
          SubSection(text: 'Construction of sewers'),
          SubSection(text: 'Setting out'),
          SubSection(text: 'Alignment and gradient'),
          SubSection(text: 'Excavation of trench'),
          SubSection(text: 'Timbering of trench'),
          SubSection(text: 'Dewatering of trench'),
          SubSection(text: 'Laying and jointing'),
          SubSection(
              text:
                  'Testing of sewer - Straightness, Obstruction, Water and Air tests'),
          SubSection(text: 'Backfilling of trench'),

          SectionHeader(text: 'Sewer Appurtenances (3 hours)'),
          SubSection(text: 'Necessity of sewer appurtenances'),
          SubSection(text: 'Construction of sewer appurtenances'),
          SubSection(text: 'Manhole'),
          SubSection(text: 'Drop manhole'),
          SubSection(text: 'Lamphole'),
          SubSection(text: 'Street inlets'),
          SubSection(text: 'Catch basin'),
          SubSection(text: 'Flushing device'),
          SubSection(text: 'Sand, grease and oil traps'),
          SubSection(text: 'Inverted siphon'),
          SubSection(text: 'Sewer outlet'),
          SubSection(text: 'Ventilating shaft'),

          SectionHeader(
              text: 'Characteristics and Examination of Wastewater (5 hours)'),
          SubSection(text: 'Characteristics of wastewater'),
          SubSection(
              text:
                  'Physical characteristics - colour, odour, temperature and turbidity'),
          SubSection(
              text:
                  'Chemical characteristics - pH, organic and inorganic solids, nitrogenous compounds'),
          SubSection(text: 'Biological characteristics – bacteria'),
          SubSection(text: 'Sampling of wastewater'),
          SubSection(text: 'Grab and composite samples'),
          SubSection(text: 'Preservation and storing'),
          SubSection(
              text:
                  'Decomposition of wastewater-process, Aerobic and anaerobic decomposition, Stale sewage'),
          SubSection(text: 'Biochemical Oxygen Demand (BOD)'),
          SubSection(text: 'Definition of BOD and its significance'),
          SubSection(text: 'Derivation of BOD equation'),
          SubSection(
              text:
                  'Rate reaction, ultimate BOD and relation with temperature'),
          SubSection(text: 'Numericals on BOD'),
          SubSection(
              text:
                  'Chemical oxygen Demand (COD) - Definition and significance'),
          SubSection(text: 'Examination of wastewater'),
          SubSection(text: 'Necessity of wastewater examination'),
          SubSection(
              text:
                  'Examination of volatile, fixed and total solids, settleable and non-settleable solids, BOD with and without dilution, COD'),
          SubSection(text: 'Numericals on BOD test'),

          SectionHeader(text: 'Wastewater Disposal (6 hours)'),
          SubSection(text: 'Necessity and objectives of wastewater disposal'),
          SubSection(
              text:
                  'Wastewater disposal methods - Dilution and Land treatment'),
          SubSection(
              text:
                  'Wastewater disposal by Dilution process and essential conditions for dilution'),
          SubSection(text: 'Self purification of rivers/streams'),
          SubSection(
              text:
                  'Factors affecting self purification - Dilution, Current, Sunlight, Sedimentation, Temperature, Oxidation, Reduction'),
          SubSection(text: 'Oxygen sag curve'),
          SubSection(
              text: 'Streeter Phelp\'s equation (Derivation not required)'),
          SubSection(text: 'Numerical on self purification of rivers/streams'),
          SubSection(text: 'Wastewater disposal by land treatment'),
          SubSection(text: 'Suitability of land treatment'),
          SubSection(
              text:
                  'Methods of land treatment - irrigation, overland flow and rapid infiltration'),
          SubSection(text: 'Broad irrigation and sewage farming'),
          SubSection(
              text:
                  'Methods of application of sewage on land - flooding, surface irrigation, ridge and furrow method, subsurface irrigation and spray irrigation'),
          SubSection(text: 'Sewage sickness and its prevention'),

          SectionHeader(text: 'Wastewater Treatment (12 hours)'),
          SubSection(text: 'Objectives of wastewater treatment'),
          SubSection(text: 'Treatment process types and impurity removal'),
          SubSection(text: 'Primary treatment process'),
          SubSection(
              text:
                  'Racks and Screens - purpose and types (Bar, Coarse and Fine screens)'),
          SubSection(text: 'Skimming tank - purpose and construction'),
          SubSection(
              text: 'Grit chamber - purpose, construction and design criteria'),
          SubSection(
              text: 'Sedimentation - purpose, types and design criteria'),
          SubSection(
              text:
                  'Chemical precipitation - purpose, mixing and flocculation (introduction only)'),
          SubSection(
              text:
                  'Numericals on design of Grit chamber and Sedimentation tank'),
          SubSection(text: 'Biological (Secondary) treatment process'),
          SubSection(text: 'Objectives of biological treatment process'),
          SubSection(
              text:
                  'Principles of biological treatment process - Attached and Suspended growth processes'),
          SubSection(text: 'Types of biological treatment process'),
          SubSection(text: 'Sewage filtration'),
          SubSection(text: 'Filter types'),
          SubSection(
              text:
                  'Intermittent sand filter - purpose, construction, working and cleaning with merits and demerits'),
          SubSection(
              text:
                  'Contact bed - purpose, construction, working and cleaning with merits and demerits'),
          SubSection(
              text:
                  'Trickling filter - purpose, construction, working and cleaning with merits and demerits, types (high rate and standard rate), recirculation, two stage filters, design criteria'),
          SubSection(text: 'Numericals on design of trickling filters'),
          SubSection(text: 'Activated sludge process'),
          SubSection(text: 'Principles of activated sludge process'),
          SubSection(text: 'Construction and process description'),
          SubSection(text: 'Aeration methods'),
          SubSection(text: 'Design criteria'),
          SubSection(text: 'Advantages and disadvantages'),
          SubSection(text: 'Sludge volume index'),
          SubSection(text: 'Numericals on activated sludge process'),
          SubSection(text: 'Oxidation ponds'),
          SubSection(text: 'Purpose of oxidation ponds'),
          SubSection(text: 'Theory of oxidation ponds'),
          SubSection(text: 'Construction of oxidation ponds'),
          SubSection(text: 'Commissioning'),
          SubSection(text: 'Operation and maintenance'),
          SubSection(text: 'Design criteria'),
          SubSection(text: 'Advantages and disadvantages'),
          SubSection(text: 'Numericals on oxidation ponds'),
          SubSection(text: 'Sludge Treatment and Disposal (4 hours)'),
          SubSection(text: 'Sources of sludge'),
          SubSection(text: 'Necessity of sludge treatment'),
          SubSection(text: 'Characteristics of sludge'),
          SubSection(
              text:
                  'Determination of sludge volume, volume - moisture relation'),
          SubSection(text: 'Sludge treatment methods'),
          SubSection(text: 'Grinding and blending'),
          SubSection(
              text:
                  'Thickening - Gravity thickener, purpose, construction and loading criteria'),
          SubSection(
              text:
                  'Digestion - Aerobic and anaerobic digestion, digestion process, control of digestion, construction and design criteria of digester'),
          SubSection(
              text:
                  'Dewatering - Vacuum filtration (purpose and construction)'),
          SubSection(
              text: 'Drying - Sludge drying beds (purpose and construction)'),
          SubSection(
              text:
                  'Composting - purpose, principles, types (windrow and mechanical)'),
          SubSection(text: 'Incineration - purpose and construction'),
          SubSection(
              text:
                  'Numericals on sludge volume determination and design of digester'),
          SubSection(text: 'Sludge disposal methods'),
          SubSection(text: 'Dumping'),
          SubSection(text: 'Land filling'),
          SubSection(text: 'Lagooning'),
          SubSection(text: 'Spreading on land'),

          SectionHeader(
              text: 'Disposal of Sewage from Isolated Buildings (3 hours)'),
          SubSection(text: 'Necessity'),
          SubSection(text: 'On site sanitation - Definition and types'),
          SubSection(text: 'Pit privy - purpose and construction'),
          SubSection(
              text:
                  'Ventilated Improved Pit (VIP) latrine - purpose, construction, design criteria, types (single pit, double pits and multiple pits), advantages and disadvantages'),
          SubSection(
              text:
                  'Pour flush latrine - purpose, construction and design criteria'),
          SubSection(
              text:
                  'Septic tank - purpose, construction, design criteria, working and maintenance'),
          SubSection(text: 'Septic tank effluent disposal methods'),
          SubSection(
              text: 'Drain field - purpose, construction and design criteria'),
          SubSection(
              text: 'Soak pit - purpose, construction and design criteria'),
          SubSection(
              text: 'Evapotranspiration mound - purpose and construction'),
          SubSection(text: 'Leaching cesspool - purpose and construction'),
          SubSection(
              text:
                  'Numericals on design of VIP latrine, Pour flush latrine, Septic tank, Drain field and Soak pit'),

          SectionHeader(text: 'Solid Waste Disposal (2 hours)'),
          SubSection(text: 'Characteristic of solid waste'),
          SubSection(text: 'Quantity of solid waste'),
          SubSection(text: 'Collection and transportation of solid waste'),
          SubSection(text: 'Solid waste disposal methods'),
          SubSection(text: 'Dumping'),
          SubSection(text: 'Sanitary landfill'),
          SubSection(text: 'Incineration'),
          SubSection(text: 'Composting'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'B. C. Punmia and Ashok Jain, "Wastewater Engineering", Laxmi Publications (P) Ltd., New Delhi, 1998'),
          SubSection(
              text:
                  'P.N. Modi, "Sewage Treatment & Disposal and Wastewater Engineering", Standard Book House, Delhi, 2001'),
          SubSection(
              text:
                  'G.S. Birdie and J,S, Birdie, "Water Supply and Sanitary Engineering", Dhanpat Rai Publishing Company (P) Ltd., New Delhi, 2002'),
          SubSection(
              text:
                  'K.N. Duggal, "Elements of Environmental Engineering", S. Chand and Company Ltd., New Delhi, 1997')

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
