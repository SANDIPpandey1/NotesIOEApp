import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class PowerElectronics extends StatelessWidget {
  final int initialTabIndex;
  PowerElectronics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Power Electronics',
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
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('44')),
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
          SectionHeader(
              text:
                  'Characteristics and specification of power electronics device (10 hours)'),
          SubSection(
              text:
                  'Power Diode: V-I characteristics, switching characteristics, types of diodes, application'),
          SubSection(
              text:
                  'Thyristor: V-I characteristics, Turn On and Off mechanism, switching characteristics, protection scheme'),
          SubSection(
              text:
                  'Types of thyristors, merits-demerits and application of thyristors'),
          SubSection(
              text:
                  'Firing Circuits: Microcontroller based firing scheme, Long pulse, short pulse and train pulse generation using pulse transformer'),
          SubSection(
              text:
                  'Various commutation technique: Load Commutation and Line commutation'),
          SubSection(
              text:
                  'Power Transistor: V-I Characteristics, switching characteristics, merits-demerits and application of transistor'),
          SubSection(
              text:
                  'Power MOSFET: V-I Characteristics, Switching characteristics, merits-demerits and applications of MOSFET'),
          SubSection(
              text:
                  'Insulated Gate Bipolar transistor (IGBT): V-I characteristics, switching characteristics, merits-demerits and application of IGBT, comparison with MOSFET'),
          SubSection(
              text:
                  'Triac: V-I characteristics of Triac, operating modes of Triac, merits-demerits of Triac'),
          SubSection(
              text: 'Diac: V-I characteristics and its merits and demerits'),

          SectionHeader(text: 'Single phase ac to dc conversion (6 hours)'),
          SubSection(
              text:
                  'Half wave rectification with power diode using inductive and resistive load'),
          SubSection(
              text:
                  'Half wave rectification with thyristor using inductive and resistive load'),
          SubSection(
              text:
                  'Full wave rectification with diode and thyristor using resistive and inductive load'),
          SubSection(
              text:
                  'Wave form, ripple content, Fourier analysis and filtering scheme'),
          SubSection(text: 'Single phase semi-converter and full converter'),
          SubSection(text: 'Power factor improvement'),
          SubSection(text: 'Extinction angle control'),
          SubSection(text: 'Symmetrical angle control'),

          SectionHeader(text: 'Three phase AC to DC conversion (4 hours)'),
          SubSection(
              text:
                  'Three phase AC to DC conversion using diode and the Fourier analysis of waveforms'),
          SubSection(
              text:
                  'Three phase bridge rectification with diodes and the Fourier analysis of waveforms'),
          SubSection(text: 'Three phase full converter'),

          SectionHeader(text: 'DC chopper (6 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Step down chopper'),
          SubSection(text: 'Chopper with dc motor as load'),
          SubSection(text: 'Step up chopper'),
          SubSection(text: 'Chopper classification'),

          SectionHeader(text: 'Inverter (8 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Single phase inverter'),
          SubSection(text: 'Single phase inverter with ac motor load'),
          SubSection(text: 'Three phase inverter'),
          SubSection(text: 'Fourier analysis of three phase inverter'),
          SubSection(text: 'Pulse width modulated inverter'),
          SubSection(text: 'Single pulse modulation'),
          SubSection(text: 'Multiple pulse modulations'),
          SubSection(text: 'Sinusoidal pulse width modulation'),

          SectionHeader(text: 'AC voltage controller (6 hours)'),
          SubSection(
              text:
                  'Single phase voltage controller with phase control using resistive and inductive load'),
          SubSection(
              text:
                  'Single phase voltage controller in electronic load controller (ELC)'),
          SubSection(
              text: 'Principle of operation of single phase cycloconverter'),
          SubSection(text: 'Step-up and step down single phase cycloconverter'),
          SubSection(text: 'Three phase to single phase cycloconverter'),

          SectionHeader(text: 'HVDC power transmission (5 hours)'),
          SubSection(
              text:
                  'HVDC station configuration (Filter, Converters, Inverters)'),
          SubSection(text: 'Comparison of HVDC and HVAC transmission'),
          SubSection(text: 'Reversible power flow and control in dc line'),
          SubSection(text: 'Series operation of converters'),
          SubSection(text: '12-pulse operation of converter'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Study of single phase rectification with diode and thyristor'),
          SubSection(
              text:
                  'Study of three phase rectification with diode and thyristor'),
          SubSection(text: 'Study of DC conversion using chopper circuit'),
          SubSection(text: 'Study of DC to AC conversion with resistive load'),
          SubSection(
              text: 'Study of AC voltage controller with resistive load'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Muhammad H. Rashid "Power Electronics" Dhanpat Rai and Sons'),
          SubSection(
              text:
                  'B.R Gupta and V.Singhal "Power Electronics" Kataria and Sons.')

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
