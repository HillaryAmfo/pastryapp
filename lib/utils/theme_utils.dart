import 'package:flutter/material.dart';

class ThemeUtils {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.brown,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.brown,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.brown),
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.brown,
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16.0),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 14.0),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.brown,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.brown,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.brown),
        textStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.brown,
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16.0),
      bodyMedium: TextStyle(color: Colors.white70, fontSize: 14.0),
    ),
  );
}