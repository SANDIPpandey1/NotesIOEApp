import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class IndustrialPowerDistributionandIllumination extends StatelessWidget {
  final int initialTabIndex;
  IndustrialPowerDistributionandIllumination({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Industrial Power Distribution and Illumination',
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Introduction (6 hours)'),
          SubSection(text: 'Electric Load Estimate'),
          SubSection(text: 'Load Centre'),
          SubSection(text: 'Supply System for Industrial Plant'),
          SubSection(text: 'Classification of Electrical Installation'),
          SubSection(text: 'Reading and Interpretation of Building Drawing'),
          SubSection(
              text:
                  'Electrical Rules related to Electrical Installation & Testing'),

          SectionHeader(text: 'Earthing (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'System & Equipment Earthing'),
          SubSection(text: 'Point to be Earthed'),
          SubSection(text: 'Factors Influencing the earth resistance'),
          SubSection(text: 'Method of reducing earth resistance'),
          SubSection(text: 'Methods of Earthing'),
          SubSection(text: 'Lightning Protection Earthing'),

          SectionHeader(text: 'Power Carrying Devices (6 hours)'),
          SubSection(text: 'Cables'),
          SubSection(text: 'Cable Construction'),
          SubSection(text: 'Types of cables'),
          SubSection(text: 'Cable Ratings: voltage rating & Conductor size'),
          SubSection(text: 'Installation of cable'),
          SubSection(text: 'Locating cable faults'),
          SubSection(text: 'Connectors and Terminations'),
          SubSection(text: 'Types of connectors and Applications'),
          SubSection(text: 'Types of terminations and Methods'),
          SubSection(text: 'Splicing Devices and Techniques'),
          SubSection(text: 'Bus-way'),
          SubSection(text: 'Bus-way Construction and Standards'),
          SubSection(text: 'Types of Bus-way'),
          SubSection(text: 'Applications'),
          SubSection(text: 'Installation'),

          SectionHeader(
              text: 'Distribution Substation of Industrial Plant (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Classification'),
          SubSection(text: 'Indoor Substations'),
          SubSection(text: 'Out-door Substations'),
          SubSection(text: 'Selection and Location of site'),
          SubSection(text: 'Schematic Diagram of Distribution Substation'),
          SubSection(
              text:
                  'Equipment and Measuring Accessories for Substations and Switch gear Installation'),

          SectionHeader(
              text: 'Electrification of Industrial Building (5 hours)'),
          SubSection(text: 'Concept of Industrial Installation'),
          SubSection(text: 'General rules guidelines for wiring of Industry'),
          SubSection(text: 'Installation and positioning of equipments'),
          SubSection(text: 'Principles of circuit design in power circuits'),
          SubSection(
              text:
                  'Energy and power requirement for Lift, Conveyor-belt and HVAC'),
          SubSection(
              text:
                  'Procedures for designing the circuits and deciding the number of circuits'),
          SubSection(text: 'Method of drawing single line diagram'),
          SubSection(
              text: 'Selection of type of wiring and rating of wires & cables'),
          SubSection(
              text: 'Load calculations and selection of size of conductor'),
          SubSection(
              text:
                  'Selection of rating of main Panel Board and distributions board'),
          SubSection(
              text: 'Protective switchgear Fuse, MCCB, MCB and accessories'),

          SectionHeader(
              text: 'System Components for Industrial Illumination (6 hours)'),
          SubSection(text: 'Light Sources'),
          SubSection(text: 'Incandescent Filament Lamps'),
          SubSection(text: 'Fluorescent Lamps'),
          SubSection(text: 'High Intensity Discharge Lamps'),
          SubSection(text: 'LED Lamps'),
          SubSection(text: 'Types Luminaries'),
          SubSection(text: 'Types of Industrial Lighting Systems'),
          SubSection(text: 'Factory Lighting for Visual Tasks'),
          SubSection(text: 'Security Lighting'),
          SubSection(text: 'Emergency Lighting'),

          SectionHeader(text: 'Illuminating Design Principle (8 hours)'),
          SubSection(text: 'Basic Consideration for Illuminating Design'),
          SubSection(text: 'Space Function'),
          SubSection(text: 'Provision of Quality and Quantity of illumination'),
          SubSection(
              text:
                  'Selection of Lighting Systems, Sources, Luminaries, and Controls'),
          SubSection(text: 'Definitions of Terminology'),
          SubSection(text: 'Lumen Method of Lighting Computations'),
          SubSection(text: 'Point-to-point Lighting Computation'),
          SubSection(text: 'Design Procedures'),

          SectionHeader(text: 'Out-door Lighting Design (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Selection of Street Light Sources'),
          SubSection(text: 'Selection of Lumineries'),
          SubSection(text: 'Design Procedure of Street Lighting Scheme'),
          SubSection(text: 'Basic Floodlighting Effects'),
          SubSection(text: 'Selection of Floodlight Sources'),
          SubSection(text: 'Selection of Luminaries'),
          SubSection(text: 'Design Procedures'),
          SubSection(
              text:
                  'Application Guide: Buildings, color, Examples of flood lighting Installation'),

          SectionHeader(
              text:
                  'Emergency and Back-up Supply System for Industrial Plant (6 hours)'),
          SubSection(text: 'Battery Supply System'),
          SubSection(text: 'Battery Installation'),
          SubSection(text: 'Charging and Maintenance'),
          SubSection(text: 'Emergency Supply System'),
          SubSection(text: 'Uninterrupted Supply for Critical Load'),

          SectionHeader(text: 'Electrical Energy Audit in Industry (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Energy Audit Technique'),
          SubSection(text: 'Electricity Conservation Program'),
          SubSection(text: 'Distribution system'),
          SubSection(text: 'Load Management'),
          SubSection(text: 'Energy efficient motors'),
          SubSection(text: 'Energy efficient lighting system'),
          SubSection(text: 'Energy Saving Opportunity'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Introduction to wiring accessories such as – switches, socket, distribution board etc , protective devices such as – fuse, MCB, MCCB etc their construction, function and application'),
          SubSection(
              text:
                  'Preparing Electrical Lay-out and details for commercial Complex or Industrial Building'),
          SubSection(
              text:
                  'Conducting Market Study and Collecting, informative brochures and Specification on various product available about electrical lamp, appliances and equipments'),
          SubSection(
              text:
                  'Design electrical Installation scheme for commercial complex or Industry. Draw detail wiring diagrams. Prepare report and Drawing sheets (Light circuit Design, Power circuit Design and Detail Design of Distribution System)'),
          SubSection(
              text:
                  'Study of different types of sources of light and make connections, and to measure intensity of light with lux-meter: Fluorescent lamp, HP mercury vapour lamp, HP sodium vapour lamp, Compact Fluorescent lamp (CFL)'),
          SubSection(
              text:
                  'Using Power Analyzer measure electric parameters for energy auditing propose'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'J.B. Gupta "Electrical Installation Estimating and Costing", S.K. Kataria & Sons, New Delhi'),
          SubSection(
              text:
                  'G.L. Wadhwa "Generation, Distribution and Utilization of Electrical Energy", New Age International (P) Limited, India'),
          SubSection(
              text:
                  'H.Pratab "Art & Science of Utilisation of Electrical Energy", Dhanpat Rai & Sons, New Delhi')

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
