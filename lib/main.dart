import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speedtest/firebase_options.dart';
import 'package:speedtest/src/app.dart';
import 'package:speedtest/src/core/errors/flutter_crashlytics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterCrashlytics().handleError();

  runApp(const MyApp());
}
