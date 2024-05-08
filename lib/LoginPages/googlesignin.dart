import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class AuthService {
  Future<void> signInWithGoogle(BuildContext context) async {
    // Show circular loading indicator
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent user from dismissing dialog
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(), // Circular loading indicator
        );
      },
    );

    try {
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      if (gUser != null) {
        final GoogleSignInAuthentication gAuth = await gUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);

        // Close the loading dialog after sign-in is complete
        Navigator.of(context).pop();
      } else {
        // Handle null GoogleSignInAccount (user cancelled sign-in)
        // Close the loading dialog
        Navigator.of(context).pop();
        // Show any error message or perform any other action
        throw FirebaseAuthException(
          code: 'user-cancelled',
          message: 'User cancelled the sign-in process.',
        );
      }
    } catch (error) {
      // Handle sign-in errors
      // Close the loading dialog
      Navigator.of(context).pop();
      // Show error message or perform any other action
      String errorMessage = 'An error occurred during sign-in.';
      if (error is FirebaseAuthException) {
        errorMessage = error.message ?? errorMessage;
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign-in Error'),
            content: Text(errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
