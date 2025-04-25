import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {

  var name = '';

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null) {
      name = args as String;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page ($name)'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 4/7,
        ),
        padding: EdgeInsets.all(8),
        children: [
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
              style: FilledButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
              onPressed: () {},
              child: Text('Data'),
            ),
          )
        ],
      )
    );
  }
}