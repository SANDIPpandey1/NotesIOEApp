import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ProjectEngineering extends StatelessWidget {
  final int initialTabIndex;
  ProjectEngineering({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Project Engineering',
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
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('24')),
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
                      child: Center(child: Text('6')),
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
          SectionHeader(
              text: 'Introduction of Project and Project Management [6 hours]'),
          SubSection(
              text:
                  'Definition of Project, its characteristics, and example of project.'),
          SubSection(text: 'Classification of Project.'),
          SubSection(text: 'Project Objective and Goal.'),
          SubSection(text: 'Project Life Cycle Phases.'),
          SubSection(text: 'Project Environment.'),
          SubSection(text: 'Introduction to Project Management.'),

          SectionHeader(
              text: 'Project Appraisal and Project Formulation [8 hours]'),
          SubSection(text: 'Concept of Project Appraisal'),
          SubSection(text: 'Project Proposal (technical and financial)'),
          SubSection(text: 'Procedure for Developing Project Proposal'),
          SubSection(text: 'Techniques of Project Formulation'),
          SubSection(text: 'Feasibility analysis'),
          SubSection(text: 'Cost Benefit analysis'),
          SubSection(text: 'Input analysis'),
          SubSection(text: 'Environmental analysis'),

          SectionHeader(text: 'Project Planning and Scheduling [12 hours]'),
          SubSection(text: 'Concept of Project Planning and its Importance.'),
          SubSection(text: 'Project Planning Process.'),
          SubSection(text: 'Work Breakdown Structure (WBS)'),
          SubSection(text: 'Project Scheduling with Bar Chart, CPM & PERT'),
          SubSection(
              text:
                  'Project Scheduling with Limited Resources (Resource Leveling and Smoothing).'),
          SubSection(text: 'Introduction to Planning Soft ware - MS Project'),

          SectionHeader(
              text: 'Project Implementation and Controlling [7 hours]'),
          SubSection(
              text: 'Introduction to Monitoring, Evaluation and Controlling'),
          SubSection(text: 'Project Control.'),
          SubSection(text: 'Project Control Cycle'),
          SubSection(
              text: 'Elements of Project Control (time, cost and quality).'),
          SubSection(text: 'Project Schedule Control'),
          SubSection(
              text:
                  'Project Cost Control: Methods and procedure (Earned value analysis)'),
          SubSection(text: 'Project Quality Control'),
          SubSection(
              text:
                  'Introduction to Project Management Information System (PMIS)'),

          SectionHeader(text: 'Project Risk Analysis and Management [7 hours]'),
          SubSection(text: 'Introduction to Project Risk.'),
          SubSection(text: 'Types of Project Risk.'),
          SubSection(text: 'Analysis of Major Sources of Risk'),
          SubSection(text: 'Effective Management of Project Risk.'),
          SubSection(text: 'Risk Management planning'),
          SubSection(text: 'Risk Identification'),
          SubSection(text: 'Qualitative and Quantitative Risk Analysis'),
          SubSection(text: 'Risk Response Planning'),
          SubSection(text: 'Risk Monitoring and Controlling'),

          SectionHeader(text: 'Introduction to Project Financing [5 hours]'),
          SubSection(text: 'Project finance'),
          SubSection(text: 'Capital Structure Planning'),
          SubSection(text: 'Capital Budgeting Decision.'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Writing project Proposal [2 hours]'),
          SubSection(text: 'Scheduling Using Bar chart & CPM [ 4 hours]'),
          SubSection(text: 'Scheduling Using  Planning Software [4 hours]'),
          SubSection(text: 'Project Control Method (EVA) [1 hour]'),
          SubSection(text: 'Capital Structure Planning Exercise [2 hours]'),
          SubSection(text: 'Capital Budgeting Exercise [2 hours]'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Ishwar Adhikari and Santosh Kr. Shrestha, “A text of Project Engineering” 2011, Chandeshwori Publication, First Edition.'),
          SubSection(
              text:
                  'Dhurba P.Rizal, “Project Management” 2001, Ratna pustak bhandar, First Edition.'),
          SubSection(
              text:
                  'E.R. Yescombe, “Principles of Project Finance” 2002, Yescombe-Consulting Limited.'),
          SubSection(
              text:
                  'K. Nagarajan, “Project Management”, ISBN: 81-224-1340-4, New Age International (P) Limited, New Delhi, India, 2001.'),
          SubSection(
              text:
                  'Dr. Govinda Ram Agrawal, “Project Management in Nepal” Edition: 2006, M.K. Publishers and Distributors, Kathmandu, Nepal.')

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
