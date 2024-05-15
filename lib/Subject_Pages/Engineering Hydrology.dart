import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringHydrology extends StatelessWidget {
  final int initialTabIndex;
  EngineeringHydrology({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Hydrology',
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
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('7')),
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
          SectionHeader(text: 'Introduction (2 hours)'),
          SubSection(text: 'Definition and Uses of Engineering Hydrology'),
          SubSection(text: 'Hydrologic Cycle and Water Balance Equations'),
          SubSection(
              text: 'Development of Hydro-meteorological Study in Nepal'),

          SectionHeader(text: 'Precipitation (8 hours)'),
          SubSection(text: 'Causes, Forms, and Types of Precipitation'),
          SubSection(text: 'Measurement of Rainfall'),
          SubSection(text: 'Snowfall and Its Measurements'),
          SubSection(text: 'Estimation of Missing Rainfall Data'),
          SubSection(
              text:
                  'Test for Inconsistencies of Rainfall Data (Double Mass Curve)'),
          SubSection(text: 'Presentation of Rainfall Data'),
          SubSection(text: 'Estimation of Mean Rainfall over an Area'),
          SubSection(
              text:
                  'Development of Intensity-Duration-Frequency (IDF) Curve and Equation'),
          SubSection(text: 'Depth-Area-Duration (DAD) Curve'),

          SectionHeader(text: 'Hydrological Losses (8 hours)'),
          SubSection(
              text: 'Initial Losses (Interception and Depression Storage)'),
          SubSection(text: 'Evaporation Process'),
          SubSection(text: 'Evapotranspiration'),
          SubSection(text: 'Infiltration'),
          SubSection(text: 'Surface Runoff'),

          SectionHeader(text: 'Surface Runoff (8 hours)'),
          SubSection(
              text: 'Drainage Basins and Its Quantitative Characteristics'),
          SubSection(text: 'Factors Affecting Runoff from a Catchment'),
          SubSection(text: 'Rainfall-Runoff Relationship'),
          SubSection(text: 'Stream Gauging'),
          SubSection(text: 'Stream Flow Computation'),
          SubSection(text: 'Development of Rating Curve'),

          SectionHeader(text: 'Hydrograph Analysis (7 hours)'),
          SubSection(text: 'Components of a Hydrograph'),
          SubSection(text: 'Separation of Base Flow'),
          SubSection(text: 'Unit Hydrographs'),
          SubSection(
              text:
                  'Derivation of Unit Hydrographs from Isolated and Complex Storms'),

          SectionHeader(text: 'Flood Hydrology (7 hours)'),
          SubSection(text: 'Design Flood and Its Frequency'),
          SubSection(text: 'Statistical Methods of Flood Prediction'),
          SubSection(text: 'Continuous Probability Distribution'),
          SubSection(text: 'Flood Prediction Methods'),

          SectionHeader(text: 'Flow Routing (5 hours)'),
          SubSection(text: 'Linear Reservoir Routing'),
          SubSection(text: 'Time Area Method'),
          SubSection(text: 'Clark Unit Hydrograph'),

          SectionHeader(text: 'Tutorials'),
          SubSection(text: 'Estimation of Missing Rainfall Data (1 hour)'),
          SubSection(
              text: 'Test for Inconsistencies of Rainfall Data (1 hour)'),
          SubSection(text: 'Estimation of Mean Rainfall over an Area (1 hour)'),
          SubSection(
              text:
                  'Estimation of Potential Evapotranspiration by Penman’s Equation (1 hour)'),
          SubSection(
              text:
                  'Use of Horton’s Equation and Problems Related to Infiltration Indices (1 hour)'),
          SubSection(
              text:
                  'Discharge Computation by Velocity Area and Slope Area Methods (1 hour)'),
          SubSection(
              text:
                  'Determination of Stage at Zero Discharge and Preparation of Rating Curve (1 hour)'),
          SubSection(
              text:
                  'Derivation of Unit Hydrographs from Isolated and Complex Storms (2 hours)'),
          SubSection(text: 'Drainage Basin Characteristics (1 hour)'),
          SubSection(
              text:
                  'Estimation of Design Frequency of a Design Flood (1 hour)'),
          SubSection(
              text:
                  'Estimation of Floods by Plotting Positions and Distributions (1 hour)'),
          SubSection(
              text:
                  'Estimation of Floods by Rational and Empirical Methods (1 hour)'),
          SubSection(text: 'Flow Routing and Clark UH (1 hour)'),

          SectionHeader(text: 'Practical'),
          SubSection(text: 'Rainfall-Runoff Simulation'),
          SubSection(text: 'Field Visit at Meteorological Station'),
          SubSection(
              text:
                  'Stream Flow Measurement by Velocity Area Method (Current Meter and Floats)'),
          SubSection(text: 'Stream Flow Measurement by Dilution Techniques'),

          SectionHeader(text: 'Recommended Books and References'),
          SubSection(
              text:
                  'Engineering Hydrology by K. Subramanya, Tata-McGraw Hill Publishing Co., New Delhi'),
          SubSection(
              text:
                  'Applied Hydrology by V.T. Chow, D.R. Midment and L.W. Mays, McGraw Hill International'),
          SubSection(
              text:
                  'Engineering Hydrology by R. S. Varshney, Nem Chand & Bros., Roorkee'),
          SubSection(
              text:
                  'Hydrology for Engineers by Linsley, Kohler and Paulhus, McGraw Hill International Co.'),
          SubSection(
              text:
                  'Engineering Hydrology by B. L. Gupta, Standard Publishers and Distributors, New Delhi'),

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
