import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.black,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
    surfaceTintColor: Colors.blue,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 27,
      fontWeight: FontWeight.bold
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(103, 70, 70, 71),
  brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white), 
      bodyMedium: TextStyle(color: Colors.white),
    ),
  cardTheme: CardTheme(
    color: Colors.black,
    shadowColor: Colors.white,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    surfaceTintColor: Colors.black,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 27,
      fontWeight: FontWeight.bold
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
);