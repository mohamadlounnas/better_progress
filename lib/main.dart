// ignore_for_file: prefer_const_constructors

import 'package:better_progress/app.dart';
import 'package:better_progress/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'progress/progress.dart';

/// The entry point of the application.
///
/// This function initializes the Flutter framework, sets up dependency injection,
/// configures system UI overlays, and runs the BetterProgressApp.
Future<void> main() async {
  // runApp(const BetterProgressApp());
  // return;
  try {
    WidgetsFlutterBinding.ensureInitialized();
    
    // Initialize service locator
    // await setupServiceLocator();
    
    // Initialize core services
    await BetterProgress.instance.init();
    
    // Set preferred orientations
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    runApp(const BetterProgressApp());
  } catch (error, stackTrace) {
    debugPrint('Error during initialization: $error');
    debugPrint(stackTrace.toString());
    rethrow;
  }
}
