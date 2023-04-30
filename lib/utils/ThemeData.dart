import 'package:flutter/material.dart';

final Color primaryColor = Color.fromARGB(255, 255, 151, 1);
final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 207, 216, 220),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.red,
    ),
  ),
);

final darkTheme = ThemeData(
  primaryColor: primaryColor,
  elevatedButtonTheme: elevatedButtonTheme,
  scaffoldBackgroundColor: Colors.grey[900],
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
  ),
);
