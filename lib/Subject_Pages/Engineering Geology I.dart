import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringGeologyI extends StatelessWidget {
  final int initialTabIndex;
  EngineeringGeologyI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Geology I',
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('2')),
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
          SectionHeader(text: 'Geology and Civil Engineering (2 hours)'),
          SubSection(
              text:
                  'Geology and different branches of science: Introduction and their interrelationships, geology, geography, geophysics, geochemistry, geodetic, climatology, and meteorology, oceanography and astronomical aspects of the earth- moon system.'),
          SubSection(
              text: 'Different branches of geology and their interrelations'),
          SubSection(
              text:
                  'Scope, objective and importance of geology in civil engineering'),
          SubSection(
              text:
                  'Definition of engineering geology (according to IAEG), role and tasks of an engineering geologist, scope, objectives and its importance in the context of Nepal'),

          SectionHeader(text: 'Basic Reviews of the Earth (3 hours)'),
          SubSection(text: 'The Earth: its origin, age, components, structure'),
          SubSection(
              text:
                  'Introduction to history of the Earth: Geological time scale, origin and evolution of life'),
          SubSection(
              text:
                  'Physical features of the earth surface: Continental & oceanic features, mountains, plateau and shields'),
          SubSection(text: 'Internal structure of the Earth'),
          SubSection(
              text:
                  'Plate tectonics and mountain building process and formation of the Himalayas'),

          SectionHeader(text: 'Crystallography & Mineralogy (4 hours)'),
          SubSection(
              text:
                  'Introduction and crystal morphology, symmetry elements, crystal form & habits and crystal system'),
          SubSection(
              text: 'Physical, chemical and optical properties of minerals'),
          SubSection(
              text:
                  'Classification and identification of common rock forming minerals'),

          SectionHeader(text: 'Petrology (6 hours)'),
          SubSection(
              text: 'Introduction: Petrology, petrography and petrogenesis'),
          SubSection(text: 'Rock and rock cycle: Introduction'),
          SubSection(text: 'Classification, structure, textures of rocks'),
          SubSection(text: 'Engineering Significance of three rock classes'),
          SubSection(
              text:
                  'Macroscopic study of rocks on the basis of physical and engineering properties of following common rock types found in earth crust: Granite, Ryhyollite, Gabbro, Basalt, Pegmatite, Syenite Shale, Siltstone, limestone, Sandstone, Conglomerate, Breccia, slate, Phyllite, Schist, Gneiss, Quartzite, Marble'),

          SectionHeader(text: 'Structural Geology (5 hours)'),
          SubSection(text: 'Rock deformations and reasons'),
          SubSection(
              text:
                  'Attitude of geological structures: Dip, strike, trend, plunge'),
          SubSection(
              text:
                  'Measurement of orientation of geological strata using geological maps, geological compass and plotting of data on map.'),
          SubSection(
              text:
                  'Geological structures: Primary sedimentary structures (bedding plane, lamination, cross bedding, graded bedding ripple marks, mud cracks etc.)'),
          SubSection(
              text:
                  'Secondary (deformation) structures: Continuous (lineation, foliation, boudinage, crenulation cleavage, folds) and discontinuous (cracks fractures, joints, faults & thrusts)'),
          SubSection(
              text: 'Field identification criteria of geological structures'),
          SubSection(text: 'Engineering significance of geological structures'),

          SectionHeader(text: 'Physical Geology (8 hours)'),
          SubSection(
              text: 'Introduction: Definition, different geological agents'),
          SubSection(
              text: 'Geomorphological processes: Weathering and erosion'),
          SubSection(text: 'Geological cycle'),
          SubSection(
              text:
                  'Geological agents: Running water, glaciers, groundwater, wind and sea water, and various landforms produced by the geomorphological agents'),
          SubSection(text: 'Volcanism'),

          SectionHeader(text: 'Geology of Nepal (2 hours)'),
          SubSection(
              text:
                  'Introduction to the physiography and tectonic division of the Nepal Himalaya'),
          SubSection(text: 'Geology of the Terai Zone'),
          SubSection(text: 'Geology of the Siwalik Zone'),
          SubSection(text: 'Geology of the Lesser Himalaya Zone'),
          SubSection(text: 'Geology of the Higher Himalaya Zone'),
          SubSection(text: 'Geology of the Tethys Himalaya Zone'),
          SubSection(
              text:
                  'Study of Geological Units: Complex, group, formation, member'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Identification of common rock forming minerals: Quartz, Plagioclase, Orthoclase, Muccovite, Biotite, Chlorite, Calcite, Dolomite, Mangnesite, Pyroxene, Tourmaline, Pyrite, Gypsum, Talc, Fluorite,Apatite,Topaz,Corundum,Diamond,Kyanite,Silliminite,Garnet and clay minerals'),
          SubSection(
              text:
                  'Identification of rocks:Granite, Ryhyollite, Gabbro, Basalt, Pegmatite, SyeniteShale, Siltstone, Limestone, Sandstone, Conglomerate, Breccia, Slate, Phyllite, Schist, Gneiss, Quartzite, Marble'),
          SubSection(text: 'Study of geological structures in block diagrams'),
          SubSection(
              text:
                  'Study of Maps: Topographic and geological maps, construction of geological cross-sections and their interpretations'),
          SubSection(
              text:
                  'Fieldwork (2 Days): Demonstration of the use of Geological Compass for the dip/ strike and trend/ plunge measurement, Identification of rocks, study of geological structures in field (Attendance in fieldwork is compulsory)'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'A. Holmes “Principles of Physical Geology”, ELBS English Language Society'),
          SubSection(
              text:
                  'M.P. Billings “Principles of Structural Geology”, Prentice Hall of India, New Delhi'),
          SubSection(
              text:
                  'Dr. C.K. Sharma “Geology of Nepal”, Educational Enterprises'),
          SubSection(text: 'P.C. Ghimire and M.S. Dhar “Engineering Geology”'),
          SubSection(
              text:
                  'Dr. R.K. Dahal “Geology for Technical Students”, Bhirkuti Publications'),
          SubSection(
              text:
                  'Blyth, F.G.H. , Freitas, ”M.H.Geology For Engineers”, ELBS')

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
