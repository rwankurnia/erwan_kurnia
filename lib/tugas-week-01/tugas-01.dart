import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',
            style: TextStyle(
              color: const Color.fromARGB(233, 237, 239, 241),
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 101, 181, 234),
      ),
      backgroundColor: const Color.fromARGB(255, 161, 197, 221),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              Padding(
                padding:
                  const EdgeInsets.symmetric(horizontal: 9, vertical: 27),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 216, 235, 221),
                      filled: true,
                      border: OutlineInputBorder(), labelText: "Username"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan username';
                      }
                      return null;
                    },
                  ),
              ),
              Padding(
                padding:
                  const EdgeInsets.symmetric(horizontal: 9, vertical: 27),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 216, 235, 221),
                      filled: true,
                      border: OutlineInputBorder(), labelText: "Password"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan Password';
                      }
                      return null;
                    },
                  ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('OTW HALAMAN HOME PAGE')),
                    );
                  }
                },
                child: Image.asset(
                      'assets/Login.png',
                      width: 99,
                      ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}