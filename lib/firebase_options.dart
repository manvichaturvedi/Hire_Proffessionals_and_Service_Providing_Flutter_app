// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD_RYM6BAQAreoNo6NtFnDkmtE62OY5oU0',
    appId: '1:58038389787:web:e955c324fb68899464bcbe',
    messagingSenderId: '58038389787',
    projectId: 'hireproffapp',
    authDomain: 'hireproffapp.firebaseapp.com',
    databaseURL: 'https://hireproffapp-default-rtdb.firebaseio.com',
    storageBucket: 'hireproffapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAuQcskzNnUdri_GH1LNW6zc3Yb0gfzEM',
    appId: '1:58038389787:android:d9e6a4fce49e79ea64bcbe',
    messagingSenderId: '58038389787',
    projectId: 'hireproffapp',
    databaseURL: 'https://hireproffapp-default-rtdb.firebaseio.com',
    storageBucket: 'hireproffapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoK6_bMHJyw7K5DfjW77mZxIgTeZR0RZg',
    appId: '1:58038389787:ios:8a88a6b16b482fed64bcbe',
    messagingSenderId: '58038389787',
    projectId: 'hireproffapp',
    databaseURL: 'https://hireproffapp-default-rtdb.firebaseio.com',
    storageBucket: 'hireproffapp.appspot.com',
    iosBundleId: 'com.example.hireproffapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoK6_bMHJyw7K5DfjW77mZxIgTeZR0RZg',
    appId: '1:58038389787:ios:354c170d9d42860764bcbe',
    messagingSenderId: '58038389787',
    projectId: 'hireproffapp',
    databaseURL: 'https://hireproffapp-default-rtdb.firebaseio.com',
    storageBucket: 'hireproffapp.appspot.com',
    iosBundleId: 'com.example.hireproffapp.RunnerTests',
  );
}
