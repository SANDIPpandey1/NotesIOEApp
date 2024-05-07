import 'package:flutter/material.dart';
import 'package:ioe/College_Notes/College_Notes.dart';
import 'package:ioe/FirebaseAPI/firebase_options.dart';
import 'package:ioe/FirebaseAPI/firebaseapi.dart';
import 'package:ioe/IOE_Questions_Page/ioe_questions.dart';
import 'package:ioe/IOE_Syllabys_Pages/ioesyllabus.dart';
import 'package:ioe/IOE_Notes_Page/ioenotes.dart';
import 'package:ioe/screens/Articles.dart';
import 'package:ioe/screens/News_Results.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ioe/LoginPages/authpage.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAPI().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes IOE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
      navigatorKey: navigatorKey,
      routes: {
        '/ioe_notes': (context) => IOENotes(),
        '/ioe_syllabus': (context) => IOESyllabus(),
        '/ioe_questions': (context) => IOE_Questions(),
        '/college_notes': (context) => CollegeNotes(),
        '/news_results': (context) => NewsResults(),
        '/Articles': (context) => Articles(),
        //'/notification': (context) => NotificationPage(),
        //test
      },
    );
  }
}
