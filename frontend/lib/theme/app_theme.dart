import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: 'MontserratAlternates',
    primaryColor: const Color(0xff68DD7B),
    scaffoldBackgroundColor: const Color(0xff68DD7B),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF68DD7B),
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.w800,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.w800,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.w800,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0xFF0C0C0C),
        backgroundColor: const Color(0xFFF9F9F9),
      ),
    ),
  );
}
