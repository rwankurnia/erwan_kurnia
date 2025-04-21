import 'package:erwan_kurnia/tugas-week-01/tugas-01.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        cardTheme: CardTheme(
          color: Colors.grey,
          shadowColor: Colors.black,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.green,
          surfaceTintColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        cardTheme: CardTheme(
          color: Colors.grey,
          shadowColor: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
          surfaceTintColor: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: LoginPage()
    );
  }
}

