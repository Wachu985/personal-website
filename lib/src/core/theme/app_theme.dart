import 'package:flutter/material.dart';

class AppTheme {
  final int selectedColor;
  final bool darkMode;
  final bool useMaterial3;

  const AppTheme(
      {this.useMaterial3 = true,
      this.selectedColor = 1,
      this.darkMode = false});
  ThemeData getTheme() => ThemeData(
        appBarTheme: const AppBarTheme().copyWith(centerTitle: true),
        useMaterial3: useMaterial3,
        colorSchemeSeed: Colors.blue,
        brightness: darkMode ? Brightness.dark : Brightness.light,
      );
}
