import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Engineeringchemistry extends StatelessWidget {
  final int initialTabIndex;
  Engineeringchemistry({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Chemistry',
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
        InsideButtons(text: 'Overview', icon: Icons.read_more, onTap: () {})

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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('5 or 10')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5 or 10')),
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
                      child: Center(child: Text('5 or 10')),
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
          SectionHeader(text: 'Electro-chemistry and Buffer(6 hours)'),
          SubSection(text: 'Electro-Chemical cells'),
          SubSection(
              text: 'Electrode Potential and Standard Electrode Potential'),
          SubSection(text: 'Measurement of Electrode Potential'),
          SubSection(text: 'Nernst equation'),
          SubSection(text: 'EMF of Cell'),
          SubSection(
              text: 'Application of Electrochemical and Electrolytic cells'),
          SubSection(text: 'Electrochemical Series and its Application'),
          SubSection(text: 'Buffer: Its type and mechanism'),
          SubSection(
              text:
                  'Henderson’s equation for pH of buffer and related problems'),
          SubSection(text: 'Corrosion and its type'),
          SubSection(text: 'Factors influencing Corrosion'),
          SubSection(text: 'Prevention of Corrosion'),

          SectionHeader(text: 'Catalyst(4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text:
                  'Action of Catalyst(Catalytic Promoters and Catalytic Poisons)'),
          SubSection(text: 'Characteristics of Catalyst'),
          SubSection(text: 'Types of Catalyst'),
          SubSection(text: 'Theories of Catalysis'),
          SubSection(text: 'Industrial Applications of Catalysts'),

          SectionHeader(text: 'Environmental Chemistry(5 hours)'),
          SubSection(text: 'Air Pollution'),
          SubSection(
              text:
                  'Air Pollutants i) Gases:SOx, NOx, CO, CO2, O3 and Hydrocarbons ii)Particulates dust, smoke and fly ash'),
          SubSection(
              text:
                  'Effects of Air Pollutants on human beings and their possible remedies'),
          SubSection(text: 'Ozone depletion and its Photochemistry'),
          SubSection(
              text: 'Water Pollution(Ref of Surface Water and Pond Water)'),
          SubSection(
              text:
                  'Water Pollutants(Ref of Surface Water), their adverse effect and remedies'),
          SubSection(text: 'Soil Pollution'),
          SubSection(
              text:
                  'Pollutants of Soil, their adverse effects and possible remedies'),

          SectionHeader(text: 'Engineering Polymers(6 hours)'),
          SubSection(text: 'Inorganic Polymers'),
          SubSection(text: 'General properties of Inorganic Polymers'),
          SubSection(text: 'Polyphosphazines'),
          SubSection(text: 'Sulpher Based Polymers'),
          SubSection(text: 'Chalcogenide Glasses'),
          SubSection(text: 'Silicones'),
          SubSection(text: 'Organic Polymers'),
          SubSection(text: 'Types of Organic Polymers'),
          SubSection(
              text:
                  'Preparation and application of i) Polyurethane ii) Polystyrene iii) Polyvinylchloride iv) Teflon v) Nylon 6,6 and vi) Bakelite vii) Epoxy Resin viii) Fiber Reinforced Polymer'),
          SubSection(
              text:
                  'Concept of Bio-Degradable, Non-Biodegradable and Conducting polymers'),

          SectionHeader(
              text: '3-d Transition elements and their applications(5 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Electronic Configuration'),
          SubSection(text: 'Variable Oxidation states'),
          SubSection(text: 'Complex formation tendency'),
          SubSection(text: 'Color formation'),
          SubSection(text: 'Magnetic properties'),
          SubSection(text: 'Alloy formation'),
          SubSection(text: 'Applications of 3-d transition elements'),

          SectionHeader(text: 'Coordination Complexes(5 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Terms used in Coordination Complexes'),
          SubSection(text: 'Werner’s Theory Coordination Complexes'),
          SubSection(
              text:
                  'Sidgwick’s Model and Sidgwick’s effective atomic number rule'),
          SubSection(
              text:
                  'Nomenclature of Coordination compounds(Neutral type, simple cation and complex anion and complex cation and simple anion type)'),
          SubSection(text: 'Valence Bond Theory of Complexes'),
          SubSection(
              text:
                  'Application of valence bond theory in the formation of i) Tetrahedral Complexes ii) Square planar Complexes and iii) Octahedral Complexes'),
          SubSection(text: 'Limitations of Valence Bond Theory'),
          SubSection(text: 'Applications of Coordination Complexes'),

          SectionHeader(text: 'Explosives(3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text: 'Types of explosives: Primary, Low and High explosives'),
          SubSection(
              text:
                  'Preparation and application of TNT, TNG, Nitrocellulose and Plastic explosives'),

          SectionHeader(text: 'Lubricants and Paints(2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Function of Lubricants'),
          SubSection(
              text: 'Classification of Lubricants(Oils, Greases and Solid)'),
          SubSection(text: 'Paints'),
          SubSection(text: 'Types of Paint'),
          SubSection(text: 'Application of Paints'),

          SectionHeader(text: 'Stereochemistry(4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(
              text:
                  'Geometrical Isomerism(Cis-Trans Isomerism), Z and E concept of Geometrical Isomerism'),
          SubSection(
              text:
                  'Optical Isomerism with reference to two asymmetrical carbon center molecules'),
          SubSection(
              text:
                  'Terms Optical activity, Enantiomers, Diastereomers, Meso structures, Racemic mixture and Resolution'),

          SectionHeader(
              text: 'Reaction Mechanism in Organic reactions(4 hours)'),
          SubSection(text: 'Substitution reaction'),
          SubSection(text: 'Types of substitution reaction SN1 and SN2'),
          SubSection(text: 'Elimination reaction'),
          SubSection(text: 'Types of elimination reaction E1 and E2'),
          SubSection(
              text:
                  'Factors governing SN1, SN2, E1 and E2 reaction mechanism path'),

          SectionHeader(text: 'References:'),
          SubSection(text: '"Engineering Chemistry",by Jain and Jain'),
          SubSection(
              text: '"A Text Book of Engineering Chemistry",by Shashi Chawala'),
          SubSection(text: '"A New Concise Inorganic Chemistry by",J.D. Lee'),
          SubSection(
              text: '"Principles of Physical Chemistry",by Marron and Prutton'),
          SubSection(
              text: '"Essential of Physical Chemistry",by Bahl and Tuli'),
          SubSection(
              text:
                  '"Advanced Inorganic Chemistry Vol 1 and 2",by Satya Prakash and Tuli'),
          SubSection(text: '"Organic chemistry",by Morrison and Boyd'),
          SubSection(
              text:
                  '"Selected Topics in Physical Chemistry",by Moti Kaji Sthapit'),
          SubSection(
              text:
                  '"Environmental Engineering",by Peavy, Rowe and Tchobanoglous'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Compare the alkalinity of different water samples by double indicator method(6 Periods)'),
          SubSection(
              text:
                  'Determine the temporary and permanent hardness of water by EDTA Complexo-metric method(3 Periods)'),
          SubSection(
              text:
                  'Determine residual and combined chlorine present in the chlorinated sample of water by Iodometric method(6 Periods)'),
          SubSection(
              text:
                  'Prepare organic polymer nylon 6,6; Bakelite in the laboratory(3 Periods)'),
          SubSection(
              text:
                  'Determine the pH of different sample of buffer solution by universal indicator method(6 Periods)'),
          SubSection(
              text: 'Prepare inorganic complex in the laboratory(3 Periods)'),
          SubSection(
              text:
                  'Determine surface tension of the given detergent solution and compare its cleansing power with other detergent solutions(6 Periods)'),
          SubSection(
              text:
                  'Construct an electrochemical cell in the laboratory and measure the electrode potential of it(3 Periods)'),
          SubSection(
              text:
                  'Estimate the amount of iron present in the supplied sample of ferrous salt using standard potassium permanganate solution(redox titration)(6 Periods)')
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
