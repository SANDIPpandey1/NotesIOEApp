import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class OrganizationandManagement extends StatelessWidget {
  final int initialTabIndex;
  OrganizationandManagement({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orginization and Management',
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
                      child: Center(child: Text('1, 2')),
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
                      child: Center(child: Text('3, 4')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('11')),
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
          SubSection(text: 'System approach applied to Organization'),
          SubSection(text: 'Necessity of Organization'),
          SubSection(text: 'Principles of Organization'),
          SubSection(text: 'Formal and Informal Organizations'),

          SectionHeader(text: 'Management (4 hours)'),
          SubSection(text: 'Functions of Management'),
          SubSection(text: 'Levels of Management'),
          SubSection(text: 'Managerial Skills'),
          SubSection(text: 'Importance of Management'),
          SubSection(text: 'Models of Management'),

          SectionHeader(text: 'Theory of Management (6 hours)'),
          SubSection(text: 'Scientific Management Approach'),
          SubSection(text: 'Administrative Management Approach'),
          SubSection(text: 'Behavioral Management Approach'),
          SubSection(text: 'Modern Management Theories'),

          SectionHeader(text: 'Forms of Ownership (2 hours)'),
          SubSection(text: 'Single Ownership – Advantages and limitations'),
          SubSection(
              text:
                  'Partnership – Types of Partners – Advantages and limitations'),
          SubSection(
              text:
                  'Joint Stock Company – Formation of Joint Stock Company – Advantages and limitations'),
          SubSection(
              text:
                  'Co – operative Societies – Types of Co – operatives – Advantages and limitations'),
          SubSection(text: 'Public Corporations – Advantages and limitations'),

          SectionHeader(text: 'Organizational Structure (2 hours)'),
          SubSection(
              text: 'Line Organization – Advantages and dis – advantages'),
          SubSection(
              text:
                  'Functional Organization – Advantages and dis – advantages'),
          SubSection(
              text:
                  'Line and Staff Organization – Advantages and dis – advantages'),
          SubSection(
              text: 'Committee Organization – Advantages and dis – advantages'),

          SectionHeader(text: 'Purchasing and Marketing Management (4 hours)'),
          SubSection(text: 'Purchasing – Introduction'),
          SubSection(text: 'Functions of Purchasing Department'),
          SubSection(text: 'Methods of Purchasing'),
          SubSection(text: 'Marketing – Introduction'),
          SubSection(text: 'Functions of Marketing'),
          SubSection(text: 'Advertising'),

          SectionHeader(text: 'Personal Management (8 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Functions of Personal Management'),
          SubSection(text: 'Development of Personal Policy'),
          SubSection(text: 'Manpower Planning'),
          SubSection(
              text:
                  'Recruitment and Selection of manpower – Scientific selection'),
          SubSection(text: 'Training and Development of manpower'),
          SubSection(text: 'Job Analysis, Job Evaluation and Merit Rating'),
          SubSection(text: 'Wages and Incentives'),

          SectionHeader(
              text: 'Motivation, Leadership and Entrepreneurship (6 hours)'),
          SubSection(text: 'Motivation'),
          SubSection(text: 'Leadership – Introduction'),
          SubSection(text: 'Entrepreneurship – Introduction'),

          SectionHeader(text: 'Case Studies (2 hours)'),
          SubSection(text: 'Introduction'),
          SubSection(text: 'Objectives of case study'),
          SubSection(text: 'Phases of case study'),
          SubSection(text: 'Steps of case study'),
          SubSection(text: 'Types of case studies'),

          SectionHeader(text: 'Management Information System (5 hours)'),
          SubSection(text: 'Data and Information'),
          SubSection(text: 'Need, function and Importance of MIS'),
          SubSection(text: 'Evolution of MIS'),
          SubSection(text: 'Organizational Structure and MIS'),
          SubSection(text: 'Computers and MIS'),
          SubSection(text: 'Classification of Information Systems'),
          SubSection(
              text: 'Information Support for functional areas of management'),
          SubSection(text: 'Organizing Information Systems'),

          SectionHeader(text: 'Reference Books'),
          SubSection(
              text:
                  '“Industrial Engineering Handbook” , Editor – in – Chief, 4th Edition, McGraw Hill, 19xx'),
          SubSection(
              text:
                  'E. S. Buffa and R. K. Sarin “Modern Production / Operations Management”, 8th Edition, Wiley, 1987'),
          SubSection(
              text:
                  'H. J. Arnold and D. C. Feldman “Organizational Behavior” , McGraw – Hill, 1986'),
          SubSection(
              text:
                  'J. A. Senn, “Information Systems in Management ” , 4th Edition, Wadsworth Inc., 1990'),
          SubSection(
              text:
                  'P. Hershey and K. H. Blanchard, “Management of Organizational Behavior – Utilizing Human Resources ”, 4th Edition, Prentice – Hall Inc., 1982'),
          SubSection(
              text:
                  'M. Mahajan, “Industrial Engineering and production Management” ,Dhanpat Rai and Co. (P) Ltd. , Delhi, 2002'),
          SubSection(
              text:
                  'S. Sadagopan, “Management Information System”, Prentice Hall of India Pvt Ltd, 1997'),
          SubSection(
              text:
                  'C. B. Mamoria “Personnel Management”, Himalaya Publishing House – 1989'),
          SubSection(
              text:
                  'O. P. Khanna, “Industrial Engineering and Management” , Dhanpat Rai Publications (P) Ltd., 2007')
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
