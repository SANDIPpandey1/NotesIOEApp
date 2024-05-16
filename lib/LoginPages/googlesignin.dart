import 'dart:io'; // Import for SocketException
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  String? _previousRoute;

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      // Attempt to sign out before starting a new sign-in process
      await _googleSignIn.signOut();

      // Store the current route
      _updatePreviousRoute(context);

      // Show circular loading indicator
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

        // Sign in to Firebase with the Google credentials
        await FirebaseAuth.instance.signInWithCredential(credential);
      } else {
        // Handle the case where user cancels the sign-in
        _handleSignInError(
            context, 'Sign-in process was cancelled by the user.');
      }
    } on SocketException {
      // Handle no internet connection
      _handleSignInError(context,
          'No internet connection. Please connect to the internet and try again.');
    } catch (error) {
      // Handle other errors gracefully
      _handleSignInError(context, error);
    } finally {
      // Always close the loading indicator
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
    // Log the error or send it to an error tracking service
    print('Sign-in error: $error');

    // Show an error dialog with a specific message
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

    // Optionally, navigate back to the previous route if it's not null and if navigation can pop
    if (_previousRoute != null && Navigator.canPop(context)) {
      Navigator.of(context).popAndPushNamed(_previousRoute!);
    }
  }
}
