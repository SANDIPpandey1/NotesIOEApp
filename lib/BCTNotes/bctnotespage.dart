import 'package:flutter/material.dart';

class BCTNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BCT Notes'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BCTSem1()),
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
                      'BCT Semester 1',
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
        ]),
      ),
    );
  }
}

class BCTSem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BCTSem1 Notes'),
      ),
      body: Center(
        child: Text('BCTSem1 Notes Page'),
      ),
    );
  }
}
