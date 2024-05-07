import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';

class OtherPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String heading;
  final IconData rightIcon;
  final VoidCallback? onRightIconTap;

  const OtherPageAppBar({
    Key? key,
    required this.heading,
    required this.rightIcon,
    this.onRightIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        heading,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context); // Use a callback function for onTap
        },
        child: Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            onTap: onRightIconTap,
            child: Icon(
              rightIcon,
              size: 25,
              color: Colors.black,
            ),
          ),
        ),
      ],
      //backgroundColor: kblue,
      toolbarHeight: 65,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(65); // Specify the preferred size of the app bar
}
