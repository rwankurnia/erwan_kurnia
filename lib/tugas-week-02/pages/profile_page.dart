import 'package:erwan_kurnia/tugas-week-02/pages/home_page.dart';
import 'package:erwan_kurnia/tugas-week-02/pages/setting_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
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
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const SettingPage(),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'This is Profile Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}