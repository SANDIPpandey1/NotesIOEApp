import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class InternetAndIntranet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Internet And Intranet',
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
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('15')),
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
                      child: Center(child: Text('15')),
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
         SectionHeader(text: 'Introduction [5 hours]'),
    SubSection(text: 'History and Development of Internets and Intranets'),
    SubSection(text: 'IANA, RIR/NIR/LIR and ISPs for internet number management'),
    SubSection(text: 'Internet Domain and Domain Name System'),
    SubSection(text: 'Internet Access Overview'),
    SubSection(text: 'Internet Backbone Networks: Optical Backbone, Marine Cables, Teleports, Satellite and Terrestrial Links'),

SectionHeader(text: 'Internet Protocol Overview [6 hours]'),
    SubSection(text: 'TCP/IP and the IP Layer overview'),
    SubSection(text: 'IPv4 and IPv6 Address Types and Formats'),
    SubSection(text: 'IPv4 and IPv6 Header Structure'),
    SubSection(text: 'Internet RFCs'),

SectionHeader(text: 'Protocols and Client/Server Applications [6 hours]'),
    SubSection(text: 'Standard protocols: SMTP, E-mail Message (RFC22),PGP, POP, IMAP, HTTP, FTP'),
    SubSection(text: 'N-Tiered Client/Server Architecture'),
    SubSection(text: 'Universal Internet Browsing'),
    SubSection(text: 'Multiprotocol Support'),

SectionHeader(text: 'HTTP and the Web Services [8 hours]'),
    SubSection(text: 'HTTP, Web Servers and Web Access'),
    SubSection(text: 'Universal naming with URLs'),
    SubSection(text: 'WWW Technology: HTML, DHTML, WML, XML'),
    SubSection(text: 'Tools: WYS/WYG Authoring Tools'),
    SubSection(text: 'Helper applications: CGI; PERL, JAVA, JAVA SCRIPTS, PHP, ASP, .NET Applications'),
    SubSection(text: 'Introduction to AJAX (Programming)'),
    SubSection(text: 'browser as a rendering engine: text, HTML, gif and jpeg'),

SectionHeader(text: 'Designing Internet Systems and Servers  [8 hours]'),
    SubSection(text: 'Designing of Internet System Network Architecture'),
    SubSection(text: 'Choice of platforms'),
    SubSection(text: 'Server Concepts: WEB, Proxy, RADIUS, MAIL'),
    SubSection(text: 'Cookies'),
    SubSection(text: 'Load Balancing: Proxy Arrays'),
    SubSection(text: 'Server Setup and Configuration Guidelines'),
    SubSection(text: 'Security and System Administration Issues, Firewalls and Content Filtering'),

SectionHeader(text: 'Internet and Intranet Systems Development [6 hours]'),
    SubSection(text: 'Introductions'),
    SubSection(text: 'Benefits and drawbacks of intranets'),
    SubSection(text: 'Protocols, Structure and Scope of Networks'),
    SubSection(text: 'Intranets Resource Assessments: Network Infrastructure, Clients and Server Resources'),
    SubSection(text: 'Intranet Implementation Guidelines'),
    SubSection(text: 'Content Design, Development, Publishing and Management'),
    SubSection(text: 'Intranet Design with Open source Tools: DRUPAL, JUMLA'),
    SubSection(text: 'Tunneling Protocols: VPN'),

SectionHeader(text: 'Internet and Intranet Applications [6 hours]'),
    SubSection(text: 'General Applications: Email, WWW, Gopher, Online Systems'),
    SubSection(text: 'Multimedia and Digital Video/Audio Broadcasting: Video/Audio Conferencing, Internet Relay Chat (IRC)'),
    SubSection(text: 'Broadband Communications, Policy, xDSL and Cable Internet'),
    SubSection(text: 'VoIP, FoIP and IP Interconnection'),
    SubSection(text: 'Datacenters and Data warehousing, packet clearing house'),
    SubSection(text: 'Unified Messaging Systems'),
    SubSection(text: 'Fundamental of e-Commerce'),
    SubSection(text: 'Concept of Grid and Cloud Computing'),
    SubSection(text: 'Practicals'),
        SubSection(text: 'Lab1: Web programming Skill (HTML, PHP, ASP..) and WEB development Tools.'),
        SubSection(text: 'Lab2, 3, 4: Web Programming with DB Connection and Ajax programming.'),
        SubSection(text: 'Lab5,6: Internet & Intranet Site Development (personal/corporate web development)'),
        SubSection(text: 'Lab 7: Web & DNS Server Installation, Configuration and Hosting.'),
        SubSection(text: 'Lab8: presentation of project work developed on lab 5, 6 & 7.'),

SectionHeader(text: 'References'),
    SubSection(text: 'Computer Networks; Andrew S. Tanenbaum, Prentice Hall'),
    SubSection(text: 'Internet and Intranet Engineering; Daniel Minoli, mGraw-Hill'),
    SubSection(text: 'Internetworking with TCP/IP; Comer, D.E and Stevens'),
    SubSection(text: 'RFC 821/822/1543/1738/2068')

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