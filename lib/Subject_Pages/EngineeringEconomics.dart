import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringEconomics extends StatelessWidget {
  final int initialTabIndex;
  EngineeringEconomics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Economics',
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
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('8')),
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
          SectionHeader(text: 'Introduction [3 hours]'),
          SubSection(text: 'Origin of Engineering Economy'),
          SubSection(text: 'Principles of Engineering Economy'),
          SubSection(text: 'Role of Engineers in Decision Making'),
          SubSection(text: 'Cash Flow Diagram'),

          SectionHeader(text: 'Interest and Time Value of Money [6 hours]'),
          SubSection(text: 'Introduction to Time Value of Money'),
          SubSection(text: 'Simple Interest'),
          SubSection(text: 'Compound Interest'),
          SubSection(text: 'Nominal Interest rate'),
          SubSection(text: 'Effective Interest rate'),
          SubSection(text: 'Continuous Compounding'),
          SubSection(text: 'Economic Equivalence'),
          SubSection(text: 'Development of Interest Formulas'),
          SubSection(text: 'The Five Types of Cash flows'),
          SubSection(text: 'Single Cash flow Formulas'),
          SubSection(text: 'Uneven Payment Series'),
          SubSection(text: 'Equal Payment Series'),
          SubSection(text: 'Linear Gradient Series'),
          SubSection(text: 'Geometric Gradient Series'),

          SectionHeader(
              text:
                  'Basic Methodologies of Engineering Economic Analysis [8 hours]'),
          SubSection(
              text:
                  'Determining Minimum Attractive (Acceptable) Rate of Return (MARR)'),
          SubSection(text: 'Payback Period Method'),
          SubSection(text: 'Equivalent Worth Methods'),
          SubSection(text: 'Present Worth Method'),
          SubSection(text: 'Future Worth Method'),
          SubSection(text: 'Annual Worth Method'),
          SubSection(text: 'Rate of Return Methods'),
          SubSection(text: 'Internal Rate of Return Method'),
          SubSection(text: 'External/Modified Rate of Return Method'),
          SubSection(
              text:
                  'Public Sector Economic Analysis (Benefit Cost Ratio Method)'),
          SubSection(text: 'Introduction to Lifecycle Costing'),
          SubSection(text: 'Introduction to Financial and Economic Analysis'),

          SectionHeader(text: 'Comparative Analysis of Alternatives [6 hours]'),
          SubSection(
              text:
                  'Comparing Mutually Exclusive Alternatives having Same useful life by'),
          SubSection(text: 'Payback Period Method and Equivalent Worth Method'),
          SubSection(
              text: 'Rate of Return Methods and Benefit Cost Ratio Method'),
          SubSection(
              text:
                  'Comparing Mutually Exclusive Alternatives having different useful lives by'),
          SubSection(text: 'Repeatability Assumption'),
          SubSection(text: 'Co‐terminated Assumption'),
          SubSection(text: 'Capitalized Worth Method'),
          SubSection(
              text:
                  'Comparing Mutually Exclusive, Contingent and Independent Projects in Combination'),

          SectionHeader(text: 'Replacement Analysis: [6 hours]'),
          SubSection(text: 'Fundamentals of Replacement Analysis'),
          SubSection(text: 'Basic Concepts and Terminology'),
          SubSection(text: 'Approaches for Comparing Defender and Challenger'),
          SubSection(text: 'Economic Service Life of Challenger and Defender'),
          SubSection(
              text: 'Replacement Analysis When Required Service Life is Long'),
          SubSection(text: 'Required Assumptions and Decision Framework'),
          SubSection(
              text: 'Replacement Analysis under the Infinite Planning Horizon'),
          SubSection(
              text: 'Replacement Analysis under the Finite Planning Horizon'),

          SectionHeader(text: 'Risk Analysis [6 hours]'),
          SubSection(text: 'Origin/Sources of Project Risks'),
          SubSection(text: 'Methods of Describing Project Risks'),
          SubSection(text: 'Sensitivity Analysis'),
          SubSection(text: 'Breakeven Analysis'),
          SubSection(text: 'Scenario Analysis'),
          SubSection(text: 'Probability Concept of Economic Analysis'),
          SubSection(text: 'Decision Tree and Sequential Investment Decisions'),

          SectionHeader(
              text: 'Depreciation and Corporate Income Taxes [6 hours]'),
          SubSection(text: 'Concept and Terminology of Depreciation'),
          SubSection(text: 'Basic Methods of Depreciation'),
          SubSection(text: 'Straight line method'),
          SubSection(text: 'Declining Balance Method'),
          SubSection(text: 'Sinking Fund Method'),
          SubSection(text: 'Sum of the Year Digit Method'),
          SubSection(text: 'Modified Accelerated Cost Recovery System (MACRS)'),
          SubSection(text: 'Introduction to Corporate Income Tax'),
          SubSection(text: 'After Tax Cash flow Estimate'),
          SubSection(
              text: 'General Procedure for Making After Tax Economic Analysis'),

          SectionHeader(
              text: 'Inflation and Its Impact on Project Cashflows. [4 hours]'),
          SubSection(text: 'Concept of Inflation'),
          SubSection(text: 'Measuring Inflation'),
          SubSection(text: 'Equivalence Calculation Under Inflation'),
          SubSection(text: 'Impact of Inflation on Economic Evaluation'),

          SectionHeader(text: 'Tutorials:'),
          SubSection(text: 'Assignments'),
          SubSection(text: 'Quizzes and 1 Case study'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Chan S. Park, Contemporary Engineering Economics, Prentice Hall, Inc.'),
          SubSection(
              text:
                  'E. Paul De Garmo, William G. Sullivan and James A. Bontadelli, Engineering Economy, MC Milan Publishing Company.'),
          SubSection(
              text:
                  'James L. Riggs, David D. Bedworth and Sabah U. Randhawa, Engineering Economics, Tata MCGraw Hill Education Private Limited.')
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
