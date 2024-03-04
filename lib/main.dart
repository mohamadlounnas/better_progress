// ignore_for_file: prefer_const_constructors

import 'package:better_progress/app.dart';
import 'package:flutter/material.dart';

import 'progress/progress.dart';

/// The entry point of the application.
///
/// This function initializes the Flutter framework and the BetterProgress instance,
/// then runs the BetterProgressApp.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterProgress.instance.init();
  runApp(const BetterProgressApp());
}
