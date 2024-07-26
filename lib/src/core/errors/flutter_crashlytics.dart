import 'dart:developer';
import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FlutterCrashlytics {
  handleError() {
    if (!kDebugMode) {
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {
      log('crashlytics enabled');
      const fatalError = true;
      // Non-async exceptions
      FlutterError.onError = (errorDetails) {
        if (fatalError) {
          log('errorDetails: $errorDetails');
          // If you want to record a "fatal" exception
          FirebaseCrashlytics.instance.recordFlutterFatalError(
            errorDetails,
          );
          // ignore: dead_code
        } else {
          log('errorDetails: $errorDetails');

          // If you want to record a "non-fatal" exception
          FirebaseCrashlytics.instance.recordFlutterError(
            errorDetails,
          );
        }
      };
      // Async exceptions
      PlatformDispatcher.instance.onError = (error, stack) {
        if (fatalError) {
          log('fatalError: $fatalError');

          // If you want to record a "fatal" exception
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
          // ignore: dead_code
        } else {
          log('fatalError: $fatalError');

          // If you want to record a "non-fatal" exception
          FirebaseCrashlytics.instance.recordError(error, stack);
        }
        return true;
      };
    }
  }
}
