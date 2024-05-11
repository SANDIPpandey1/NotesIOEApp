import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ElectricMachinesII extends StatelessWidget {
  final int initialTabIndex;
  ElectricMachinesII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electric Machines II',
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
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
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('27')),
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
          //SizedBox(height: 20),
          SectionHeader(text: 'Three Phase Synchronous Generator (8 hours)'),
          SubSection(
              text:
                  'Constructional Details, Armature Windings, Types of Rotor, Exciter'),
          SubSection(text: 'Working Principle, Rotating Magnetic Field'),
          SubSection(text: 'EMF equation, distribution factor, pitch factor'),
          SubSection(text: 'Armature Reaction and its effects'),
          SubSection(text: 'Alternator with load and its phasor diagram'),
          SubSection(text: 'Voltage Regulations'),
          SubSection(text: 'Parallel Operation and Synchronization'),
          SubSection(text: 'Operation on infinite bus'),

          SectionHeader(text: 'Three Phase Synchronous Motor (7 hours)'),
          SubSection(text: 'Principle of operation'),
          SubSection(text: 'Starting methods'),
          SubSection(text: 'No load and Load operation, Phasor Diagram'),
          SubSection(
              text:
                  'Effect of Excitation and power factor control, V and Inverted V Curves'),
          SubSection(text: 'Hunting'),
          SubSection(
              text: 'Power angle Characteristics of Cylindrical Rotor Machine'),
          SubSection(text: 'Two reaction Model of Salient pole machine'),
          SubSection(
              text: 'Power Angle Characteristics of Salient Pole Machine'),

          SectionHeader(text: 'Fractional Kilowatt Motors (12 hours)'),
          SubSection(
              text:
                  'Single phase Induction Motors: Construction and Characteristics'),
          SubSection(text: 'Double Field Revolving Theory'),
          SubSection(text: 'Split phase Induction Motor'),
          SubSection(text: 'Capacitor start motor'),
          SubSection(text: 'Capacitors start and run motor'),
          SubSection(text: 'Shaded pole motor'),
          SubSection(text: 'Reluctance start motor'),
          SubSection(text: 'Single phase Synchronous Motor'),
          SubSection(text: 'Reluctance motor'),
          SubSection(text: 'Hysteresis motor'),
          SubSection(text: 'Universal motors'),
          SubSection(
              text:
                  'Special Purpose Machines: Stepper motor, Schrage motor and Servo motor'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'To study No-load characteristics of a 3-phase synchronous generator'),
          SubSection(
              text:
                  'To study load characteristics of synchronous generator with (a) resistive load (b) inductive load and (c) capacitive load'),
          SubSection(
              text:
                  'To study the effect of excitation on performance of a synchronous motor and to plot V- curve'),
          SubSection(
              text:
                  'To study the effect of a capacitor on the starting and running of a single-phase induction motor'),
          SubSection(
              text:
                  'To study the operating characteristics of universal motors'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'I.J. Nagrath&D.P.Kothari, "Electrical Machines", Tata McGraw Hill'),
          SubSection(
              text:
                  'S. K. Bhattacharya, "Electrical Machines", Tata McGraw Hill'),
          SubSection(
              text: 'Husain Ashfaq, "Electrical Machines", DhanpatRai& Sons'),
          SubSection(
              text:
                  'A.E. Fitzgerald, C.KingsleyJr and Stephen D. Umans, "Electric Machinery", Tata McGraw Hill'),
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
                  'Bhag S. Guru and Huseyin R. Hizirogulu, "Electric Machinery and Transformers", OxfordUniversity Press, 2001.')

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
