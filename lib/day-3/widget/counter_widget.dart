import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {

  final int counter;

  const CounterWidget(
    {super.key,
    required this.counter,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 118, 173, 218),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            '$counter',style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}