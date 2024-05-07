import 'package:flutter/material.dart';

import 'package:ioe/IOE_Questions_Page/BCT%20Questions/bctquestionspage.dart';

import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class IOEQuestions extends StatelessWidget {
  const IOEQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'IOE Questions',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InsideButtons(
              text: 'Computer Engineering (BCT)',
              icon: Icons.computer,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTQuestions()),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Civil Engineering (BCE)',
              icon: Icons.construction,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTQuestions()),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Electonics Engineering (BEX)',
              icon: Icons.signal_cellular_connected_no_internet_4_bar_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTQuestions()),
                );
              },
            ),
            SizedBox(height: 15.0),
            InsideButtons(
              text: 'Electrical Engineering (BEL)',
              icon: Icons.connect_without_contact,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTQuestions()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
