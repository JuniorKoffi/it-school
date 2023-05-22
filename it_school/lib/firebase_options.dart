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
    apiKey: 'AIzaSyCE84rbvxw86GgcuIdR60jSBD_res5UccY',
    appId: '1:710023073781:web:a61b44b9b4f1cbad849abc',
    messagingSenderId: '710023073781',
    projectId: 'it-school-fba9b',
    authDomain: 'it-school-fba9b.firebaseapp.com',
    storageBucket: 'it-school-fba9b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD93VNZiQ8_YZ_o51BgyQw0vw2jY60kZMw',
    appId: '1:710023073781:android:280ff82270609d15849abc',
    messagingSenderId: '710023073781',
    projectId: 'it-school-fba9b',
    storageBucket: 'it-school-fba9b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAL4U_pFb_g5_rjacd5pSiyS9jDZ6LUvfo',
    appId: '1:710023073781:ios:d35636c28dde9cb1849abc',
    messagingSenderId: '710023073781',
    projectId: 'it-school-fba9b',
    storageBucket: 'it-school-fba9b.appspot.com',
    iosClientId: '710023073781-tvitrc7rlmdi9lfish83coono1mdm2hf.apps.googleusercontent.com',
    iosBundleId: 'com.example.itSchool',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAL4U_pFb_g5_rjacd5pSiyS9jDZ6LUvfo',
    appId: '1:710023073781:ios:d35636c28dde9cb1849abc',
    messagingSenderId: '710023073781',
    projectId: 'it-school-fba9b',
    storageBucket: 'it-school-fba9b.appspot.com',
    iosClientId: '710023073781-tvitrc7rlmdi9lfish83coono1mdm2hf.apps.googleusercontent.com',
    iosBundleId: 'com.example.itSchool',
  );
}