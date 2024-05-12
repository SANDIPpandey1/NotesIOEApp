import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class InformationSystem extends StatelessWidget {
  final int initialTabIndex;
  InformationSystem({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Information System',
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('5')),
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
          SectionHeader(text: 'Information system (3 hours)'),
          SubSection(text: 'Classification and evolution of IS'),
          SubSection(text: 'IS in functional area.'),
          SubSection(text: 'Information system architecture'),
          SubSection(text: 'Qualities of information systems'),
          SubSection(text: 'Managing Information System resources'),
          SubSection(text: 'Balanced Scorecard – case studies'),

          SectionHeader(
              text:
                  'Control, Audit and Security of Information systemn (5 hours)'),
          SubSection(text: 'Control of information system'),
          SubSection(text: 'Audit of information system'),
          SubSection(text: 'Security of information system'),
          SubSection(text: 'Consumer layered security strategy'),
          SubSection(text: 'Enterprise layered security strategy'),
          SubSection(text: 'Extended validation and SSL certificates'),
          SubSection(text: 'Remote access authentication'),
          SubSection(text: 'Content control and policy based encryption'),
          SubSection(text: 'Example of security in e-commerce transaction'),

          SectionHeader(text: 'Enterprise Management Systems (4 hours)'),
          SubSection(text: 'Enterprise management systems (EMS)'),
          SubSection(text: 'Enterprise Software: ERP/SCM/CRM'),
          SubSection(
              text:
                  'Information Management and Technology of Enterprise Software'),
          SubSection(text: 'Role of IS and IT in Enterprise Management'),
          SubSection(
              text:
                  'Enterprise engineering, Electronic organism, Loose integration vs. full integration, Process alignment, Frame work to manage integrated change, future trends.'),

          SectionHeader(
              text: 'Decision support and Intelligent systems (7 hours)'),
          SubSection(text: 'DSS, operations research models'),
          SubSection(text: 'Group decision support systems'),
          SubSection(text: 'Enterprise and executive decision support systems'),
          SubSection(
              text: 'Knowledge Management, Knowledge based Expert system'),
          SubSection(
              text: 'AI, Neural Networks, Virtual reality, Intelligent Agents'),
          SubSection(text: 'Data mining, Data ware Housing, OLAP, OLTP'),
          SubSection(text: 'Anomaly and fraud detection'),

          SectionHeader(text: 'Planning for IS  (3 hours)'),
          SubSection(text: 'Strategic information system'),
          SubSection(text: 'Tactical information system'),
          SubSection(text: 'Operational information systems'),

          SectionHeader(
              text: 'Implementations of Information Systems (7 hours)'),
          SubSection(text: 'Change Management'),
          SubSection(text: 'Critical Success Factors'),
          SubSection(text: 'Next generation Balanced scorecard'),

          SectionHeader(
              text: 'Web based information system and navigation (8 hours)'),
          SubSection(text: 'The structure of the web'),
          SubSection(text: 'Link Analysis'),
          SubSection(text: 'Searching the web'),
          SubSection(text: 'Navigating the web'),
          SubSection(text: 'Web uses mining'),
          SubSection(text: 'Collaborative filtering'),
          SubSection(text: 'Recommender systems'),
          SubSection(text: 'Collective intelligence'),

          SectionHeader(
              text:
                  'Scalable and Emerging Information System techniques (8 hours)'),
          SubSection(text: 'Techniques for voluminous data'),
          SubSection(text: 'Cloud computing technologies and their types'),
          SubSection(text: 'MapReduce and Hadoop systems'),
          SubSection(text: 'Data management in the cloud'),
          SubSection(text: 'Information retrieval in the cloud'),
          SubSection(text: 'Link analysis in cloud setup'),
          SubSection(text: 'Case studies of voluminous data environment'),
          SubSection(
              text:
                  'Practicals: The practical exercise shall include following three types of projects on designing of information system'),
          SubSection(
              text:
                  'E-commerce based information system for online transaction processing'),
          SubSection(
              text:
                  'web uses mining or collaborative filtering based processing system'),
          SubSection(text: 'scalable and emerging information system'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Information Systems Today Leonard Jessup and Joseph Valacich, Prentice hall, 2007'),
          SubSection(
              text:
                  'Managing With Information System, J.Kanter, PHI, Latest edition'),
          SubSection(
              text:
                  'An Introduction to Search Engines and Web Navigation, M. Levene, Pearson Education,'),
          SubSection(
              text:
                  'Data-Intensive Text Processing with MapReduce, Jimmy Lin and Chris Dyer, Morgan and Claypool, 2010.'),
          SubSection(
              text:
                  'The Cloud at Your Service, Jothy Rosenberg and Arthur Mateos, Manning, 2010'),
          SubSection(
              text: 'Balanced scorecard: Robert S. Kaplan,David P. Norton'),
          SubSection(
              text:
                  'Strategy Maps : Converting intangible assets into tangible outcomes,Robert S. Kaplan,David P. Norton'),
          SubSection(
              text:
                  'Strategy Focused organization : Robert S. Kaplan,David P. Norton')
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
