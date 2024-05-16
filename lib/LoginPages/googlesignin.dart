// Your updated googlesignin.dart file
// I've enhanced error handling for different scenarios

import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  String? _previousRoute;

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      await _googleSignIn.signOut();
      _updatePreviousRoute(context);
      _showLoadingIndicator(context);

      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
      } else {
        _handleSignInError(
            context, 'Sign-in process was cancelled by the user.');
      }
    } on SocketException {
      _handleSignInError(context,
          'No internet connection. Please connect to the internet and try again.');
    } catch (error) {
      _handleSignInError(context, 'An error occurred during sign-in.');
    } finally {
      if (Navigator.canPop(context)) {
        Navigator.of(context, rootNavigator: true).pop();
      }
    }
  }

  void _updatePreviousRoute(BuildContext context) {
    _previousRoute = ModalRoute.of(context)?.settings.name;
  }

  void _showLoadingIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  void _handleSignInError(BuildContext context, dynamic error) {
    print('Sign-in error: $error');

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Sign-In Error'),
          content: Text(error.toString()),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );

    if (_previousRoute != null && Navigator.canPop(context)) {
      Navigator.of(context).popAndPushNamed(_previousRoute!);
    }
  }
}
