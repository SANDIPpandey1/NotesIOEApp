import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ProjectManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Project Management',
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('11')),
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
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('13')),
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
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('15')),
                    ),
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
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
          SectionHeader(text: 'Introduction (2 hours)'),
          SubSection(text: 'Definition of project and project management'),
          SubSection(text: 'Project objectives'),
          SubSection(text: 'Classification of projects'),
          SubSection(text: 'Project life cycle'),

          SectionHeader(text: 'Project Management Body of Knowledge (4 hours)'),
          SubSection(text: 'Understanding of project environment'),
          SubSection(
              text:
                  'General management skill, effective and ineffective project managers'),
          SubSection(text: 'Essential interpersonal and managerial skills'),
          SubSection(
              text:
                  'Portfolio and Project Management Institutes’ (PMI) Framework'),
          SubSection(text: 'Advantages of project management'),
          SubSection(text: 'Project management context as per PMI'),

          SectionHeader(text: 'Project and Organizational structure (2 hours)'),
          SubSection(text: 'System view of project management'),
          SubSection(text: 'Functional organization, matrix organization'),
          SubSection(text: 'Organizational structure influences on projects'),

          SectionHeader(text: 'Project Management Process Groups (2 hours)'),
          SubSection(text: 'Project management processes'),
          SubSection(text: 'Overlaps of process groups in a phase'),

          SectionHeader(text: 'Project Integration Management (4 hours)'),
          SubSection(text: 'Develop project charters'),
          SubSection(text: 'Develop preliminary project scope statement'),
          SubSection(text: 'Develop project management plan'),
          SubSection(text: 'Direct and manage project execution'),
          SubSection(text: 'Monitor and control project work'),
          SubSection(text: 'Integrated change control'),
          SubSection(text: 'Close project'),

          SectionHeader(text: 'Project Time Management (4 hours)'),
          SubSection(text: 'Activity definition'),
          SubSection(text: 'Activity sequencing'),
          SubSection(text: 'Activity resources estimating'),
          SubSection(text: 'Schedule development and control'),

          SectionHeader(text: 'Project Cost Management (4 hours)'),
          SubSection(text: 'Cost estimating'),
          SubSection(text: 'Cost budgeting'),
          SubSection(text: 'Cost control process'),

          SectionHeader(text: 'Project Quality Management (3 hours)'),
          SubSection(text: 'Quality theories'),
          SubSection(text: 'Quality planning'),
          SubSection(text: 'Quality assurance'),
          SubSection(text: 'Quality control process'),

          SectionHeader(text: 'Project Communication Management (3 hours)'),
          SubSection(text: 'Importance of communication management'),
          SubSection(text: 'Communications planning process'),
          SubSection(text: 'Information distribution process'),
          SubSection(text: 'Performance reporting process'),

          SectionHeader(text: 'Project Risk Management (4 hours)'),
          SubSection(text: 'Understanding Risk'),
          SubSection(text: 'Risk management planning process'),
          SubSection(text: 'Risk identification'),
          SubSection(text: 'Quantitative risk analysis process'),
          SubSection(text: 'Risk response planning'),
          SubSection(text: 'Risk monitoring and control process'),

          SectionHeader(text: 'Project Procurement Management (3 hours)'),
          SubSection(text: 'Procurement management process flow'),
          SubSection(text: 'Plan purchases and acquisition process'),
          SubSection(text: 'Plan contracting process'),
          SubSection(text: 'Select seller process'),

          SectionHeader(
              text: 'Developing Custom Processes for IT projects (3 hours)'),
          SubSection(text: 'Developing it project management methodology'),
          SubSection(
              text: 'Moving forward with customized management processes'),
          SubSection(text: 'Certified associate in project management'),

          SectionHeader(
              text: 'Balanced scorecard and ICT project management (1 hour)'),
          SubSection(text: 'References'),
          SubSection(
              text:
                  'M. C. Christensen and R.H. Thayer, "The Project Manager’s Guide to Software Engineering’s Best Practices", IEEE computer Society'),
          SubSection(
              text:
                  'Clifford F. Gray, Erik W. Larson, "Project Management: The Management Process", McGraw Hill'),
          SubSection(text: 'Nick Jenkins, "A Project Management Primer"'),
          SubSection(
              text:
                  'Trevor L Young, "A handbook of Project Management", Kogan Page India Private Ltd.'),
          SubSection(text: 'M. Gentle, "Balance Supply and Demand", Compuware'),
          SubSection(text: 'Kelkar, "IT project Management"')
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
