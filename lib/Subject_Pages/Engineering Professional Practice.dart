import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineeringProfessional extends StatelessWidget {
  final int initialTabIndex;
  EngineeringProfessional({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Professional Practice',
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
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
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
          SectionHeader(text: 'History of Engineering Practices[3 hours]'),
          SubSection(text: 'Man and Society'),
          SubSection(text: 'Technology and Society'),
          SubSection(
              text: 'History of Engineering Practice in Eastern Society'),
          SubSection(
              text: 'History of Engineering Practice in Western society'),
          SubSection(text: 'Engineering Practices in Nepal'),

          SectionHeader(text: 'Profession and Ethics[6 hours]'),
          SubSection(text: 'Profession: Definition and Characteristics'),
          SubSection(text: 'Professional Institutions'),
          SubSection(
              text:
                  'Relation of an Engineer with Client, Contractor and Fellow Engineers'),
          SubSection(text: 'Ethics, Code of Ethics and Engineering Ethics'),
          SubSection(text: 'Moral Dilemma and Ethical Decision Making'),
          SubSection(text: 'Detailed Duties of an Engineer and Architect'),
          SubSection(text: 'Liability and Negligence'),

          SectionHeader(text: 'Professional Practices in Nepal[3 hours]'),
          SubSection(text: 'Public Sector practices'),
          SubSection(text: 'Private Sector Practices'),
          SubSection(
              text:
                  'General Job Descriptions of Fresh Graduates in both Public and Private Sector'),

          SectionHeader(text: 'Contract Management[6 hours]'),
          SubSection(text: 'Methods of work execution/contracting'),
          SubSection(text: 'Types of Contracts'),
          SubSection(text: 'Tendering Procedure'),
          SubSection(text: 'Contract agreement'),

          SectionHeader(text: 'Regulatory Environment[5 hours]'),
          SubSection(text: 'Nepal Engineering Council Act'),
          SubSection(text: 'Labor Law'),
          SubSection(text: 'Intellectual Property Right'),
          SubSection(text: 'Building Codes and Bylaws'),
          SubSection(text: 'Company Registration'),

          SectionHeader(text: 'Contemporary Issues in Engineering[3 hours]'),
          SubSection(text: 'Globalization and Cross Cultural Issues'),
          SubSection(text: 'Public Private Partnership'),
          SubSection(text: 'Safety, Risk and Benefit Analysis'),
          SubSection(text: 'Development and Environment'),
          SubSection(text: 'Conflict and Dispute Management'),

          SectionHeader(
              text: 'Case Studies based on Engineering Practices  [4 hours]'),
          SubSection(text: 'References:'),
          SubSection(
              text:
                  'Carson Morrison and Philip Hughes “Professional engineering Practice – Ethical Aspects”, McGraw-Hill Ryerson Ltd.’ Toronto 1982'),
          SubSection(
              text:
                  'DrRajendraAdhikari, “Engineering Professional Practice – Nepalese and international Perspectives” Pashupati Publishing House, Kathmandu Nepal 2010'),
          SubSection(
              text:
                  'M. Govindarajan; S Natarajan and V.S. Senthikumar., “ Engineering Ethics” – PHI Learning Pvt. Ltd. New Delhi 2009'),
          SubSection(text: 'Nepal Engineering Council Act'),
          SubSection(text: 'Contract Act'),
          SubSection(text: 'Labor Act'),
          SubSection(text: 'Company Act'),
          SubSection(text: 'Copyright Act'),
          SubSection(text: 'Public Procurement Act'),
          SubSection(text: 'Building By-Laws')
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
