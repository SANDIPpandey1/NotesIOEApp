import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class Thermodynamics extends StatelessWidget {
  final int initialTabIndex;
  Thermodynamics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Thermodynamics',
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('14')),
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
          SectionHeader(text: 'Introduction(3 hours)'),
          SubSection(
              text: 'Definition and Scope of Engineering Thermodynamics'),
          SubSection(text: 'Value of energy to society'),
          SubSection(text: 'Microscopic versus Macroscopic Viewpoint'),
          SubSection(text: 'Concepts and Definitions'),
          SubSection(
              text:
                  'System, Surroundings, Boundary and Universe; Closed Systems, Open Systems, and Isolated Systems'),
          SubSection(
              text:
                  'Thermodynamic Properties: Intensive, Extensive and Specific Property'),
          SubSection(text: 'Thermodynamic Equilibrium'),
          SubSection(
              text:
                  'State, Process, and Path, Cyclic Process, Quasi-equilibrium Process, Reversible and Irreversible Process'),
          SubSection(
              text:
                  'Common Properties: Pressure, Specific Volume, Temperature'),
          SubSection(
              text: 'Zeroth Law of Thermodynamics, Equality of Temperature'),

          SectionHeader(text: 'Energy and Energy Transfer(3 hours)'),
          SubSection(text: 'Energy and its Meaning'),
          SubSection(text: 'Stored Energy and Transient Energy: Total Energy'),
          SubSection(text: 'Energy Transfer'),
          SubSection(text: 'Heat Transfer'),
          SubSection(text: 'Work Transfer'),
          SubSection(text: 'Expressions for displacement Work Transfer'),
          SubSection(text: 'Power'),

          SectionHeader(text: 'Properties of Common Substances(6 hours)'),
          SubSection(text: 'Pure Substance and State Postulate'),
          SubSection(text: 'Ideal Gas and Ideal Gas Relations'),
          SubSection(
              text:
                  'Two Phase (Liquid and Vapor) Systems: Phase Change, Subcooled Liquid, Saturated Liquid, Wet Mixture, Critical Point, Quality, Moisture Content, Saturated Vapor and Superheated Vapor'),
          SubSection(text: 'Properties of Two Phase Mixture'),
          SubSection(
              text:
                  'Other Thermodynamic Properties: Internal Energy, Enthalpy and Specific Heats'),
          SubSection(
              text:
                  'Development of Property Data: Graphical Data Presentation and Tabular Data Presentation'),

          SectionHeader(text: 'First Law of Thermodynamics(9 hours)'),
          SubSection(
              text:
                  'First Law of Thermodynamics for Control Mass: First Law of Thermodynamics for Control Mass Undergoing Cyclic Process'),
          SubSection(text: 'First Law of Thermodynamics for Control Volume'),
          SubSection(
              text:
                  'Control Volume Analysis: Steady State Analysis and Unsteady State Analysis'),
          SubSection(
              text:
                  'Control Volume Application: Steady and Unsteady Work Applications and Steady and Unsteady Flow Applications'),
          SubSection(text: 'Other Statements of the First Law'),

          SectionHeader(text: 'Second Law of Thermodynamics(9 hours)'),
          SubSection(text: 'Necessity of Formulation of Second Law'),
          SubSection(
              text:
                  'Entropy and Second Law of Thermodynamics for an Isolated System'),
          SubSection(text: 'Reversible and Irreversible Processes'),
          SubSection(
              text:
                  'Entropy and Process Relation for an Ideal Gases and Incompressible Substances'),
          SubSection(
              text:
                  'Control Mass and Control Volume Formulation of Second Law'),
          SubSection(
              text:
                  'Isentropic Process for an Ideal Gas and for an Incompressible Substances'),
          SubSection(
              text:
                  'Carnot Cycle, Carnot Efficiency, Heat Engine and Thermal Efficiency, Heat Pump, Refrigerator and coefficient of Performance(COP)'),
          SubSection(
              text:
                  'Kelvin-Planck and Clausius Statements of the Second Law of Thermodynamics and their Equivalence'),

          SectionHeader(text: 'Thermodynamic Cycles(9 hours)'),
          SubSection(text: 'Classification of Cycles'),
          SubSection(text: 'Air Standard Analysis'),
          SubSection(text: 'Otto Cycle'),
          SubSection(text: 'Diesel Cycle'),
          SubSection(text: 'Brayton Cycle'),
          SubSection(text: 'Rankine Cycle'),
          SubSection(text: 'Vapor Compression Refrigeration Cycle'),

          SectionHeader(text: 'Introduction to Heat Transfer (6 hours)'),
          SubSection(text: 'Basic Concepts and Modes of Heat Transfer'),
          SubSection(
              text:
                  'One dimensional steady state heat conduction through a plane wall'),
          SubSection(
              text:
                  'Radial steady state heat conduction through a hollow cylinder'),
          SubSection(text: 'Heat flow through composite structures'),
          SubSection(text: 'Composite Plane Wall'),
          SubSection(text: 'Multilayer Ttubes'),
          SubSection(text: 'Electrical Analogy for Thermal Resistance'),
          SubSection(
              text:
                  'Combined Heat Transfer and Overall Heat Transfer Coefficient for Plane Wall and Tube'),
          SubSection(text: 'Nature of Convection: Free and Forced Convection'),
          SubSection(
              text:
                  'Heat Radiation, Stefan\'s Law, Absorptivity, Reflectivity and Transmisivity; Black Body, White Body and Gray Body'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Temperature Measurements'),
          SubSection(text: 'Experiment related to First Law'),
          SubSection(text: 'Heat Pump'),
          SubSection(text: 'Heat Conduction'),
          SubSection(text: 'Heat Radiation'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '"Engineering Thermodynamics", E. Rathakrishnan, Tata Mc Graw Hill.'),
          SubSection(
              text:
                  '"Fundamentals of Engineering Thermodynamics", J. R. Howell & R. O. Buckius, McGraw Hill Publishers'),
          SubSection(
              text:
                  '"Fundamentals of Thermodynamics", V. Wylen, Sonntag & Borgnakke, 6th Edition, Wiley'),
          SubSection(
              text:
                  '"Fundamentals of Engineering Thermodynamics", M. J. Moran & H. N. Shapiro, 5th Edition, John Wiley & Sons, Inc.'),
          SubSection(
              text:
                  '"Thermodynamics: An Engineering Approach", Y. A. Cengel & M.A. Boles,5th Edition, McGraw-Hill, 2006'),
          SubSection(text: '"Heat Transfer", J. P. Holman, McGraw-Hill'),
          SubSection(
              text:
                  '"Heat Transfer: A Practical Approach", Y. A. Cengel,2nd Edition, McGraw-Hill')
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
