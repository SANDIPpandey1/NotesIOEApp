import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewsResults extends StatelessWidget {
  const NewsResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'News Page',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
