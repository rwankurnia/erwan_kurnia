import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naritit House'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(54.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/naritit.png', width: 270),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 9),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 9),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login', style: TextStyle(fontSize: 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Lupa Password?', style: TextStyle(fontSize: 12)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Buat Akun Baru', style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ],
       ),
      ),
    );
  }
}