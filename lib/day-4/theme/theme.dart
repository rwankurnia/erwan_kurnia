import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(
    color: Colors.grey,
    shadowColor: Colors.black,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: false,
    backgroundColor: Colors.blue,
    surfaceTintColor: Colors.blue,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  cardTheme: CardTheme(
    color: Colors.grey,
    shadowColor: Colors.white,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: false,
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