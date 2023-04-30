import 'package:flutter/material.dart';
import 'package:xgrid_internship/pages/profile.dart';
import 'package:xgrid_internship/utils/ThemeData.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();

  static _MainAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MainAppState>()!;
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void changeTheme() {
    // swap between light and dark
    final themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme,
        themeMode: _themeMode,
        darkTheme: darkTheme,
        home: Profile());
  }
}
