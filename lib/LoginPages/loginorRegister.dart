import 'package:flutter/widgets.dart';
import 'package:ioe/LoginPages/loginpage.dart';
import 'package:ioe/LoginPages/registerpage.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void toggelPages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: toggelPages,
      );
    } else {
      return RegisterPage(
        onTap: toggelPages,
      );
    }
  }
}
