import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(1),
        color: kblue,
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}
