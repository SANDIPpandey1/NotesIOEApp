import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Electromagnetics extends StatelessWidget {
  final int initialTabIndex;
  Electromagnetics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Electromagnetics',
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('11')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('21')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5, 6, 7')),
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
          SectionHeader(text: 'Introduction (3 hours)'),
          SubSection(text: 'Co-ordinate system'),
          SubSection(text: 'Scalar and vector fields'),
          SubSection(text: 'Operations on scalar and vector fields'),

          SectionHeader(text: 'Electric field(11 hours)'),
          SubSection(text: 'Coulomb’s law'),
          SubSection(text: 'Electric field intensity'),
          SubSection(text: 'Electric flux density'),
          SubSection(text: 'Gauss’s law and applications'),
          SubSection(
              text: 'Physical significance of divergence; Divergence theorem.'),
          SubSection(text: 'Electric potential, Potential gradient'),
          SubSection(text: 'Energy density in electrostatic field'),
          SubSection(text: 'Electric properties of material medium'),
          SubSection(
              text:
                  'Free and bound Charges, Polarization, Relative permittivity, Electric dipole'),
          SubSection(text: 'Electric Boundary conditions'),
          SubSection(
              text:
                  'Current, Current density, Conservation of charge, Continuity equation, Relaxation time'),
          SubSection(
              text:
                  'Boundary value problems, Laplace and Poisson equations and their solutions, Uniqueness theorem.'),
          SubSection(text: 'Graphical field plotting, Numerical integration.'),

          SectionHeader(text: 'Magnetic field(9 hours)'),
          SubSection(text: 'Biot-Savart’s law'),
          SubSection(text: 'Magnetic field intensity'),
          SubSection(text: 'Ampere’s circuital law and its application'),
          SubSection(text: 'Magnetic flux density'),
          SubSection(text: 'Physical significance of curl, Stoke’s theorem'),
          SubSection(text: 'Scalar and Magnetic vector potential'),
          SubSection(text: 'Magnetic properties of material medium'),
          SubSection(
              text:
                  'Magnetic force, Magnetic torque, Magnetic moment, Magnetic dipole, Magnetization'),
          SubSection(text: 'Magnetic boundary condition'),

          SectionHeader(text: 'Wave equation and Wave propagation(12 hours)'),
          SubSection(text: 'Faraday’s law, Transformer emf, Motional emf'),
          SubSection(text: 'Displacement current'),
          SubSection(text: 'Maxwell’s equations in integral and point forms'),
          SubSection(text: 'Wave propagation in lossless and lossy dielectric'),
          SubSection(
              text:
                  'Plane waves in free space, lossless dielectric, good conductor'),
          SubSection(text: 'Power and pointing vector'),
          SubSection(
              text: 'Reflection of plane wave at normal and oblique incidence'),

          SectionHeader(text: 'Transmission lines(5 hours)'),
          SubSection(text: 'Transmission line equations'),
          SubSection(
              text:
                  'Input impedance, Reflection coefficient, Standing wave ratio'),
          SubSection(
              text:
                  'Impedance matching, Quarter wave transformer, Single stub matching, Double stub matching'),

          SectionHeader(text: 'Wave guides(4 hours)'),
          SubSection(text: 'Rectangular wave guide'),
          SubSection(
              text: 'Transverse electric mode, transverse magnetic mode'),

          SectionHeader(text: 'Antennas(1 hour)'),
          SubSection(
              text: 'Introduction to antenna, antenna types and properties'),
          SubSection(text: 'Practical:'),
          SubSection(
              text:
                  'Teledeltos (electro-conductive) paper mapping of electrostatic fields.'),
          SubSection(
              text:
                  'Determination of dielectric constant, display of a magnetic Hysteresis loop'),
          SubSection(
              text:
                  'Studies of wave propagation on a lumped parameter transmission line'),
          SubSection(text: 'Microwave sources, detectors, transmission lines'),
          SubSection(
              text:
                  'Standing wave patterns on transmission lines, reflections, power patterns on transmission lines, reflections, power measurement.'),
          SubSection(
              text:
                  'Magnetic field measurements in a static magnetic circuit, inductance, leakage flux.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'W. H. Hayt, “Engineering Electromagnetics”, McGraw-Hill Book Company.'),
          SubSection(
              text:
                  'J. D. Kraus, “Electromagnetics”, McGraw-Hill Book Company.'),
          SubSection(
              text:
                  'N. N. Rao, “Elements of Engineering Electromagnetics”, Prentice Hall.'),
          SubSection(
              text:
                  'Devid K. Cheng, “Field and Wave Electromagnetics”, Addison-Wesley.'),
          SubSection(
              text:
                  'M. N. O. Sadiku, “Elements of Electromagnetics”, Oxford University Press.')
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
