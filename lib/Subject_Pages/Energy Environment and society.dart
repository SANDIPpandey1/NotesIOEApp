import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EnergyEnvironment extends StatelessWidget {
  final int initialTabIndex;
  EnergyEnvironment({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Energy Environment and Society',
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('40')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          SectionHeader(text: 'Technology and Development (3 hours)'),
          SubSection(text: 'Introduction to Technology'),
          SubSection(text: 'Appropriate Technology'),
          SubSection(
              text:
                  'Role of Appropriate Technology in Transformation of Society'),
          SubSection(text: 'Importance of Technology Transfer'),
          SubSection(text: 'Impact of technology on Society'),

          SectionHeader(text: 'Energy Basics (4 hours)'),
          SubSection(
              text:
                  'Importance of Energy in achieving Maslow’s hierarchy of Needs, Human Development Index and Energy Consumption'),
          SubSection(
              text:
                  'Current Energy Trends, Demand and Supply of Energy in World and Nepal'),
          SubSection(
              text:
                  'Introduction to Global warming, Clean Development Mechanism, and Sustainability Issues'),
          SubSection(
              text:
                  'Conventional and Non-Conventional/Renewable Energy Sources'),
          SubSection(
              text: 'Conventional Energy Sources: Fossil fuel, Nuclear Energy'),

          SectionHeader(text: 'Renewable Energy Sources (14 hours)'),
          SubSection(text: 'Solar Energy'),
          SubSection(text: 'Hydropower'),
          SubSection(text: 'Wind Energy'),
          SubSection(text: 'Geothermal Energy'),
          SubSection(text: 'Bio-mass and Bio-energy'),
          SubSection(text: 'Hydrogen Energy and Fuel Cell'),

          SectionHeader(
              text: 'Environmental Impact of Energy sources (4 hours)'),
          SubSection(text: 'Emission hazard'),
          SubSection(text: 'Battery hazard'),
          SubSection(text: 'Nuclear hazard'),

          SectionHeader(text: 'Energy Storage (3 hours)'),
          SubSection(text: 'Forms of energy storage'),
          SubSection(text: 'Hybrid vehicles'),
          SubSection(text: 'Batteries'),

          SectionHeader(
              text: 'Relevant International/national case studies(2 hours)'),
          SectionHeader(text: 'References'),
          SubSection(
              text:
                  "Godfrey Boyle, 'Renewable Energy, Power for a sustainable future', Oxford University Press, latest edition"),
          SubSection(
              text:
                  'Aldo V. da Rosa, "Fundamentals of Renewable Energry Processes"'),
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
