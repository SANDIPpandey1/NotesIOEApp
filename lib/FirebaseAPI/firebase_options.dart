// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCS6bM0YGR0YssEPzz9GOvEgqSE87aPg-U',
    appId: '1:1075312743224:web:7458b4f361a3f8ffaba7cd',
    messagingSenderId: '1075312743224',
    projectId: 'notesioelogin',
    authDomain: 'notesioelogin.firebaseapp.com',
    databaseURL: 'https://notesioelogin-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'notesioelogin.appspot.com',
    measurementId: 'G-ZWHXV9H47D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCB2lvB_ETBN2UmMLgBAgVakKWF2zEuQfk',
    appId: '1:1075312743224:android:6b756a40c6b3167aaba7cd',
    messagingSenderId: '1075312743224',
    projectId: 'notesioelogin',
    databaseURL: 'https://notesioelogin-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'notesioelogin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJiLbWasG2WjHfKttlHdfSb-suy9s2B30',
    appId: '1:1075312743224:ios:5cddd8e679c7a9c8aba7cd',
    messagingSenderId: '1075312743224',
    projectId: 'notesioelogin',
    databaseURL: 'https://notesioelogin-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'notesioelogin.appspot.com',
    iosBundleId: 'com.example.ioe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJiLbWasG2WjHfKttlHdfSb-suy9s2B30',
    appId: '1:1075312743224:ios:5cddd8e679c7a9c8aba7cd',
    messagingSenderId: '1075312743224',
    projectId: 'notesioelogin',
    databaseURL: 'https://notesioelogin-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'notesioelogin.appspot.com',
    iosBundleId: 'com.example.ioe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCS6bM0YGR0YssEPzz9GOvEgqSE87aPg-U',
    appId: '1:1075312743224:web:5fbd9d5a8c05c33aaba7cd',
    messagingSenderId: '1075312743224',
    projectId: 'notesioelogin',
    authDomain: 'notesioelogin.firebaseapp.com',
    databaseURL: 'https://notesioelogin-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'notesioelogin.appspot.com',
    measurementId: 'G-ZLMYK9CRKK',
  );
}
