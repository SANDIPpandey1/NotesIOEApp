import 'package:flutter/material.dart';
import 'package:ioe/SyllabysPages/bcesyllabys.dart';
import 'package:ioe/SyllabysPages/bctsyllabus.dart';
import 'package:ioe/SyllabysPages/belsyllabys.dart';
import 'package:ioe/SyllabysPages/bexsyllabus.dart';

class IOESyllabus extends StatelessWidget {
  const IOESyllabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IOE Syllabus',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BCTSyllabus()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //primary: Colors.white,
                  //onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'BCT Syllabus',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0), // Increase the padding between buttons
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BCESyllabus()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //primary: Colors.white,
                  //onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'BCE Syllabus',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0), // Increase the padding between buttons
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BEXSyllabus()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.white,
                  // onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'BEX Syllabus',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0), // Increase the padding between buttons
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BELSyllabus()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //primary: Colors.white,
                  //onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'BEL Syllabus',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            // Add more buttons for additional notes categories
          ],
        ),
      ),
    );
  }
}
