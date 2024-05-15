import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ComputerNetworkandSecurity extends StatelessWidget {
  final int initialTabIndex;
  ComputerNetworkandSecurity({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Computer Network and Security',
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
                      child: Center(child: Text('3')),
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
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
          SectionHeader(text: 'Introduction to Computer Network (5 hours)'),
          SubSection(text: 'Uses of Computer Network'),
          SubSection(
              text: 'Networking model client/server, p2p, active network'),
          SubSection(text: 'Protocols and Standards'),
          SubSection(text: 'OSI model and TCP/IP model'),
          SubSection(text: 'Comparison of OSI and TCP/IP model'),
          SubSection(
              text:
                  'Example network: The Internet, X.25, Frame Relay, Ethernet, VoIP, NGN and MPLS, xDSL.'),

          SectionHeader(text: 'Physical Layer (5 hours)'),
          SubSection(text: 'Network monitoring: delay, latency, throughput'),
          SubSection(
              text:
                  'Transmission media: Twisted pair, Coaxial, Fiber optic, Line-of-site, Satellite'),
          SubSection(
              text:
                  'Multiplexing, Circuit switching, Packet switching, VC Switching, Telecommunication switching system (Networking of Telephone exchanges)'),
          SubSection(text: 'ISDN: Architecture, Interface, and Signaling'),

          SectionHeader(text: 'Data Link Layer (5 hours)'),
          SubSection(text: 'Functions of Data link layer'),
          SubSection(text: 'Framing'),
          SubSection(text: 'Error Detection and Corrections'),
          SubSection(text: 'Flow Control'),
          SubSection(text: 'Examples of Data Link Protocol, HDLC, PPP'),
          SubSection(text: 'The Medium Access Sub-layer'),
          SubSection(text: 'The channel allocation problem'),
          SubSection(text: 'Multiple Access Protocols'),
          SubSection(text: 'Ethernet'),
          SubSection(
              text:
                  'Networks: FDDI, ALOHA, VLAN, CSMA/CD, IEEE 802.3(Ethernet), 802.4(Token Bus), 802.5(Token Ring), and 802.1(Wireless LAN).'),

          SectionHeader(text: 'Network Layer (9 hours)'),
          SubSection(
              text:
                  'Internetworking &devices: Repeaters, Hubs, Bridges, Switches, Router, Gateway'),
          SubSection(text: 'Addressing: Internet address, classful address'),
          SubSection(text: 'Subnetting'),
          SubSection(
              text:
                  'Routing: techniques, static vs. dynamic routing , routing table for classful address'),
          SubSection(
              text:
                  'Routing Protocols: RIP, OSPF, BGP, Unicast and multicast routing protocols'),
          SubSection(
              text:
                  'Routing algorithms: shortest path algorithm, flooding, distance vector routing, link state routing; Protocols: ARP, RARP, IP, ICMP'),

          SectionHeader(text: 'Transport Layer (5 hours)'),
          SubSection(
              text:
                  'The transport service: Services provided to the upper layers'),
          SubSection(text: 'Transport protocols: UDP, TCP'),
          SubSection(text: 'Port and Socket'),
          SubSection(text: 'Connection establishment, Connection release'),
          SubSection(text: 'Flow control & buffering'),
          SubSection(text: 'Multiplexing & de-multiplexing'),
          SubSection(
              text:
                  'Congestion control algorithm: Token Bucket and Leaky BucketTransport Layer'),

          SectionHeader(text: 'Application Layer (5 hours)'),
          SubSection(text: 'Web: HTTP & HTTPS'),
          SubSection(text: 'File Transfer: FTP, PuTTY, WinSCP'),
          SubSection(text: 'Electronic Mail: SMTP, POP3, IMAP'),
          SubSection(text: 'DNS'),
          SubSection(text: 'P2PApplications'),
          SubSection(text: 'Socket Programming'),
          SubSection(
              text:
                  'Application server concept: proxy caching, Web/Mail/DNS server optimization'),
          SubSection(
              text:
                  'Concept of traffic analyzer: MRTG, PRTG, SNMP, Packet tracer, Wireshark.'),

          SectionHeader(text: 'Introduction to IPV6 (4 hours)'),
          SubSection(text: 'IPv6- Advantages'),
          SubSection(text: 'Packet formats'),
          SubSection(text: 'Extension headers'),
          SubSection(
              text:
                  'Transition from IPv4 to IPv6: Dual stack, Tunneling, Header Translation'),
          SubSection(text: 'Multicasting'),

          SectionHeader(text: 'Network Security (7 hours)'),
          SubSection(text: 'Properties of secure communication'),
          SubSection(
              text: 'Principles of cryptography: Symmetric Key and Public Key'),
          SubSection(text: 'RSA Algorithm'),
          SubSection(text: 'Digital Signatures'),
          SubSection(text: 'Securing e-mail (PGP)'),
          SubSection(text: 'Securing TCP connections (SSL)'),
          SubSection(text: 'Network layer security (IPsec, VPN)'),
          SubSection(text: 'Securing wireless LANs (WEP)'),
          SubSection(
              text:
                  'Firewalls: Application Gateway and Packet Filtering, and IDS'),

          SectionHeader(text: 'Practical:'),
          SubSection(text: 'Network wiring and LAN setup'),
          SubSection(text: 'Router Basic Configuration'),
          SubSection(text: 'Static and Dynamic Routing'),
          SubSection(text: 'Creating VLAN'),
          SubSection(text: 'Router access-list configuration'),
          SubSection(text: 'Basic Network setup on Linux'),
          SubSection(text: 'Setup of Web Server, DNS Server, DHCP Server'),
          SubSection(text: 'Virtualizations'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  'A.S. Tanenbaum, “Computer Networks”, 3rd Edition, Prentice Hall India, 1997.'),
          SubSection(
              text:
                  'W. Stallings, “Data and Computer Communication”, Macmillan Press, 1989.'),
          SubSection(
              text:
                  'Kurose Ross, “Computer Networking: A top down approach”, 2nd Edition, Pearson Education'),
          SubSection(
              text:
                  'Larry L. Peterson, Bruce S. Davie, “Computer Networks: A Systems Approach”, 3rd Edition, Morgan Kaufmann Publishers')
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
