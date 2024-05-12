import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class MinorProject extends StatelessWidget {
  final int initialTabIndex;
  MinorProject({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Minor Project',
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

          SectionHeader(text: 'Project ideas and proposal guidance (4 hours)'),
          SubSection(text: 'Generating and Evaluating Project Ideas'),
          SubSection(text: 'Writing a Project Proposal'),
          SubSection(text: 'Defining Project Scope and Objectives'),

          SectionHeader(text: 'Application development (10 hours)'),
          SubSection(text: 'Visual programming (object oriented)'),
          SubSection(text: 'Language basics'),
          SubSection(text: 'Frameworks and APIs'),
          SubSection(text: 'Programming basics and design patterns'),

          SectionHeader(
              text:
                  'Project management, team work and collaboration (8 hours)'),
          SubSection(text: 'Project management techniques'),
          SubSection(text: 'Collaborative development environment'),
          SubSection(text: 'Teamwork and Communication Strategies'),

          SectionHeader(text: 'Project guidance (5 hours)'),
          SubSection(text: 'Milestone Planning and Tracking'),
          SubSection(text: 'Identifying and Managing Risks'),
          SubSection(text: 'Providing Feedback and Support'),

          SectionHeader(text: 'Project work (30 hours)'),
          SubSection(text: 'Implementation of Project Ideas'),
          SubSection(text: 'Iterative Development and Testing'),
          SubSection(text: 'Adapting to Changing Requirements'),

          SectionHeader(text: 'Project documentation guidance (3 hours)'),
          SubSection(text: 'Writing Project Documentation'),
          SubSection(text: 'Creating User Manuals and Technical Guides'),
          SubSection(text: 'Presenting and Demonstrating Project Results'),
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
