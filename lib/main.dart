// import 'package:erwan_kurnia/tugas-week-01/tugas-01.dart';
// import 'package:erwan_kurnia/day-4/layout_page.dart';
// import 'package:erwan_kurnia/day-4/listview_page.dart';
// import 'package:erwan_kurnia/day-4/listview_builder_page.dart';
// import 'package:erwan_kurnia/day-4/listview_separated_page.dart';
// import 'package:erwan_kurnia/day-4/gridview_page.dart';
// import 'package:erwan_kurnia/day-4/gridview_builder_page.dart';
// import 'package:erwan_kurnia/day-4/gridview_count_page.dart';
// import 'package:erwan_kurnia/day-4/gridview_builder_page.dart';
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
      title: '',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.green,
          surfaceTintColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 36,
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

