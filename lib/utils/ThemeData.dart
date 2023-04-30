import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 255, 151, 1);
final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 207, 216, 220),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);
const DISPLAY_SMALL_FONT_SIZE = 16.0;
const DISPLAY_MEDIUM_FONT_SIZE = 24.0;

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: DISPLAY_MEDIUM_FONT_SIZE,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: DISPLAY_SMALL_FONT_SIZE,
      color: Colors.black,
    ),
  ),
);

final darkTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Colors.grey[900],
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: DISPLAY_MEDIUM_FONT_SIZE,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: DISPLAY_SMALL_FONT_SIZE,
      color: Colors.white,
    ),
  ),
);
