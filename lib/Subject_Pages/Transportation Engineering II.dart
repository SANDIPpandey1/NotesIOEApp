import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class TransportationEngineeringII extends StatelessWidget {
  final int initialTabIndex;
  TransportationEngineeringII({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Transportation Engineering II',
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
                      child: Center(child: Text('16')),
                    ),
                    TableCell(
                      child: Center(child: Text('28')),
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
                      child: Center(child: Text('10')),
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
          SectionHeader(text: 'Traffic Engineering [16 hours]'),
          SubSection(text: 'Introduction and Scope of Traffic Engineering'),
          SubSection(text: 'Definition of Traffic Engineering'),
          SubSection(text: 'Scope of Traffic Engineering'),
          SubSection(text: 'Traffic Characteristics'),
          SubSection(text: 'Traffic Studies'),
          SubSection(text: 'Traffic Volume Studies'),
          SubSection(text: 'Speed Studies'),
          SubSection(text: 'Origin and Destination Studies'),
          SubSection(text: 'Traffic Flow Characteristics'),
          SubSection(text: 'Traffic Capacity Studies'),
          SubSection(text: 'Parking Studies'),
          SubSection(text: 'Accident Studies'),
          SubSection(text: 'Traffic Control Devices'),
          SubSection(text: 'Traffic Signs'),
          SubSection(text: 'Traffic Signals'),
          SubSection(text: 'Road Markings'),
          SubSection(text: 'Traffic Island'),
          SubSection(text: 'Road Intersections'),
          SubSection(text: 'Basic Requirements of Intersection'),
          SubSection(text: 'Types of Intersections and their Configuration'),
          SubSection(text: 'Channelized and Unchannelized Intersections'),
          SubSection(text: 'Rotary Intersection'),
          SubSection(text: 'Grade Separated Intersections'),
          SubSection(text: 'Road Lighting'),
          SubSection(text: 'Importance of Road Lighting'),
          SubSection(text: 'Factors Influencing Night Visibility'),
          SubSection(text: 'Requirements of Level of Illumination in Roads'),
          SubSection(
              text:
                  'Design of the Lighting System: Selection of Height of Lamps, Spacing between Light Poles, Height and Overhang of Light Poles, Lateral Placement and Lighting Layouts'),

          SectionHeader(text: 'Highway Pavement [10 hours]'),
          SubSection(text: 'Definition and Types of Pavements'),
          SubSection(
              text:
                  'Differences between Flexible and Rigid Pavement Structure'),
          SubSection(
              text: 'Loads and Other Factors Controlling Pavement Design'),
          SubSection(
              text:
                  'Design Methods for Flexible Pavements- Rode notes 29, 31, CBR, AASTHO.'),
          SubSection(
              text:
                  'Details of Asphalt Institute Method of Design of Flexible Pavements'),
          SubSection(
              text:
                  'Design Methods for Rigid Pavements and Westerguard’s Theory'),
          SubSection(
              text:
                  'Stress due to Load, Temperature Differential and Sub-grade Friction'),
          SubSection(
              text:
                  'Details of the IRC Method of Design of Rigid Pavements for Highways'),
          SubSection(text: 'Road Construction Technology'),

          SectionHeader(text: 'Road Construction Technology [8 hours]'),
          SubSection(
              text: 'Activities and Techniques Used in Road Construction'),
          SubSection(
              text: 'Tools, Equipment and Plants Used in Road Construction'),
          SubSection(text: 'Execution of Earth Work'),
          SubSection(text: 'Construction of Low Cost Roads'),
          SubSection(
              text: 'Construction of Prime Coat, Tack Coat and Seal Coat'),
          SubSection(text: 'Construction of Surface Dressing'),
          SubSection(text: 'Construction of otta-seal.'),
          SubSection(text: 'Construction of Grouted or Penetration Macadam'),
          SubSection(
              text: 'Construction of Different types of Bituminous Premixes'),
          SubSection(text: 'Construction of Cement Concrete Pavements'),

          SectionHeader(
              text:
                  'Highway Maintenance, Repair, and Rehabilitation [6 hours]'),
          SubSection(
              text:
                  'Classification of Maintenance Activities for Road Pavements and Road Facilities'),
          SubSection(
              text:
                  'Inspection, Prioritization and Planning of Maintenance Operations'),
          SubSection(
              text: 'Evaluation of Pavement Distress and Pavement Condition'),
          SubSection(text: 'Types of Road Failure and its causes'),
          SubSection(text: 'Types and Methods of Pavement Repairs'),
          SubSection(
              text:
                  'Types of Overlays and Strengthening of Existing Pavements'),

          SectionHeader(
              text: 'Introduction to Bridge and Tunnel Engineering [5 hours]'),
          SubSection(text: 'Choice of Bridge Location Site'),
          SubSection(
              text:
                  'Classification of Bridges and Component Parts of a Bridge'),
          SubSection(
              text: 'Introduction to River Bank and Protection Structure'),
          SubSection(text: 'Types of Road and Railway Tunnels'),
          SubSection(
              text: 'Component Parts of Tunnel and Tunnel Cross-Section'),
          SubSection(text: 'Survey for Tunnel Alignment'),
          SubSection(
              text:
                  'Drainage, Lighting and Ventilation Requirements for Tunnel'),
          SubSection(
              text:
                  'Introduction of Tunneling in Firm Soil, Soft Soil and Rock'),
          SubSection(text: 'Tunnel Lining'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(
              text:
                  'Classroom exercise on traffic volume, capacity and characteristics studies, assignment on road intersection and lighting system with report preparation.'),
          SubSection(text: 'Exercise on road pavement design'),

          SectionHeader(text: 'Practicals:'),
          SubSection(text: 'Determination of CBR Value'),
          SubSection(text: 'Measurement of Spot Speed and Data Analysis'),
          SubSection(text: 'Measurement of Deflection of Pavement Surface'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '“A Text-book on Highway Engineering and Airports”, S.B.Sehgal and K.I. Bhanot, S. Chand and Co. Publishers Ltd., New Delhi'),
          SubSection(
              text:
                  '“Principles, Practice and Design of Highway Engineering”, S.K. Sharma, S. Chand and Co. Publishers Ltd., New Delhi'),
          SubSection(
              text:
                  '“Highway Engineering” Dr. S.K. Khanna and Dr. C.E.G.Justo, Nem Chand & Bros Roorkee (U.P.)'),
          SubSection(
              text:
                  '“Highway Engineering” C.A. Flaherty, Edward Arnold (Publishers ) Ltd.'),
          SubSection(
              text:
                  '“Course Manual on Transportation Engineering” P.M. Parajuli, Department of Civil Engineering, Pulchowk Campus')

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
