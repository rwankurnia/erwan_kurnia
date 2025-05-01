import 'package:erwan_kurnia/tugas-week-02/pages/profile_page.dart';
import 'package:erwan_kurnia/tugas-week-02/pages/setting_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ));
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingPage(),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'This is Home Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}