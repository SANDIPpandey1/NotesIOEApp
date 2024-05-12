import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/screens/otherpageappbar.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OtherPageAppBar(
        heading: 'Articles',
        rightIcon: Icons.home,
        onRightIconTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
