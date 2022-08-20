import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Color.fromARGB(255, 80, 32, 82);

  static final ThemeData redDarkTheme = ThemeData.dark().copyWith(
      primaryColor: Color.fromARGB(255, 84, 9, 107),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData redLightTheme = ThemeData.light().copyWith(
      primaryColor: Color.fromARGB(255, 190, 147, 214),
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
