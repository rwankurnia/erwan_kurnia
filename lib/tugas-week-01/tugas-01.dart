import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
                backgroundColor: const Color.fromARGB(255, 83, 127, 184),
                title: Text('Login',
                  style: TextStyle(
                    color: const Color.fromARGB(233, 167, 216, 19),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                            ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                            ),
                        ),
                        SizedBox(height: 24),
                        ElevatedButton(
                            onPressed: () {
                            },
                            child: Text('Login'),
                        ),
                    ],
                ),
            ),
        );
    }
}

void main() {
    runApp(MaterialApp(
        home: LoginPage(),
    ));
}