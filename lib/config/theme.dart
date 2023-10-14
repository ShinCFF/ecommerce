import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: '',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );
}
