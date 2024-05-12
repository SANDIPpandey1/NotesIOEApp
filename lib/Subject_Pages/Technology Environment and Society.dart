import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class TechnologyEnvironmentandSociety extends StatelessWidget {
  final int initialTabIndex;
  TechnologyEnvironmentandSociety({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Technology Environment and Society',
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
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('30')),
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
          SectionHeader(text: 'Technology (8 hours)'),
          SubSection(text: 'Definition'),
          SubSection(text: 'Impact of technology on environment & society'),
          SubSection(text: 'Benefits of technology due to new inventions'),
          SubSection(
              text:
                  'Conflict of technology, technology creates opportunity for society to change'),
          SubSection(text: 'Appropriate technology'),
          SubSection(
              text:
                  'Intermediate technology, labor based and labor intensive technology'),
          SubSection(
              text: 'Shifts in employment due to technological advancement'),
          SubSection(
              text:
                  'Role of technology to unmask old social problems, society’s control of technology'),
          SubSection(
              text:
                  'Impact of technology on culture, tradition and social values'),
          SubSection(text: 'Technology is irreversible'),
          SubSection(
              text: 'Agricultural age, industrial age and information age'),
          SubSection(text: 'Characteristics of information society'),
          SubSection(text: 'Information as power and wealth'),

          SectionHeader(text: 'Development approach(6 hours)'),
          SubSection(
              text:
                  'LEP (labor based, environment friendly and participatory)'),
          SubSection(
              text: 'Community management, engineers role as facilitator'),
          SubSection(
              text:
                  'Key features of infrastructure development policies of Nepal'),
          SubSection(text: 'Ethnographic approach to collect information'),
          SubSection(text: 'Participatory approach as community empowerment'),
          SubSection(
              text:
                  'Participatory tools, focus group discussions, key informants interview'),
          SubSection(
              text: 'Participatory observation, structured questionnaire'),
          SubSection(
              text: 'Resource mapping, wealth ranking, poverty definition'),

          SectionHeader(text: 'Brief history of human civilization (4 hours)'),
          SubSection(text: 'Early civilization'),
          SubSection(text: 'Great renaissance of Europe'),
          SubSection(text: 'Early part of industrial revolution'),
          SubSection(
              text:
                  'Transformation of industrial society into information society'),
          SubSection(text: 'Impact of world war 1 & 2, Population explosion'),
          SubSection(text: 'Rise of environmental issues'),
          SubSection(text: 'Climate change as a threat to human civilization'),

          SectionHeader(text: 'Environment (3 hours)'),
          SubSection(text: 'Definition'),
          SubSection(text: 'Importance, ecology & ecosystem'),
          SubSection(text: 'Conservation of environment'),
          SubSection(text: 'Optimum utilization of natural resources'),
          SubSection(text: 'Renewable and non-renewable resources'),
          SubSection(text: 'Conflict of resources'),
          SubSection(text: 'Global environmental issues'),
          SubSection(text: 'Environmental issues of Nepal'),

          SectionHeader(text: 'Water and air pollution (6 hours)'),
          SubSection(text: 'Fecal-oral infection transmission route'),
          SubSection(text: 'Preventive measures'),
          SubSection(text: 'On site sanitation (including eco-sanitation)'),
          SubSection(text: 'Importance of health education'),
          SubSection(text: 'Organic pollution'),
          SubSection(
              text:
                  'Inorganic pollution (nitrate, fluoride, iron, manganese, calcium arsenic, heavy metals), water pollution due to insecticides and pesticides'),
          SubSection(text: 'Sources, causes & impacts of air pollution'),
          SubSection(text: 'Mitigation measures'),
          SubSection(text: 'Indoor air pollution'),
          SubSection(text: 'Severity of its problems in Nepal'),

          SectionHeader(text: 'Climate change (3 hours)'),
          SubSection(text: 'Definition, causes, impacts'),
          SubSection(text: 'Mitigation measures'),
          SubSection(text: 'International efforts to mitigate its problems'),
          SubSection(text: 'Bio-gas, organic farming'),
          SubSection(text: 'Deforestation and its consequences'),
          SubSection(
              text:
                  'Importance of national parks, conservation areas and forestation programs in Nepal'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'B. C. Punmia, Ashok Kumar Jain and Arun Kumar Jain, "Environmental Engineering", Laxmi Publications (P) Ltd., New Delhi, 1998'),
          SubSection(text: 'H.G. Wells, "Brief History of Civilization"'),
          SubSection(text: 'J. Neharu, "Glimps of World History"')

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
