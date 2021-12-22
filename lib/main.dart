import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/screens/bottom_navigation.dart';
import 'package:work_app/screens/statistics.dart';
import 'package:work_app/screens/tp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      builder: (context, _) {
        return MaterialApp(
          title: 'Flutter',
          themeMode: ThemeMode.system,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          home: const BottomNavigation(),
        );
      },
    );
  }
}
