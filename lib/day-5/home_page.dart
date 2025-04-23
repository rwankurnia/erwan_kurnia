import 'package:erwan_kurnia/day-5/main_page.dart';
import 'package:erwan_kurnia/day-5/notification_page.dart';
import 'package:erwan_kurnia/day-5/profile_page.dart';
import 'package:erwan_kurnia/day-5/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var name = 'Erwan Kurnia';
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              final result = await Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingPage(
                  name: name,
                ),
              ));
              if (result != null) {
                setState(() {
                  name = result;
                });
              }
            },
          ), 
        ],
      ),
      body: [
        MainPage(name: name),
        ProfilePage(
          name: name,
          onSave: (val) {
            setState(() {
              name = val;
            });
          }
        ),
        NotificationPage(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() => index = value),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),    
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
          ),    
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications),
            label: 'Notification',
          ),    
        ]
      ),
    );
  }
}