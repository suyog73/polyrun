// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/screens/auth_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance!.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(isDarkMode),
      builder: (context, _) {
        bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

        return MaterialApp(
          title: 'Flutter',
          theme: isDark ? ThemeData.dark() : ThemeData.light(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
