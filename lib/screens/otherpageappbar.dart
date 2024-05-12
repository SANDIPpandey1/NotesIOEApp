import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
    return SafeArea(
      child: AppBar(
        title: Text(
          heading,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20, // Adjust font size as needed
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              rightIcon,
              color: Colors.white,
            ),
            onPressed: onRightIconTap,
          ),
        ],
        backgroundColor: kblue, // Change to your preferred color
        toolbarHeight: 80, // Adjust toolbar height as needed
        elevation: 0, // Remove elevation to avoid shadow under app bar
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), // Adjust the border radius
            bottomRight: Radius.circular(10), // Adjust the border radius
          ),
        ),
        // Adjust the shadow blur radius
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(64); // Specify the preferred size of the app bar
}
