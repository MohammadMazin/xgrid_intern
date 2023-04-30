import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 255, 151, 1);
final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 207, 216, 220),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  ),
);
const DISPLAY_SMALL_FONT_SIZE = 16.0;
const DISPLAY_MEDIUM_FONT_SIZE = 24.0;

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Color.fromARGB(255, 250, 250, 250),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
        fontSize: DISPLAY_MEDIUM_FONT_SIZE,
        color: Colors.black,
        fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
      fontSize: DISPLAY_SMALL_FONT_SIZE,
      color: Colors.black,
    ),
  ),
);

final darkTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Color.fromARGB(255, 23, 22, 32),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(
        fontSize: DISPLAY_MEDIUM_FONT_SIZE,
        color: Colors.white,
        fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
      fontSize: DISPLAY_SMALL_FONT_SIZE,
      color: Colors.white,
    ),
  ),
);
