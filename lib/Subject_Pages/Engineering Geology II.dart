import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringGeologyII extends StatelessWidget {
  final int initialTabIndex;
  EngineeringGeologyII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Geology II',
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
                      child: Center(child: Text('3')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('30')),
                    ),
                    TableCell(
                      child: Center(child: Text('40')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          //test
          //SizedBox(height: 20),
          SectionHeader(text: 'Introduction to Engineering Geology (3 hours)'),
          SubSection(
              text:
                  'Engineering geological system (EGS): Rock and soils, geological structures, geomorphology, hydrogeology, weathering, earthquake & seismicity and geotechnical category of the project, evaluation of engineering geological system (EGS) with reference to the different phases (planning, design, construction and maintenance) of the infrastructure development project'),
          SubSection(
              text:
                  'Important rock forming minerals and their engineering significance'),
          SubSection(
              text:
                  'Application of engineering geology in various civil engineering projects (roads, irrigation system, tunnels, dams & reservoirs etc.)'),
          SubSection(
              text:
                  'Engineering geological maps: Their classification and preparation'),

          SectionHeader(text: 'Engineering Geology in Himalayas (3 hours)'),
          SubSection(
              text:
                  'Major discontinuities system of the Nepal Himalaya and their engineering significance'),
          SubSection(
              text:
                  'Major engineering geological problems of the Terai, Siwaliks, Lesser Himalaya, and the Higher Himalaya, Tibetan –Tethys zone and their mitigation'),
          SubSection(
              text:
                  'Importance of the engineering geological information system in Nepalese context'),

          SectionHeader(text: 'Hydrogeology (2 hours)'),
          SubSection(text: 'River channel morphology'),
          SubSection(
              text:
                  'Origin, type and movement of groundwater, porosity, permeability and hydraulic transmissivity of different rocks and sediments'),
          SubSection(
              text:
                  'Geological factors for formation of different hydrological condition'),
          SubSection(
              text:
                  'Different types of aquifer system of Nepal (Terai, hills and mountains)'),

          SectionHeader(
              text:
                  'Engineering geology in site selection, investigation & construction/excavation (5 hours)'),
          SubSection(text: 'Introduction, types and methods'),
          SubSection(
              text: 'Geology in selection of the road and canal alignments'),
          SubSection(
              text:
                  'Geology in site investigation of  buildings, bridges, dams and reservoirs'),
          SubSection(
              text:
                  'Geology in the selection of the tunnel and other underground structures'),
          SubSection(
              text:
                  'Engineering geological documentation during tunneling and underground excavations'),

          SectionHeader(text: 'Geological Hazards (6 Hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text:
                  'Major geological Hazards: Flood, GLOF, erosion, mass movement and their Causes'),
          SubSection(text: 'Types of mass movements'),
          SubSection(text: 'Earthquake and seismicity'),
          SubSection(text: 'Structural control on geo-hazards'),
          SubSection(text: 'Geological hazard in soil mass and rock mass'),
          SubSection(
              text:
                  'Engineering evaluation of geological hazard and risks, problem specific hazards mapping and mitigation measures'),

          SectionHeader(
              text:
                  'Measurement, analysis and interpretation of structural geological data (8 hours)'),
          SubSection(
              text:
                  'Rock mass: Introduction, properties, classification systems'),
          SubSection(
              text:
                  'Measurement of the structural geological data from rock mass'),
          SubSection(text: 'Stereographic projection: Plotting a line & plane'),
          SubSection(
              text:
                  'Structural analysis; Principles, phases of the analysis, analysis of the structural geological data using stereo net, rose diagrams, block diagrams and histogram'),
          SubSection(
              text:
                  'Determination of the mean value of the major discontinuity sets'),
          SubSection(
              text:
                  'Interpretation of structural geological data for the specific engineering geological problems'),

          SectionHeader(text: 'Geology and Construction Materials (3 hours)'),
          SubSection(
              text:
                  'Aggregates and construction materials: clay, sand, limestone & marbles, slates & other building stones'),
          SubSection(text: 'Requirements for selecting borrow areas'),
          SubSection(
              text:
                  'Searching, exploration and reserve estimation for construction materials'),
          SubSection(
              text:
                  'Use of geological, engineering geological, and topographic maps and aerial photograph in searching of the construction materials'),
          SubSection(
              text:
                  'Application of geomorphology in searching of construction materials'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Eight practical exercises will be performed in this course, in addition to two days field works.'),
          SubSection(
              text:
                  'Study of engineering geological maps: Preparation, interpretation'),
          SubSection(text: 'Study of borehole problems'),
          SubSection(text: 'Study of thickness of bedrock'),
          SubSection(text: 'Study of construction material reserve estimate'),
          SubSection(
              text:
                  'Study of mineral distribution in sand using binocular microscope'),
          SubSection(
              text:
                  'Study and analysis of discontinuities data for failure mechanism: by stereographic  projection/using Stereo net'),
          SubSection(
              text:
                  'Study of weathering profiles and their effect on rock mass properties'),
          SubSection(
              text:
                  'Exercise on rock mass classification system and their uses'),

          SectionHeader(text: 'Field Work (Two days)'),
          SubSection(
              text:
                  'Any one of the Road / Highway Projects under construction or have severe geo-hazard Problem / Any one of the Hydropower Projects under construction (Attendance in Fieldwork is Compulsory)'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Jonson, R.B., Degraff, J.V, John Wiley and Sons Inc. “Principles of Engineering Geology”'),
          SubSection(text: 'Hoek “Rock Engineering”,E A.A. Balkema Publishers'),
          SubSection(
              text:
                  'Krynione, D.P. ,Judd, W.R “Principles of Engineering Geology and Geotechnics”  CBS Publishers and Distributers,New Delhi'),
          SubSection(
              text:
                  'BB. Deoja,  Meghraj  Dhital, A .  Wagner, K.B. Thapa “Mountain Risk Engineering  Handbooks” , ICIMOD'),
          SubSection(
              text:
                  'D.G. Todd “Ground Water Hydrology”, John Wiley and Sons Inc.'),
          SubSection(
              text:
                  'Prof. Ando “Engineering and Hydrogeology”, Central Department of Geology, T.U.'),
          SubSection(text: 'Nilsen,B “Rock Engineering”., Thidemann, NTNU'),
          SubSection(
              text:
                  'Dr. Bishal Nath Upreti and Dr. Meghraj Dhita “Landslide Studies and Management in Nepa”: l, ICIMOD')

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
