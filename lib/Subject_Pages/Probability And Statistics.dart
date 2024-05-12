import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ProbabilityAndStatistics extends StatelessWidget {
  final int initialTabIndex;
  ProbabilityAndStatistics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Probability and Statistics',
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
                      child: Center(child: Text('4')),
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
                      child: Center(child: Text('7')),
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
                      child: Center(child: Text('8')),
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
          SectionHeader(
              text: 'Descriptive Statistics and Basic Probability (6 hours)'),
          SubSection(
              text:
                  'Introductions in statistics and its importance in engineering'),
          SubSection(
              text:
                  'Describing data with graphs (bar, pie, line diagram, box plot)'),
          SubSection(
              text:
                  'Describing data with numerical measure (measuring center, measuring variability)'),
          SubSection(
              text:
                  'Basic probability additive law, multiplic active law, Baye’s theorem'),

          SectionHeader(text: 'Discrete Probability Distribution (6 hours)'),
          SubSection(text: 'Discrete random variable'),
          SubSection(text: 'Binomial probability distributions'),
          SubSection(text: 'Negative binomial distribution'),
          SubSection(text: 'Poisson distribution'),
          SubSection(text: 'Hypergeometric distributions'),

          SectionHeader(text: 'Continuous Probability Distributions (6 hours)'),
          SubSection(
              text: 'Continuous random variable and probability densities'),
          SubSection(text: 'Normal distribution'),
          SubSection(text: 'Gamma distribution'),
          SubSection(text: 'Chi-square distribution'),

          SectionHeader(text: 'Sampling Distribution (5 hours)'),
          SubSection(text: 'Population and sample'),
          SubSection(text: 'Central limit theorems'),
          SubSection(text: 'Sampling distribution of sample mean'),
          SubSection(text: 'Sampling distributing of sampling proportion'),

          SectionHeader(text: 'Correlation and regression (6 hours)'),
          SubSection(text: 'Least square methods'),
          SubSection(
              text: 'An analysis of variance of linear regression model'),
          SubSection(text: 'Inferences concerning least square method'),
          SubSection(text: 'Multiple correlation and regression'),

          SectionHeader(text: 'Inference concerning mean (6 hours)'),
          SubSection(text: 'Point estimation and interval estimation'),
          SubSection(text: 'Test of hypothesis'),
          SubSection(text: 'Hypothesis test concerning one mean'),
          SubSection(text: 'Hypothesis test concerning two mean'),
          SubSection(text: 'One way ANOVA'),

          SectionHeader(text: 'Inference concerning proportion (6 hours)'),
          SubSection(text: 'Estimation of proportions'),
          SubSection(text: 'Hypotheses concerning one proportion'),
          SubSection(text: 'Hypotheses concerning two proportions'),
          SubSection(text: 'Chi-square test of independence'),

          SectionHeader(
              text:
                  'Application of computer on statistical data computing (4 hours)'),
          SubSection(
              text:
                  'Application of computer in computing statistical problem e.g. Scientific Calculator, EXCEL, SPSS, Matlab, etc.'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'Richard A. Johnson, “Probability and statistics for engineers 7th edition, Miller and Freund’s publication'),
          SubSection(
              text:
                  'Jay L devorce, probability and statistics for engineering and the sciences, brooks/ Cole publishing company, Monterey, California, 1982.'),
          SubSection(
              text:
                  'Richard. Levin, David s Rubin, statistics for management. Prentice hall publication'),
          SubSection(
              text:
                  'Mendenhall beaver, introduction probability and statistics 12th edition, Thomson brooks/Cole')
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
