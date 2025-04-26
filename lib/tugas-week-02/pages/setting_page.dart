import 'package:erwan_kurnia/tugas-week-02/pages/home_page.dart';
import 'package:erwan_kurnia/tugas-week-02/pages/profile_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'This is Setting Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}