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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCciDFEPuRPiL5y0BV_112DAZaYZ3Sr0fE',
    appId: '1:620254222892:android:89e0d509fba4112f278f89',
    messagingSenderId: '620254222892',
    projectId: 'chat-karo-4ca32',
    storageBucket: 'chat-karo-4ca32.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByw3nafDB9WVx1fw0kyaoBxxBKeF7bEiE',
    appId: '1:620254222892:ios:7de82e3911ad76a3278f89',
    messagingSenderId: '620254222892',
    projectId: 'chat-karo-4ca32',
    storageBucket: 'chat-karo-4ca32.appspot.com',
    androidClientId: '620254222892-k02ofv3qlsk32nerp81aeljjre5qu8da.apps.googleusercontent.com',
    iosClientId: '620254222892-8tkqqojpprbv5ae88mkatrvfkpk631nj.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatKaro',
  );
}