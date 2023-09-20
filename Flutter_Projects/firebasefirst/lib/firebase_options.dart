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
    apiKey: 'AIzaSyC693oEWtvxGeP4mRUWj-EN9DrHD4KbgTw',
    appId: '1:783426468474:web:d44a918c7244e8604019c3',
    messagingSenderId: '783426468474',
    projectId: 'fir-first-64ef2',
    authDomain: 'fir-first-64ef2.firebaseapp.com',
    storageBucket: 'fir-first-64ef2.appspot.com',
    measurementId: 'G-YDYGWRZXKB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkW_dwXQfVgd4gPTxj2rzxTG62UttpAJI',
    appId: '1:783426468474:android:4501e9e8a231d6b14019c3',
    messagingSenderId: '783426468474',
    projectId: 'fir-first-64ef2',
    storageBucket: 'fir-first-64ef2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBB424ZG8jyVDAGjxUxck1iBbap77tw1nE',
    appId: '1:783426468474:ios:5ce5ec167f5defbc4019c3',
    messagingSenderId: '783426468474',
    projectId: 'fir-first-64ef2',
    storageBucket: 'fir-first-64ef2.appspot.com',
    iosBundleId: 'com.example.firebasefirst',
  );
}