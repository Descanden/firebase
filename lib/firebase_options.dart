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
    apiKey: 'AIzaSyD77orVmWNFwSSCVcMU9EX_DsIQhr8jzMk',
    appId: '1:988168033687:web:999e05e3462b2d6469a0d2',
    messagingSenderId: '988168033687',
    projectId: 'trial-codelab1',
    authDomain: 'trial-codelab1.firebaseapp.com',
    storageBucket: 'trial-codelab1.appspot.com',
    measurementId: 'G-YFH2915TGP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuPVCbyNaSoUA83G1enJm_IZ0Ad_WGDl0',
    appId: '1:988168033687:android:741b065f86c949a669a0d2',
    messagingSenderId: '988168033687',
    projectId: 'trial-codelab1',
    storageBucket: 'trial-codelab1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGWQX2X3JI58oLJOhJmepABVwYv3fKmEg',
    appId: '1:988168033687:ios:60e0f2c57a8a9d2f69a0d2',
    messagingSenderId: '988168033687',
    projectId: 'trial-codelab1',
    storageBucket: 'trial-codelab1.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGWQX2X3JI58oLJOhJmepABVwYv3fKmEg',
    appId: '1:988168033687:ios:60e0f2c57a8a9d2f69a0d2',
    messagingSenderId: '988168033687',
    projectId: 'trial-codelab1',
    storageBucket: 'trial-codelab1.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD77orVmWNFwSSCVcMU9EX_DsIQhr8jzMk',
    appId: '1:988168033687:web:23e2234f04f1aeca69a0d2',
    messagingSenderId: '988168033687',
    projectId: 'trial-codelab1',
    authDomain: 'trial-codelab1.firebaseapp.com',
    storageBucket: 'trial-codelab1.appspot.com',
    measurementId: 'G-23W6YT79LK',
  );
}
