import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ElectricalMachine extends StatelessWidget {
  final int initialTabIndex;
  ElectricalMachine({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electrical MAchine',
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
          SectionHeader(text: 'Magnetic Circuits and Induction (4 hours)'),
          SubSection(text: 'Magnetic Circuits'),
          SubSection(text: "Ohm’s Law for Magnetic Circuits"),
          SubSection(text: 'Series and Parallel magnetic circuits'),
          SubSection(text: 'Core with air gap'),
          SubSection(text: 'B-H relationship (Magnetization Characteristics)'),
          SubSection(text: 'Hysteresis with DC and AC excitation'),
          SubSection(text: 'Hysteresis Loss and Eddy Current Loss'),
          SubSection(
              text:
                  'Faraday’s Law of Electromagnetic Induction, Statically and Dynamically Induced EMF'),
          SubSection(text: 'Force on Current Carrying Conductor'),

          SectionHeader(text: 'Transformer (8 hours)'),
          SubSection(text: 'Constructional Details, recent trends'),
          SubSection(text: 'Working principle and EMF equation'),
          SubSection(text: 'Ideal Transformer'),
          SubSection(text: 'No load and load Operation'),
          SubSection(text: 'Operation of Transformer with load'),
          SubSection(text: 'Equivalent Circuits and Phasor Diagram'),
          SubSection(
              text:
                  'Tests: Polarity Test, Open Circuit test, Short Circuit test and Equivalent Circuit Parameters'),
          SubSection(text: 'Voltage Regulation'),
          SubSection(text: 'Losses in a transformer'),
          SubSection(
              text:
                  'Efficiency, condition for maximum efficiency and all day efficiency'),
          SubSection(
              text:
                  'Instrument Transformers: Potential Transformer (PT) and Current Transformer (CT)'),
          SubSection(
              text:
                  'Auto transformer: construction, working principle and Cu saving'),
          SubSection(text: 'Three phase Transformers'),

          SectionHeader(text: 'DC Generator (6 hours)'),
          SubSection(text: 'Constructional Details and Armature Winding'),
          SubSection(text: 'Working principle and Commutator Action'),
          SubSection(text: 'EMF equation'),
          SubSection(
              text:
                  'Method of excitation: separately and self excited, Types of DC Generator'),
          SubSection(
              text: 'Characteristics of series, shunt and compound generator'),
          SubSection(text: 'Losses in DC generators'),
          SubSection(text: 'Efficiency and Voltage Regulation'),

          SectionHeader(text: 'DC Motor (6 hours)'),
          SubSection(text: 'Working principle and Torque equation'),
          SubSection(text: 'Back EMF'),
          SubSection(text: 'Method of excitation, Types of DC motor'),
          SubSection(text: 'Performance Characteristics of D.C. motors'),
          SubSection(
              text: 'Starting of D.C. Motors: 3 point and 4 point starters'),
          SubSection(
              text:
                  'Speed control of D.C. motors: Field Control, Armature Control'),
          SubSection(text: 'Losses and Efficiency'),

          SectionHeader(text: 'Three Phase Induction Machines (6 hours)'),
          SubSection(text: 'Three Phase Induction Motor'),
          SubSection(text: 'Constructional Details and Types'),
          SubSection(
              text:
                  'Operating Principle, Rotating Magnetic Field, Synchronous Speed, Slip, Induced EMF, Rotor Current and its frequency, Torque Equation'),
          SubSection(text: 'Torque-Slip characteristics'),
          SubSection(text: 'Three Phase Induction Generator'),
          SubSection(
              text:
                  'Working Principle, voltage build up in an Induction Generator'),
          SubSection(text: 'Power Stages'),

          SectionHeader(text: 'Three Phase Synchronous Machines (6 hours)'),
          SubSection(text: 'Three Phase Synchronous Generator'),
          SubSection(
              text:
                  'Constructional Details, Armature Windings, Types of Rotor, Exciter'),
          SubSection(text: 'Working Principle'),
          SubSection(text: 'EMF equation, distribution factor, pitch factor'),
          SubSection(text: 'Armature Reaction and its effects'),
          SubSection(text: 'Alternator with load and its phasor diagram'),
          SubSection(text: 'Three Phase Synchronous Motor'),
          SubSection(text: 'Principle of operation'),
          SubSection(text: 'Starting methods'),
          SubSection(text: 'No load and Load operation, Phasor Diagram'),
          SubSection(text: 'Effect of Excitation and power factor control'),

          SectionHeader(text: 'Fractional Kilowatt Motors (6 hours)'),
          SubSection(
              text:
                  'Single phase Induction Motors: Construction and Characteristics'),
          SubSection(text: 'Double Field Revolving Theory'),
          SubSection(text: 'Split phase Induction Motor'),
          SubSection(text: 'Capacitors start and run motor'),
          SubSection(text: 'Reluctance start motor'),
          SubSection(
              text: 'Alternating Current Series motor and Universal motor'),
          SubSection(
              text:
                  'Special Purpose Machines: Stepper motor, Schrage motor and Servo motor'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Magnetic Circuits'),
          SubSection(text: 'Two Winding Transformers'),
          SubSection(text: 'DC Generator'),
          SubSection(text: 'DC Motor'),
          SubSection(text: '3-phase Machines'),
          SubSection(text: 'Fractional Kilowatt Motors'),

          SectionHeader(text: 'References'),
          SubSection(
              text:
                  'I.J. Nagrath & D.P.Kothari,” Electrical Machines”, Tata McGraw Hill'),
          SubSection(
              text:
                  'S. K. Bhattacharya, “Electrical Machines”, Tata McGraw Hill'),
          SubSection(
              text:
                  'B. L. Theraja and A. K. Theraja, “Electrical Technology (Vol-II)”, S. Chand'),
          SubSection(
              text:
                  'Husain Ashfaq ,” Electrical Machines”, Dhanpat Rai & Sons'),
          SubSection(
              text:
                  'A.E. Fitzgerald, C.Kingsley Jr and Stephen D. Umans,”Electric Machinery”, Tata McGraw Hill'),
          SubSection(
              text:
                  'B.R. Gupta & Vandana Singhal, “Fundamentals of Electrical Machines, New Age International'),
          SubSection(
              text: 'P. S. Bhimbra, “Electrical Machines”’ Khanna Publishers'),
          SubSection(
              text:
                  'Irving L.Kosow, “Electric Machine and Tranformers”, Prentice Hall of India.'),
          SubSection(
              text:
                  'M.G. Say, “The Performance and Design of AC machines”, Pit man & Sons.'),
          SubSection(
              text:
                  'Bhag S. Guru and Huseyin R. Hizirogulu, “Electric Machinery and Transformers” Oxford University Press, 2001.')
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
