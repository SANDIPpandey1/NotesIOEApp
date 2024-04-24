import 'package:flutter/material.dart';
import 'package:ioe/BCTNotes/bctnotespage.dart';

class IOENotes extends StatelessWidget {
  const IOENotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IOE Notes',
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
                    MaterialPageRoute(builder: (context) => BCTNotes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //    primary: Colors.white,
                  //   onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BCT Notes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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
                    MaterialPageRoute(builder: (context) => BCENotes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //    primary: Colors.white,
                  //   onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BCE Notes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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
                    MaterialPageRoute(builder: (context) => BEXNotes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  //  primary: Colors.white,
                  //  onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BEX Notes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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
                    MaterialPageRoute(builder: (context) => BELNotes()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.white,
                  //onPrimary: Colors.grey[300], // Less grey color on tap
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BEL Notes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black, // Text color
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
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

class BCENotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BCE Notes'),
      ),
      body: Center(
        child: Text('BCE Notes Page'),
      ),
    );
  }
}

class BEXNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BEX Notes'),
      ),
      body: Center(
        child: Text('BEX Notes Page'),
      ),
    );
  }
}

class BELNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BEL Notes'),
      ),
      body: Center(
        child: Text('BEL Notes Page'),
      ),
    );
  }
}
