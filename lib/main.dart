import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino widgets
import 'package:ioe/College_Notes/College_Notes.dart';
import 'package:ioe/FirebaseAPI/firebase_options.dart';
import 'package:ioe/FirebaseAPI/firebaseapi.dart';
import 'package:ioe/IOE_Questions_Page/ioe_questions.dart';
import 'package:ioe/IOE_Syllabys_Pages/ioesyllabus.dart';
import 'package:ioe/IOE_Notes_Page/ioenotes.dart';
import 'package:ioe/constants.dart';
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
        // Use CupertinoThemeData to ensure Cupertino widgets have a consistent theme
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: kblue,
        ),
      ),
      home: AuthPage(),
      navigatorKey: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        // Use CupertinoPageRoute for transitions
        switch (settings.name) {
          case '/ioe_notes':
            return CupertinoPageRoute(
                builder: (_) => IOENotes(), settings: settings);
          case '/ioe_syllabus':
            return CupertinoPageRoute(
                builder: (_) => IOESyllabus(), settings: settings);
          case '/ioe_questions':
            return CupertinoPageRoute(
                builder: (_) => IOEQuestions(), settings: settings);
          case '/college_notes':
            return CupertinoPageRoute(
                builder: (_) => CollegeNotes(), settings: settings);
          case '/news_results':
            return CupertinoPageRoute(
                builder: (_) => NewsResults(), settings: settings);
          case '/Articles':
            return CupertinoPageRoute(
                builder: (_) => Articles(), settings: settings);
          // Add more CupertinoPageRoute transitions as needed
          default:
            return CupertinoPageRoute(
                builder: (_) => AuthPage(), settings: settings);
        }
      },
    );
  }
}
