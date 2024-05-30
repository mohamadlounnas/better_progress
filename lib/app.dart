import 'package:better_progress/features/home/home_view.dart';
import 'package:better_progress/progress/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lib/lib.dart';

import 'features/dashboard/dashboard_view.dart';

class BetterProgressApp extends StatefulWidget {
  const BetterProgressApp({Key? key}) : super(key: key);

  @override
  State<BetterProgressApp> createState() => _BetterProgressAppState();
}

class _BetterProgressAppState extends State<BetterProgressApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: BetterProgress.instance,
        builder: (context, _) {
          return MaterialApp(
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar'),
              Locale('fr'),
            ],
            locale: Locale(BetterProgress.instance.currentLang.name),
            debugShowCheckedModeBanner: false,
            title: 'Better Progress',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
              listTileTheme: const ListTileThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.dark),
              listTileTheme: const ListTileThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            themeMode: BetterProgress.instance.currentThemeMode,
            home: const DashboardView(),
          );
        });
  }
}
