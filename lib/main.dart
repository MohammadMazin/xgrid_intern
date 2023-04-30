import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_internship/pages/profile.dart';
import 'package:xgrid_internship/utils/DarkThemeProvider.dart';
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

DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

class _MainAppState extends State<MainApp> {
  // bool _themeMode = ThemeMode.system;

  void changeTheme() {
    // swap between light and dark mode using provider
    themeChangeProvider.setDarkTheme(!themeChangeProvider.darkTheme);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => themeChangeProvider,
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget? child) => MaterialApp(
          theme: lightTheme,
          themeMode: value.darkTheme ? ThemeMode.dark : ThemeMode.light,
          darkTheme: darkTheme,
          home: Profile(),
        ),
      ),
    );
  }
}
