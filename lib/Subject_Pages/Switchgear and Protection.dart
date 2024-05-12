import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SwitchgearandProtection extends StatelessWidget {
  final int initialTabIndex;
  SwitchgearandProtection({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Switchgear and Protection',
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('14')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('58')),
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
          SectionHeader(text: 'Principle of Power System Protection (3 hours)'),
          SubSection(
              text: 'Protection system components and its terminologies'),
          SubSection(text: 'Basic requirement of protection scheme'),
          SubSection(text: 'Need of protection scheme in power system'),
          SubSection(text: 'Back up protection, coordination, protection zone'),

          SectionHeader(text: 'Current and Potential Transformers (3 hours)'),
          SubSection(
              text:
                  'Potential transformer: Operation, standard ratios, errors, application'),
          SubSection(
              text:
                  'Current transformer: Wound and bar types, operation, standard ratios'),
          SubSection(
              text:
                  'Accuracy classification, typical knee point voltage, applications'),

          SectionHeader(text: 'Fuses (4 hours)'),
          SubSection(
              text:
                  'Types of fuses: Construction, operating characteristic and application'),
          SubSection(
              text:
                  'Fuse element, rated fuse current, minimum fusing factor, fusing factor, pre arcing and arcing time'),
          SubSection(text: 'Merits and demerits of various types of fuse'),

          SectionHeader(text: 'Isolators and Contactors (4 hours)'),
          SubSection(text: 'Isolators: Construction, operation and uses'),
          SubSection(
              text:
                  'Contactors: Construction and operation, normally open (NO) and Normally Close (NC), auxiliary contacts of contactors and application of contactors'),

          SectionHeader(text: 'System Earthing (6 hours)'),
          SubSection(
              text:
                  'Earthing: Definition, purpose, system earthing and body earthing, methods of earthing, substation earthing, measurement of soil resistivity'),
          SubSection(
              text:
                  'Causes of over voltages: Internal cause and external cause'),
          SubSection(
              text:
                  'Over voltage protection: Overhead earth wire, angle of protection, horn gap and rod gap lightning arrestor, surge absorbers'),
          SubSection(
              text:
                  'Isolated neutral, solid neutral, resistance earthing, reactance earthing, Peterson coil earthing'),

          SectionHeader(text: 'Circuit Breaker (12 hours)'),
          SubSection(
              text:
                  'Circuit breaking process: Arc phenomena, arc extinction and its methods, pre-arcing and arcing time, restricting voltage and recovery voltage'),
          SubSection(text: 'Duties of circuit breaker'),
          SubSection(text: 'Classification of circuit breaker'),
          SubSection(
              text:
                  'Circuit breaker rating: Rated voltage, rated current, rated frequency, operating duty, making capacity, short time rating'),
          SubSection(text: 'HVDC circuit breaker'),
          SubSection(text: 'Auto reclosure'),
          SubSection(text: 'Testing of circuit breaker'),

          SectionHeader(text: 'Protective Relays (14 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Classification of relays'),
          SubSection(text: 'Method of earth fault detection'),
          SubSection(
              text: 'Restricted and unrestricted earth fault protection'),
          SubSection(text: 'Electromagnet attraction relays'),
          SubSection(text: 'Electromagnet induction relays'),
          SubSection(text: 'Buchholz relay'),
          SubSection(text: 'Over current relays'),
          SubSection(
              text: 'Inverse definite minimum time (IDMT) relay, TDS,PSM'),
          SubSection(
              text:
                  'Application of IDMT relay in sectionalized HV feeder, Time-Graded protection/Current Graded protection'),
          SubSection(text: 'Directional relay (induction type)'),
          SubSection(text: 'Over current and earth fault relay'),
          SubSection(text: 'Unit protection scheme/Differential protection'),
          SubSection(
              text:
                  'Advantage of unit protection scheme over non unit protection'),
          SubSection(
              text:
                  'Application of unit protection/differential protection scheme to HV feeders, Transformers and generators'),
          SubSection(
              text:
                  'Biased or percentage relay and its application to transformers and generators'),
          SubSection(text: 'Voltage balance relay'),
          SubSection(text: 'Universal relay torque equation'),
          SubSection(text: 'Distance protection'),
          SubSection(text: 'Impedance, reactance and mho relay'),
          SubSection(
              text:
                  'Application of distance protection relay in sectionalized feeder'),
          SubSection(text: 'Carrier current protection'),
          SubSection(text: 'Bus bar protection'),

          SectionHeader(text: 'Static and Digital Relays (12 hours)'),
          SubSection(text: 'Need for static relays'),
          SubSection(text: 'Essential components of static relays'),
          SubSection(text: 'Comparison of static and electromagnet relays'),
          SubSection(text: 'Classification of static relays'),
          SubSection(
              text:
                  'A review of Electronic Circuit Commonly used in static relays: Auxiliary DC Voltage Supply, Time Delay Circuit, Level Detectors, Multivibrator, logic circuit, use of operational amplifier in static relay'),
          SubSection(
              text:
                  'Static Over current relays and over voltage/under voltage relay'),
          SubSection(text: 'Directional static over current relays'),
          SubSection(text: 'Static differential relays'),
          SubSection(
              text:
                  'Static differential protection scheme applied to transformer'),
          SubSection(
              text:
                  'Static distance relays such as impedance relay, reactance relay and mho relay'),
          SubSection(
              text: 'Static differential protection applied to the generator'),
          SubSection(text: 'Block diagram and Component of digital relay'),
          SubSection(
              text:
                  'Block diagram of microprocessor based protective scheme for protection of transformer, generator and transmission line'),
          SubSection(
              text:
                  'Block diagram of microprocessor based over voltage/under voltage relay'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Draw magnetizing curve for a protective CT. Check Knee point voltage'),
          SubSection(
              text:
                  'Test over current device in an Air Circuit Breaker for operation using primary injection'),
          SubSection(
              text:
                  'Test an induction disc relay in over current in over current protection scheme for operating characteristics using secondary injection'),
          SubSection(
              text:
                  'Test an induction disc relay in residual earth fault protection scheme for operating characteristics and setting using secondary injection'),
          SubSection(
              text:
                  'Check connections on a biased differential protection scheme of transformer. Test the scheme for operation and setting values on internal faults using primary injection'),
          SubSection(text: 'Measurement of soil resistivity'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Sunil S. Rao "Switchgear and protection", Khanna Publishers'),
          SubSection(
              text: 'G. Mason "The art and science of protective realying"'),
          SubSection(
              text: 'J.B Gupta "Switchgear and protection", Kataria and Sons')

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
