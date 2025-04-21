import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
            title: Center(child: const Text('Layout Page')), 
            backgroundColor: const Color.fromARGB(255, 83, 127, 184),
            titleTextStyle: const TextStyle(
                color: Color.fromARGB(233, 167, 216, 19),
                fontSize: 36,
                fontWeight: FontWeight.bold,
            ),
        ),
        body: Column(
            children: [
                Expanded(
                    flex: 3,
                    child: Container(
                        color: const Color.fromARGB(255, 231, 111, 111),
                        child: const Center(
                            child: Text(
                            'Expanded Widget',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                        ),
                    ),
                ),
                Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Container(
                        height: 108,
                        color: const Color.fromARGB(255, 228, 249, 137),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    height: 90,
                                    color: const Color.fromARGB(255, 117, 145, 5),
                                    child: Center(
                                    child: Text(
                                        'Flexible Widget',
                                        style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
                                    ),
                                    ),
                                ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    height: 90,
                                    color: const Color.fromARGB(255, 5, 145, 44),
                                    child: Center(
                                    child: Text(
                                        'Flexible Widget',
                                        style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
                                    ),
                                    ),
                                ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    height: 90,
                                    color: const Color.fromARGB(255, 32, 131, 206),
                                    child: Center(
                                    child: Text(
                                        'Flexible Widget',
                                        style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
                                    ),
                                    ),
                                ),
                            ),
                          ],
                        ),
                    ),
                ),
            ]
        ),
    );
  }
}