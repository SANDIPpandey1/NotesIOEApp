import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class HighVoltageEngineering extends StatelessWidget {
  final int initialTabIndex;
  HighVoltageEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'High Voltage Engineering',
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('16')),
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
          SectionHeader(text: 'Evolution of Power System [6 hours]'),
          SubSection(text: 'Classification of High Voltages'),
          SubSection(text: 'Emerging Trends in Power Systems'),
          SubSection(text: 'High Voltage AC and HVDC Systems'),
          SubSection(text: 'Basic Introduction to FACTS Devices'),
          SubSection(text: 'High Voltage Power Cables AC and DC'),

          SectionHeader(text: 'Electric Shocks [6 hours]'),
          SubSection(
              text:
                  'Physiological Effects of Electric Shock, Ventricular Fibrillation'),
          SubSection(text: 'First Aid for Electric Shock'),
          SubSection(text: 'Safety Precautions and Regulations'),
          SubSection(
              text:
                  'Earthing and Shielding Techniques for Personnel and Equipment Protection'),
          SubSection(
              text: 'Measurements of Earth Resistivity and Earth Resistance'),

          SectionHeader(text: 'Over Voltages in Power System [8 hours]'),
          SubSection(
              text:
                  'Classification of Over Voltages: Temporary and Transient Over Voltages, Internal and External Over Voltages'),
          SubSection(
              text:
                  'Temporary Over Voltage: Unsymmetrical Faults in the System, High Capacitance of Long EHV Lines, Ferro-resonance, Load Rejection, Effective Grounding, Shunt Compensations'),
          SubSection(
              text:
                  'Switching Over Voltages: Switching Surge Ratio, Energizing an Unloaded Transmission Line, De-energizing the Transmission Line, Interruption of Capacitive Current by Circuit Breaker, Current Chopping by Circuit Breaker, Ferro Resonance, Countermeasure to Reduce Switching Over Voltages'),
          SubSection(
              text:
                  'Lightning Over Voltages: Lightning Phenomena, Direct and Indirect Lightning Strokes, Effect of Ground Wire and Tower Footing Resistance in Lightning Over Voltages'),
          SubSection(
              text:
                  'Protection Principle Against Lightning, Lightning and Surge Arrestors, Earth Wire, Grounding Mast'),

          SectionHeader(text: 'Insulation Coordination [4 hours]'),
          SubSection(text: 'Basic Insulation Level and Basic Switching Level'),
          SubSection(
              text:
                  'Insulation Coordination to Different Equipments: Transformers, Bus Structures, Bushings, Transmission Lines'),
          SubSection(
              text:
                  'Insulation Protection Level for Temporary, Switching and Lightning Over Voltages'),
          SubSection(
              text:
                  'Surge Protection: Lighting and Switching Surge Characteristics, Horn Gaps, Grading Rings, Lightning Arrestors'),

          SectionHeader(text: 'High Stress Electric Fields [8 hours]'),
          SubSection(
              text:
                  'Review of Electromagnetic Field Theory: Electrostatic Potential Difference, Potential Gradient, Conducting and Dielectric Materials in Electric Fields, Polarization, Leakage Conductance of Dielectrics'),
          SubSection(
              text:
                  'Electromagnetic Fields Near Transmission Lines: Electromagnetic Induction in Neighboring Facilities Such as Communication Circuits, Pipelines or Railway Tracks'),
          SubSection(
              text:
                  'Evaluation of Electric Field Distributions, Manual and Computer Flux Mapping and Field Calculations'),
          SubSection(text: 'Corona and Radio Interference'),

          SectionHeader(text: 'Dielectric Breakdowns [8 hours]'),
          SubSection(
              text:
                  'Electrical Breakdown in Gases: Ionization and Decay Processes, High Field Cathodic Emission, Secondary Ionization and Breakdown, Quenching, Partial Breakdown, The Corona Effect, Polarity Effects, Surge Effects'),
          SubSection(
              text:
                  'Electrical Breakdown in Insulating Liquids: Chemical Breakdown of Liquids, Presence of Impurities, Polar Molecules and Dielectric Heating in AC Field'),
          SubSection(
              text:
                  'Electrical Breakdown in Solid Materials: Surface Tracking and Carbonization, Air Voids in Solid Insulating Materials, Effects of Electrical Stress Concentration, Polarization, Energy Losses and Dielectric Heating in AC Fields'),

          SectionHeader(text: 'Introduction to High Voltage Testing [4 hours]'),
          SubSection(
              text:
                  'Breakdown Testing Using High Voltage AC and DC Voltages and Impulse Voltages'),
          SubSection(
              text:
                  'Measurement of High AC, DC and Impulse Voltages, Standardization of Testing Procedures'),
          SubSection(
              text:
                  'Non-Destructive Testing of Insulations: Leakage Current, Dielectric Loss Evaluation, Partial Discharge Radio Frequency Sensing, Impurity Monitoring of Liquid and Gaseous Insulating Materials, Insulations Testing as Routine Maintenance Procedures'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'High Voltage Engineering, KamaRaju & Naidu'),
          SubSection(
              text: 'Extra High Voltage AC Transmission, Rakosh Das Begmudre'),
          SubSection(
              text:
                  'Power System Analysis by W.D. Stevension, Tata McGraw Hill Publications'),
          SubSection(text: 'Power System Stability and Control by P. Kundur')

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
