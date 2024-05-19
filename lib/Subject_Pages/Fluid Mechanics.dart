import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class FluidMechanics extends StatelessWidget {
  final int initialTabIndex;
  FluidMechanics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fluid Mechanics',
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
          SectionHeader(text: 'Fluid and its Physical Properties (3 hours)'),
          SubSection(
              text:
                  'Basic concept and definition of fluid. Application in civil engineering'),
          SubSection(
              text:
                  'Shear stress in a moving fluid, Difference between solids and fluids'),
          SubSection(
              text:
                  'Concept of control volume and continuum in fluid mechanics'),
          SubSection(
              text:
                  'Mass density, specific weight, specific gravity, specific volume, viscosity, compressibility, capillarity, surface tension, cavitation and vapour pressure (relations, their dimension, units as well as values for different materials)'),
          SubSection(
              text:
                  'Newton’s law of viscosity causes of viscosity in liquid and gases'),
          SubSection(
              text:
                  'Variation of viscosity with temperature for different fluids'),
          SubSection(
              text:
                  'Different methods for finding viscosity of fluids like viscometer etc.'),
          SubSection(
              text:
                  'Ideal and Real fluid, Newtonian and non-Newtonian, compressible and incompressible fluid with examples'),

          SectionHeader(text: 'Pressure and Head (4 hours)'),
          SubSection(
              text:
                  'Introduction, application in civil engineering. Concept about the absolute and relative equilibrium'),
          SubSection(text: 'Atmospheric, gauge and absolute pressure'),
          SubSection(
              text:
                  'Hydrostatics law of pressure distribution (pressure depth relationship)'),
          SubSection(text: 'Pascal\'s law'),
          SubSection(
              text:
                  'Measurement of pressure, simple manometer as piezometer, U-tube manometer, single column vertical and inclined manometers, differential manometer, inverted U-tube differential manometer, bourden gauge'),

          SectionHeader(text: 'Hydrostatics (10 hours)'),
          SubSection(
              text:
                  'Pressure force and centre of pressure on submerged bodies (plane and curve Surfaces)'),
          SubSection(
              text:
                  'Computation of pressure forces on gates (plane and curve), dams, retaining structures and other hydraulic structures, pressure diagrams'),
          SubSection(
              text:
                  'Buoyancy, flotation concept, thrust on submerged and floating bodies, hydrometer'),
          SubSection(text: 'The stability of floating and submerged bodies'),
          SubSection(text: 'Metacentre, determination of metacentric height'),
          SubSection(
              text:
                  'Liquid in relative equilibrium (pressure variation in the case of uniform linear and radial acceleration)'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Hydrokinematics (4 hours)'),
          SubSection(
              text:
                  'Lagrangian and Eulerian approaches of describing fluid flow'),
          SubSection(text: 'One, two and three dimensional of flow'),
          SubSection(
              text:
                  'Classification of fluid motion (uniform and non-uniform, steady and unsteady, laminar and turbulent flows)'),
          SubSection(
              text:
                  'Rotational and Irrotational motion, stream function and potential function'),
          SubSection(
              text:
                  'Description of streamline, streak line, path line and stream tube and their drawing procedures'),
          SubSection(
              text:
                  'Conservation principle of mass and continuity equation in Cartesian and cylindrical polar coordinates (one, two and three dimensional)'),

          SectionHeader(text: 'Hydrodynamics (2 hours)'),
          SubSection(
              text:
                  'Forces acting on a fluid in motion (gravitational, pressure, viscous, turbulent, surface tension, and compression forces)'),
          SubSection(
              text:
                  'Reynolds\'s, Euler\'s and Navier-Stoke\'s equation of motions'),
          SubSection(text: 'Development of the Euler\'s Equation of motion'),
          SubSection(text: 'Bernoulli\'s equation and its physical meaning'),

          SectionHeader(text: 'Flow Measurement (7 hours)'),
          SubSection(
              text: 'Venturimeter, orifice meter nozzle meter and Pitot tube'),
          SubSection(
              text:
                  'Flow through orifice (small orifice, large orifice, partially submerged orifice as well as submerged orifice)'),
          SubSection(
              text:
                  'Different hydraulic coefficients (Cv, Cc, and Cd) and their determination'),
          SubSection(
              text:
                  'Notches and Weir (classification, discharge through rectangular, triangular trapezoidal, and Cipoletti notches, Sharp crested weir, narrow crested weir, broad crested as well as ogee shaped weirs)'),
          SubSection(
              text:
                  'Emptying and filling of reservoirs without inflow (cylindrical, hemispherical and conical). Emptying and filling of reservoir with inflow (cylindrical case)'),
          SubSection(text: 'Computer programme coding for simple problems'),

          SectionHeader(text: 'Momentum Principle and Flow Analysis (6 hours)'),
          SubSection(text: 'Momentum principle and equations'),
          SubSection(
              text:
                  'Application of equation of calculate forces (pipe in bends, enlargements and reducer)'),
          SubSection(
              text:
                  'Forces exerted by the jet on stationary and moving vanes of different shapes'),
          SubSection(text: 'Concept of angular momentum with examples'),

          SectionHeader(text: 'Boundary Layer Theory (3 hours)'),
          SubSection(text: 'Boundary layer concept and definition'),
          SubSection(
              text:
                  'Boundary layer concept along a thin plate (laminar zone, turbulent zone, transition zone as well as laminar sub layer)'),
          SubSection(
              text:
                  'Application of this concept (hydraulically smooth and rough boundary)'),
          SubSection(
              text:
                  'Boundary layer thickness (Boundary layer thickness, momentum thickness, and displacement thickness)'),

          SectionHeader(text: 'Flow past through Submerged Bodies (3 hours)'),
          SubSection(
              text:
                  'Introduction to the drag and lift forces acting on a body'),
          SubSection(text: 'Expression for drag and lift forces'),
          SubSection(text: 'Pressure and friction drag; drag coefficients'),
          SubSection(text: 'Drag on a flat plate, cylinder and sphere'),
          SubSection(text: 'Concept of aerofoil'),

          SectionHeader(text: 'Similitude and Physical Modeling (3 hours)'),
          SubSection(
              text:
                  'Introduction to dimensional analysis (physical quantities and their dimensions)'),
          SubSection(
              text:
                  'Methods of dimensional analysis (Rayleigh and Buckingham theorem)'),
          SubSection(
              text:
                  'Similitude, laws of similarity, distorted and undistorted model Physical model and modeling criteria (Reynolds, Froude, Euler, Weber and Mach\'s model laws with some examples)'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Hydrostatic force on submerged body'),
          SubSection(text: 'Stability of a floating body'),
          SubSection(text: 'Verification of Bernoulli’s equation'),
          SubSection(text: 'Impact of jet'),
          SubSection(text: 'Flow through edged orifice'),
          SubSection(text: 'Flow over broad-crested weir'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Physical Properties of Fluids (2 hours)'),
          SubSection(text: 'Practical examples, numerical examples'),
          SubSection(text: 'Pressure and Head (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'Hydrostatics (6 hours)'),
          SubSection(text: 'There will be tutorial for each sub-section'),
          SubSection(
              text:
                  'Use of computer programme (studied in I/I) for solving exercises'),
          SubSection(text: 'Hydrokinematics (2 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'Hydrodynamics (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'Flow measurements (4 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'There will be tutorial for each sub-section'),
          SubSection(
              text:
                  'Use of computer programme (studied in I/I) to solve some problems'),
          SubSection(text: 'Momentum principle and flow analysis (3 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'There will be tutorial for each sub-section'),
          SubSection(
              text:
                  'Use of computer programme (studied in I/I) to solve some problems'),
          SubSection(text: 'Flow past submerged bodies (2 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'Boundary layer theory (2 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),
          SubSection(text: 'Similitude and physical modeling (2 hours)'),
          SubSection(
              text:
                  'Practical examples, numerical examples and derivation type questions'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '“Fluid Mechanics for Civil Engineers”, Webber, N.B. 1995, Chapman and Hall.'),
          SubSection(
              text:
                  'Victor and street, “Elementary fluid mechanics”, sixth edition, John wiley and sons inc. 605, third avenue, Newyork'),
          SubSection(
              text:
                  'D.S. Kumar “Fluid Mechanics and Fluid power Engineering” S.K. Kataria and Sons, sixth edition, 2005'),
          SubSection(
              text:
                  'K. L. Kumar “Engineering Fluid Mechanics”, , Eurasia Publishing house (P) Ltd. Ram Nagar New Delhi, 2000.'),
          SubSection(
              text:
                  'Hydraulics fluid mechanics and fluid machines, S Ramamrutham. Dhanpat Rai Publishing Company (P) Ltd. New Delhi Seventh Edition 2006'),
          SubSection(
              text:
                  'Fundamentals of Fluid Mechanics, D. P.Sangroula, Nepal Printing Support, Anamnager, Kathmandu, 2008')

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
              fileSize: '2',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/05/Fluid-Mechanics.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
