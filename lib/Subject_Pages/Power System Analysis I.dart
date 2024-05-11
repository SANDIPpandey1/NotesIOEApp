import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class PowerSystemAnalysisI extends StatelessWidget {
  final int initialTabIndex;
  PowerSystemAnalysisI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Power System Analysis I',
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
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
          SectionHeader(text: 'General Background(6 hours)'),
          SubSection(text: 'Power System Evolution'),
          SubSection(
              text: 'Generation, Transmission and Distribution Components'),
          SubSection(text: 'Energy Sources; hydro, thermal, Nuclear etc.'),
          SubSection(
              text:
                  'Basic introduction to renewable energy; Photovoltaic, Wind, geothermal etc'),
          SubSection(
              text:
                  'Major electrical components in power station; Alternators, transformers, bus bars, voltage regulators, switch and isolators, metering and control panels'),
          SubSection(text: 'Infinite bus concept'),
          SubSection(text: 'Voltage levels, AC  vs DC Transmission'),
          SubSection(text: 'Single phase and three phase power delivery'),

          SectionHeader(text: 'Overhead & Underground Transmission(8 hours)'),
          SubSection(text: 'Line supports, spacing between conductors'),
          SubSection(text: 'Transmission line conductor materials'),
          SubSection(text: 'Stranded and bundled conductors'),
          SubSection(text: 'Overhead line insulators, its types'),
          SubSection(
              text:
                  'Voltage distribution along string of suspension insulators, string efficiency'),
          SubSection(
              text:
                  'Classification, construction of underground cables, insulation resistance'),
          SubSection(
              text: 'Dielectric stress in single core/multi core cables'),
          SubSection(text: 'Cable faults and location of faults'),

          SectionHeader(text: 'Computational Technique(8 hours)'),
          SubSection(text: 'Single phase representation of three phase system'),
          SubSection(text: 'Impedance and reactance diagram'),
          SubSection(text: 'Single line diagram'),
          SubSection(text: 'Complex powers'),
          SubSection(text: 'Direction of power flow'),
          SubSection(text: 'Per unit system; advantage and applications'),

          SectionHeader(text: 'Line parameter calculations(10 hours)'),
          SubSection(text: 'Inductance, resistance and capacitance of a line'),
          SubSection(
              text:
                  'Inductance of line due to internal & external flux linkages'),
          SubSection(text: 'Skin & proximity effect'),
          SubSection(
              text:
                  'Inductance of single phase two wire line, stranded & bundled conductor consideration, concept of G.M.R and G.M.D, inductance of 3 phase line; equilateral and unsymmetrical spacing'),
          SubSection(
              text:
                  'Transposition, inductance of double circuit 3 phase lines'),
          SubSection(
              text: 'Concept of G.M.R and G. M.D for capacitance calculations'),
          SubSection(
              text:
                  'Capacitance calculations of single phase two wire line, stranded & bundled conductor consideration, capacitance of 3 phase line; equilateral and unsymmetrical spacing, double circuit'),
          SubSection(text: 'Earth effect in capacitance of a line'),

          SectionHeader(text: 'Transmission line modeling(4 hours)'),
          SubSection(
              text:
                  'Classification of a lines based on short, medium and long lines'),
          SubSection(
              text:
                  'Representation of ‘Tee’ and ‘Pi’ of medium lines; calculation of ABCD parameters'),
          SubSection(
              text:
                  'Distributed Parameter model of Long lines; calculation of ABCD parameters'),
          SubSection(text: 'Equivalent ‘Tee’ and ‘Pi’ of long lines'),

          SectionHeader(text: 'Performance Analysis(8 hours)'),
          SubSection(text: 'Sending and receiving end quantities analysis'),
          SubSection(
              text:
                  'Voltage regulation & efficiency calculation of transmission lines'),
          SubSection(
              text: 'Transmission line as source and sink of reactive power'),
          SubSection(text: 'Real and reactive power flow through lines'),
          SubSection(text: 'Surge impedance loading'),
          SubSection(text: 'High capacitance effect of long lines'),
          SubSection(text: 'Reactive compensation of transmission lines'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Power System Analysis by W.D. Stevension, Tata McGraw Hill Publications'),
          SubSection(
              text:
                  'Modern Power system analysis by I.J Nagrath and D.P Kothari, Tata McGraw Hill Publications'),
          SubSection(
              text:
                  'A text book on Power System Engineering by Chakraborty, M.L. sony, P.V. Gupta et al., Dhanpat rai & Co.'),
          SubSection(
              text:
                  'Electric power Generation, Transmission & Distribution by S.N. Singh, Prentece Hall')

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
