import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class SurveyingII extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Surveying II',
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
          SectionHeader(text: 'Traversing (7 Hours)'),
          SubSection(text: 'Needs and significance of traversing'),
          SubSection(
              text:
                  'Specification for horizontal and vertical control of traverse'),
          SubSection(text: 'Field works for traversing, traverse field notes'),
          SubSection(
              text:
                  'Traverse computation for closed and link traverse, reduction of reading to angles, balancing of angles, computation of bearings and adjustment of bearings, computation of latitudes and departures, error of closure and relative precision, balancing of consecutive coordinates, computation of independent coordinates and plotting of traverse'),
          SubSection(text: 'Traverse omitted measurements'),
          SubSection(text: 'Field problems and instructions'),

          SectionHeader(text: 'Tacheometry (5 hours)'),
          SubSection(text: 'Principle of optical distance measurements'),
          SubSection(
              text:
                  'Stadia method, Tangential method using staff vertical and horizontal distance using subtense bar'),
          SubSection(text: 'Booking and plotting of details'),
          SubSection(
              text: 'Sources of errors and precision of tacheometric survey'),
          SubSection(text: 'Field problems and instructions'),

          SectionHeader(text: 'Trigonometric Leveling (4 hours)'),
          SubSection(text: 'Problems of heights and distances'),
          SubSection(text: 'Reciprocal trigonometrical leveling'),
          SubSection(text: 'It\'s significance and error ratio'),
          SubSection(
              text:
                  'Determination of heights and distances of inaccessible objects'),
          SubSection(text: 'Instruction on field works'),

          SectionHeader(text: 'Contouring (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Establishment of controls'),
          SubSection(text: 'Contour interval and characteristics of contour'),
          SubSection(text: 'Methods of locating contours'),
          SubSection(text: 'Interpolation of contours'),
          SubSection(text: 'Uses of contour maps'),

          SectionHeader(text: 'Orientation (4 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Analytical intersection and resection'),
          SubSection(
              text:
                  'Two points and three point resection and their significance'),
          SubSection(text: 'Instruction on field application'),

          SectionHeader(text: 'Curves (8 hours)'),
          SubSection(text: 'Types of curves and their uses'),
          SubSection(text: 'Simple circular curves and their elements'),
          SubSection(
              text:
                  'Calculation and setting out of simple circular curve by ordinate from long chord, offsets from tangent and deflection angle methods'),
          SubSection(text: 'Geometry of transition curves and their elements'),
          SubSection(
              text: 'Elements of composite curves and setting out techniques'),
          SubSection(
              text:
                  'Equation of vertical curves and computation of reduced levels of points on curve'),
          SubSection(text: 'Instruction on field application of curves'),

          SectionHeader(text: 'Photogrammetry and Remote Sensing (5 hours)'),
          SubSection(
              text: 'Introduction of photogrammetric as a branch of surveying'),
          SubSection(text: 'Scale of vertical photograph'),
          SubSection(text: 'Relief displacement'),
          SubSection(text: 'Merits and limitation of photogrammetry'),
          SubSection(text: 'Types of remote sensing'),
          SubSection(text: 'Electromagnetic radiation'),
          SubSection(text: 'Interaction of EMR with earth surface features'),
          SubSection(text: 'Field application and instruction'),

          SectionHeader(text: 'Field Astronomy and GPS (3 hours)'),
          SubSection(text: 'Introduction, Definition of terms'),
          SubSection(text: 'Geographical coordinate system'),
          SubSection(text: 'Use of astronomy in surveying and mapping'),
          SubSection(text: 'Introduction of GPS'),
          SubSection(text: 'Components of GPS'),
          SubSection(text: 'Working principles and uses of GPS'),
          SubSection(text: 'Instructions to field applications'),

          SectionHeader(text: 'Total Station (3 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Features of Total Station'),
          SubSection(text: 'Electronic data recording'),
          SubSection(text: 'Summary of Total Station characteristics'),
          SubSection(
              text:
                  'Field procedures for Total Station in Topographical Surveying'),

          SectionHeader(text: 'Geographic Information System (GIS) (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Application of GIS to civil engineering projects'),

          SectionHeader(text: 'Practical Field Works:'),
          SubSection(text: 'Traverse survey, computation and plotting'),
          SubSection(
              text:
                  'Application of tacheometry to measure distance and elevation by using stadia system including detailing, computation and plotting'),
          SubSection(text: 'Intersection and resection using theodolite'),
          SubSection(text: 'Trigonometric leveling'),
          SubSection(text: 'Contouring – Indirect leveling'),
          SubSection(
              text:
                  'Setting out of simple circular curve, transition and vertical curve'),
          SubSection(text: 'Demonstration and application of Total Station'),
          SubSection(
              text:
                  'Demonstration and application of GPS, GIS,Photogrammetry lab visit'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(
              text:
                  'Traversing Traverse computation i.e. including Reduction of reading to angles, balancing of angles, computation of bearings, calculation of consecutive coordinates and balancing of consecutive coordinates, calculation of independent coordinates., Finding the missing figures of traverse'),
          SubSection(
              text:
                  'Tacheometry Distances and elevation computation from tacheometric observations and calculation of bearings, reduced levels and gradients from computed distances and angles'),
          SubSection(
              text:
                  'Trigonometrical leveling Height and distance measurement practices for distant objects by applying various cases'),
          SubSection(
              text:
                  'Contouring Interpolation practices from indirect method of contouring'),
          SubSection(
              text:
                  'Orientation Coordinates calculation of unknown points by using resection and intersection processes'),
          SubSection(
              text:
                  'Curves Calculation of various elements of simple circular curves, transition curves, composite curves and vertical curves for setting out procedures'),

          SectionHeader(text: 'References:'),
          SubSection(text: 'Surveying – A. Banister and S. Raymond, ELBS'),
          SubSection(
              text:
                  'Elementary Surveying – Paul R. Wolf, Russel C. Brinker – Harper Collins College Publishers'),
          SubSection(
              text: 'BC Punmia – Surveying, Laxmi Publication, New Delhi'),
          SubSection(
              text:
                  'R.Agor – Surveying and Leveling – Khanna Publishers, Delhi'),
          SubSection(
              text:
                  'N N Basak – Surveying and Leveling – Tata Mc Graw Hill Publishing Company Limited New Delhi'),
          SubSection(
              text:
                  'SK Duggal – Surveying – Tata Mc Graw Hill Education Private Limited New Delhi')

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
