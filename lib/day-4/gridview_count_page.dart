import 'package:flutter/material.dart';

class GridviewCountPage extends StatefulWidget {
  const GridviewCountPage({super.key});

  @override
  State<GridviewCountPage> createState() => _GridviewCountPageState();
}

class _GridviewCountPageState extends State<GridviewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Count Page'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
        padding: EdgeInsets.all(8),
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Menu 1'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Menu 2'),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text('Menu 3'),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('Menu 4'),
            ),
          ),
          Container(
            color: Colors.brown,
            child: Center(
              child: Text('Menu 5'),
            ),
          ),
          Container(
            color: Colors.purple,
            child: Center(
              child: Text('Menu 6'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Menu 1'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Menu 1'),
            ),
          ),
          Center(
            child: FilledButton(
              onPressed: () {},
              child: Text('Data'),
            ),
          )
        ],
      )
    );
  }
}