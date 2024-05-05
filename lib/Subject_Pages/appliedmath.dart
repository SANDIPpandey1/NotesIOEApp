import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class AppliedMathematics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Applied Mathematics',
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
                      child: Center(child: Text('18')),
                    ),
                    TableCell(
                      child: Center(child: Text('30')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('20')),
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
                      child: Center(child: Text('20')),
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
          SectionHeader(text: 'Complex Analysis(18 hours)'),
          SubSection(text: 'Complex Analytic Functions'),
          SubSection(text: 'Functions and sets in the complex plane'),
          SubSection(text: 'Limits and Derivatives of complex functions'),
          SubSection(text: 'Analytic functions. The Cauchy –Riemann equations'),
          SubSection(text: "Harmonic functions and it’s conjugate"),
          SubSection(text: 'Conformal Mapping'),
          SubSection(text: 'Mapping'),
          SubSection(text: 'Some familiar functions as mappings'),
          SubSection(
              text:
                  'Conformal mappings and special linear functional transformations'),
          SubSection(
              text: 'Constructing conformal mappings between given domains'),
          SubSection(text: 'Integral in the Complex Plane'),
          SubSection(text: 'Line integrals in the complex plane'),
          SubSection(text: 'Basic Problems of the complex line integrals'),
          SubSection(text: "Cauchy’s integral theorem"),
          SubSection(text: "Cauchy’s integral formula"),
          SubSection(text: 'Supplementary problems'),
          SubSection(
              text:
                  'Complex Power Series, Complex Taylor series and Lauren series'),
          SubSection(text: 'Complex Power series'),
          SubSection(text: 'Functions represented by Power series'),
          SubSection(
              text: 'Taylor series, Taylor series of elementary functions'),
          SubSection(
              text:
                  'Practical methods for obtaining power series, Laurent series'),
          SubSection(
              text:
                  'Analyticity at infinity, zeros, singularities, residues, Cauchy\'s residue theorem'),
          SubSection(text: 'Evaluation of real integrals'),

          SectionHeader(text: 'The Z-Transform(9 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Properties of Z-Transform'),
          SubSection(text: 'Z- transform of elementary functions'),
          SubSection(text: 'Linearity properties'),
          SubSection(
              text:
                  'First shifting theorem, Second shifting theorem, Initial value theorem'),
          SubSection(text: 'Final value theorem, Convolution theorem'),
          SubSection(text: 'Some standard Z-Transform'),
          SubSection(text: 'Inverse Z-Transform'),
          SubSection(text: 'Method for finding Inverse Z-Transform'),
          SubSection(
              text: 'Application of Z-Transform to difference equations'),

          SectionHeader(text: 'Partial Differential Equations(12 hours)'),
          SubSection(
              text:
                  'Linear partial differential equation of second order, their classification and solution'),
          SubSection(
              text:
                  'Solution of one dimensional wave equation, one dimensional heat equation, two dimensional heat equation and Laplace equation(Cartesian and polar form) by variable separation method'),

          SectionHeader(text: 'Fourier Transform(6 hours)'),
          SubSection(
              text:
                  'Fourier integral theorem, Fourier sine and cosine integral; complex form of Fourier integral'),
          SubSection(
              text:
                  'Fourier transform, Fourier sine transform, Fourier cosine transform and their properties'),
          SubSection(
              text: 'Convolution, Parseval’s identity for Fourier transforms'),
          SubSection(
              text: 'Relation between Fourier transform and Laplace transform'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'E. Kreyszig, “Advance Engineering Mathematics”, Fifth Edition, Wiley, New York.'),
          SubSection(
              text:
                  'A. V. Oppenheim, “Discrete-Time Signal Processing”, Prentice Hall, 1990.'),
          SubSection(
              text:
                  'K. Ogata, “Discrete-Time Control System”, Prentice Hall, Englewood Cliffs, New Jersey, 1987.')
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
