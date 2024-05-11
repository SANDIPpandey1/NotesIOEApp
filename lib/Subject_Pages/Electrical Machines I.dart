import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ElectricalMachinesI extends StatelessWidget {
  final int initialTabIndex;
  ElectricalMachinesI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electrical Machines I',
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
          SectionHeader(text: 'Magnetic Circuits and Induction (4 hours)'),
          SubSection(
              text: 'Magnetic Circuits: Series and Parallel Magnetic Circuits'),
          SubSection(text: 'Core with air gap'),
          SubSection(text: 'B-H relationship (Magnetization Characteristics)'),
          SubSection(text: 'Hysteresis with DC and AC excitation'),
          SubSection(text: 'Hysteresis Loss and Eddy Current Loss'),
          SubSection(
              text:
                  'Faraday’s Law of Electromagnetic Induction, Statically and Dynamically Induced EMF'),
          SubSection(text: 'Force on Current Carrying Conductor'),

          SectionHeader(text: 'Transformer (12 hours)'),
          SubSection(text: 'Constructional Details, recent trends'),
          SubSection(text: 'Working principle and EMF equation'),
          SubSection(text: 'Ideal Transformer'),
          SubSection(text: 'Mutual Inductance and Coupled Circuit model'),
          SubSection(text: 'No load and Load operation'),
          SubSection(text: 'Equivalent Circuits and Phasor Diagram'),
          SubSection(text: 'Capacity of Transformers'),
          SubSection(text: 'Exciting Current harmonics'),
          SubSection(text: 'Transformer Inrush Current'),
          SubSection(
              text:
                  'Tests: Polarity Test, Open Circuit Test, Short Circuit test'),
          SubSection(text: 'Voltage Regulation'),
          SubSection(text: 'Losses in a Transformer'),
          SubSection(
              text:
                  'Efficiency, condition for maximum efficiency and all day efficiency'),
          SubSection(
              text:
                  'Instrument Transformers: Potential Transformer (PT) and Current Transformer(CT)'),
          SubSection(
              text:
                  'Auto transformer: construction, working principle and Cu saving'),
          SubSection(text: 'Three phase Transformers'),
          SubSection(
              text:
                  'Three phase transformer connections: Υ/Υ, Υ/Δ, Δ/Υ, Δ/Δ and V/V (or open Δ)connections'),
          SubSection(
              text:
                  'Choice between star and delta connection, Choice of Transformer connections'),
          SubSection(
              text: 'Three phase to two phase conversion: Scott connection'),
          SubSection(text: 'Three winding Transformer'),
          SubSection(
              text:
                  'Parallel operation of single phase and three phase Transformers'),

          SectionHeader(text: 'DC Generator (7 hours)'),
          SubSection(text: 'Constructional Details and Armature Windings'),
          SubSection(text: 'Working principle and Commutator Action'),
          SubSection(text: 'EMF equation'),
          SubSection(
              text:
                  'Method of excitation: separately and self excited, Types of DC Generator'),
          SubSection(
              text: 'Characteristics of series, shunt and compound generator'),
          SubSection(text: 'Voltage build up in a self excited DC generator'),
          SubSection(text: 'Armature Reaction'),
          SubSection(text: 'Commutation: Interpoles and Compensating Windings'),
          SubSection(text: 'Losses in DC generators'),
          SubSection(text: 'Efficiency and Voltage Regulation'),

          SectionHeader(text: 'DC Motor (7 hours)'),
          SubSection(text: 'Working principle and Torque equation'),
          SubSection(text: 'Back EMF'),
          SubSection(text: 'Method of excitation, Types of DC Motor'),
          SubSection(text: 'Performance Characteristics of D.C. motors'),
          SubSection(text: 'Losses and Efficiency'),
          SubSection(
              text: 'Starting of D.C. Motors: 3 point and 4 point starters'),
          SubSection(
              text:
                  'Speed control of D.C. Motors: Field Control, Armature Control, Reversing of DC Motors'),

          SectionHeader(text: 'Three-Phase Induction Machines (12 hours)'),
          SubSection(text: 'Three Phase Induction Motor'),
          SubSection(text: 'Constructional Details and Types'),
          SubSection(
              text:
                  'Operating Principle, Rotating Magnetic Field, Synchronous Speed'),
          SubSection(
              text:
                  'Slip, Induced EMF, Rotor Current and its frequency, Torque Equation'),
          SubSection(
              text:
                  'Torque-Slip characteristics, Effect of rotor resistance on Torque-Slip characteristics'),
          SubSection(text: 'Testing of Induction Motor'),
          SubSection(text: 'Losses, Power stages and Efficiency'),
          SubSection(text: 'Starting Methods'),
          SubSection(text: 'Speed Control Methods'),
          SubSection(text: 'Double Cage Induction Motor'),
          SubSection(text: 'Three Phase Induction Generator'),
          SubSection(
              text:
                  'Working Principle, voltage build up in an Induction Generator'),
          SubSection(text: 'Power Stages'),
          SubSection(text: 'Isolated and Grid connected mode'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'I.J. Nagrath & D.P.Kothari, "Electrical Machines", Tata McGraw Hill'),
          SubSection(
              text:
                  'S. K. Bhattacharya, "Electrical Machines", Tata McGraw Hill'),
          SubSection(
              text: 'Husain Ashfaq, "Electrical Machines", Dhanpat Rai & Sons'),
          SubSection(
              text:
                  'A.E. Fitzgerald, C.Kingsley Jr and Stephen D. Umans, "Electric Machinery", Tata McGraw Hill'),
          SubSection(
              text: 'P. S. Bhimbra, "Electrical Machines", Khanna Publishers'),
          SubSection(
              text:
                  'Irving L.Kosow, "Electric Machine and Tranformers", Prentice Hall of India.'),
          SubSection(
              text:
                  'M.G. Say, "The Performance and Design of AC machines", Pit man & Sons.'),
          SubSection(
              text:
                  'Bhag S. Guru and Huseyin R. Hizirogulu, "Electric Machinery and Transformers", Oxford University Press, 2001.'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Magnetic Circuits'),
          SubSection(
              text: 'To draw B-H curve for two different sample of Iron Core'),
          SubSection(text: 'Compare their relative permeabilities'),
          SubSection(text: 'Two Winding Transformers'),
          SubSection(text: 'To perform turn ratio test'),
          SubSection(
              text:
                  'To perform open circuit (OC) and short circuit (SC) test to determine equivalent circuit parameter of a transformer and hence to determine the regulation and efficiency at full load'),
          SubSection(text: 'To examine exciting current harmonics'),
          SubSection(text: 'DC Generator'),
          SubSection(
              text:
                  'To draw open circuit characteristic (OCC) of a DC shunt generator and to calculate: (a)Maximum voltage built up (b)Critical resistance and critical speed of the machine'),
          SubSection(text: 'To draw load characteristic of shunt generator'),
          SubSection(text: 'DC Motor'),
          SubSection(
              text:
                  'Speed control of DC Shunt motor by (a) armature control method (b) field control method'),
          SubSection(
              text:
                  'To observe the effect of increasing load on DC shunt motor’s speed, armature current, and field current.'),
          SubSection(text: '3-phase Induction Machines'),
          SubSection(
              text:
                  'To draw torque-speed characteristics and to observe the effect of rotor resistance on torque-speed characteristics'),
          SubSection(
              text:
                  'To perform no load and blocked rotor test to evaluate equivalent circuit parameters')

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
