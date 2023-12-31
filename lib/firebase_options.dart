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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAJCugAITeGE7C0rwXS0ku7HPcOpz0krKM',
    appId: '1:118181095083:web:b73cc6588e6601c8e7b9ee',
    messagingSenderId: '118181095083',
    projectId: 'virtual-beachclub',
    authDomain: 'virtual-beachclub.firebaseapp.com',
    storageBucket: 'virtual-beachclub.appspot.com',
    measurementId: 'G-B98WTXV5XN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-TwVsZskj_1NrJscchzx7j52VwwAn8jU',
    appId: '1:118181095083:android:bdfec3492e170550e7b9ee',
    messagingSenderId: '118181095083',
    projectId: 'virtual-beachclub',
    storageBucket: 'virtual-beachclub.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAUXX58K5s8jgoRhqeF5lLtTw6PPiyZxY',
    appId: '1:118181095083:ios:a8b2b8562d0d59dee7b9ee',
    messagingSenderId: '118181095083',
    projectId: 'virtual-beachclub',
    storageBucket: 'virtual-beachclub.appspot.com',
    iosClientId: '118181095083-crvonu03tcujeftlsihqdpccnnk7icb2.apps.googleusercontent.com',
    iosBundleId: 'com.example.beachClubVirtual',
  );
}
