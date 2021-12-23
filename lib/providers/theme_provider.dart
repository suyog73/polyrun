// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  // ThemeMode themeMode = ThemeMode.system;

  bool _darkMode;

  ThemeProvider(this._darkMode);

  bool get getDarkMode => _darkMode;

  void toggleTheme(bool isOn) {
    _darkMode = !_darkMode;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    // scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    fontFamily: 'Montserrat',
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Color(0xffAFB2C6)),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    fontFamily: 'Montserrat',
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Color(0xff707070)),
  );
}
